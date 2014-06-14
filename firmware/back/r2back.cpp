// r2dbrew back led panel

// led driver wiring
/*
           6  7  8                       3  4  5
      +-------------+    +-----+    +-------------+
 rgb1 | +  W- B- B- |    |     |    | +  R- R- G- | PSI2
      +-------------+    |  I  |    +-------------+
           9  10 11      |  C  |         0  1  2
      +-------------+    |  2  |    +-------------+
 rgb2 | +  W- W- W- |    |     |    | +  Y- Y- G- | PSI1
      +-------------+    +-----+    +-------------+
*/

// avr includes
#include <stdlib.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

// application includes
#include "r2back.h"
#include "TLC5971.h"

// display refresh loop
ISR(TIMER0_OVF_vect) {
  // increment the column and loop it back around if necesary
  if (++r >= N_ROWS) {
    r = 0;
  }

  // activate the current row
  enableRow(r);
  // set the columns of the current row
  setRow(r);
  // enable LEDs
  enableLeds();
}

// program
int main(void) {
  // setup
  // disable interrupts
  cli();

  // B0 through B5 are outputs
  DDRB = ( (1<<5) | (1<<4) | (1<<3) | (1<<2) | (1<<1) | (1<<0) );
  // C0 through C2 are outputs
  DDRC = ( (1<<2) | (1<<1) | (1<<0) );
  // D2 through D7 are outputs
  DDRD = ( (1<<7) | (1<<6) | (1<<5) | (1<<4) | (1<<3) | (1<<2) );

  // pull B2 through B5 low to disabe the row control
  PORTB &= ~( (1<<5) |  (1<<4) | (1<<3) | (1<<2) );

  // pull B0, B1, D2 - D7, C0 - C2 high to turn off columns (PNP)
  PORTB |= ( (1<<1) | (1<<0) );
  PORTD |= ( (1<<7) | (1<<6) | (1<<5) | (1<<4) | (1<<3) | (1<<2) );
  PORTC |= ( (1<<2) | (1<<1) | (1<<0) );

  // enable the pullup on C3 (unused)
  PORTC |= (1<<3);

  // initialize a tlc object
  TLC5971 tlc;
  tlc.init();
  // set the TLC to autorepeat the pattern and to reset the GS counter whenever new data is latched in
  tlc.setFC(TLC5971_DSPRPT);
  // set brightness to half
  tlc.setBC(127);

  // set tlc outputs to off
  uint16_t g[12] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  tlc.setGS(g);

  // led test (passed in by makefile or defined at top)
  // loops through all leds to make sure they're working
  #ifdef LEDTEST
  for (;;) {
    for (uint8_t row=0; row<8; row++) {
      setRow(row);
      for (uint8_t col=0; col<11; col++) {
        disableLeds();
        setCol(col);
        enableLeds();
        _delay_ms(200);
      }
    }
  }
  #endif

  // get an array ready to put the led states in
  for (uint8_t i=0; i<N_ROWS; i++) {
    row[i] = 0;
  }

  // initialize the refresh timer
  initRefreshTimer();

  // enable global interrupts
  sei();

  // variables for the psi's switching between colors
  // psiBack - yellow (tlc 0, 1) to green (tlc 2, 5)
  // psiFront - red (tlc 3, 4) to blue (tlc 7, 8)
  // holo - white (tlc 6, 9, 10, 11) flickering
  // max rand is 0x7 = 7
  uint8_t psiBackTarget = (uint8_t)(rand() & 0x7);
  uint8_t psiBackCount = 0;
  // max rand is 0x1F = 31
  uint8_t psiFrontTarget = (uint8_t)(rand() & 0x1F);
  uint8_t psiFrontCount = 0;

  // hologram leds spend a little time on and more time off
  uint8_t holoOnTarget = (uint8_t)(rand() & 0x1F);
  uint8_t holoOffTarget = (uint8_t)(rand() & 0x3F);
  uint8_t holoCount = 0;

  // loop
  for (;;) {
    bool update = false;
    // check if psiBack needs to switch
    if (++psiBackCount >= psiBackTarget) {
      update = true;
      psiBackCount = 0;
      psiBackTarget = (uint8_t)(rand() & 0x7);
      if (g[0] != 0) {
        g[0] = 0;
        g[1] = 0;
        g[2] = 0xFFFF;
        g[5] = 0xFFFF;
      }
      else {
        g[0] = 0xFFFF;
        g[1] = 0xFFFF;
        g[2] = 0;
        g[5] = 0;
      }
    }

    // check if psiFront needs to switch
    if (++psiFrontCount >= psiFrontTarget) {
      update = true;
      psiFrontCount = 0;
      psiFrontTarget = (uint8_t)(rand() & 0x1F);
      if (g[3] != 0) {
        g[3] = 0;
        g[4] = 0;
        g[7] = 0xFFFF;
        g[8] = 0xFFFF;
      }
      else {
        g[3] = 0xFFFF;
        g[4] = 0xFFFF;
        g[7] = 0;
        g[8] = 0;
      }
    }

    // check if the holo leds need to switch
    holoCount++;
    // if the leds are on and the count is up
    if (g[6] && (holoCount >= holoOnTarget)) {
      update = true;
      holoOnTarget = (uint8_t)(rand() & 0x1F);
      holoCount = 0;
      g[6] = 0;
      g[9] = 0;
      g[10] = 0;
      g[11] = 0;
    }
    // else if the leds are off and the count is up
    if (!g[6] && (holoCount >= holoOffTarget)) {
      update = true;
      holoOffTarget = (uint8_t)(rand() & 0x3F);
      holoCount = 0;
      g[6] = 0xFFFF;
      g[9] = 0xFFFF;
      g[10] = 0xFFFF;
      g[11] = 0xFFFF;
    }

    if (update) {
      tlc.setGS(g);
    }

    // generate a new random frame for each column
    for (uint8_t i=0; i<N_ROWS; i++) {
      row[i] = rand();
    }

    // delay 150 ms
    _delay_ms(150);
  }

  // don't stop believing
  return 0;
}

// set a column
void setRow(uint8_t rw) {
  // mask off the columns into stuff
  PORTB = ( (PORTB & ~0x3) | (row[rw] & 0x3) );
  PORTD = ( (PORTD & ~0xFC) | (row[rw] & 0xFC) );
  PORTC = ( (PORTC & ~0x7) | ((row[rw] & 0x700) >> 8) );
}

// set a row
void enableRow(uint8_t r) {
  // parameter checking
  if (r>7) {
    r=7;
  }

  // pull B2-B5 low to disable all rows and clear row select bits
  PORTB &= ~(  (1<<5) | (1<<4) | (1<<3) | (1<<2) );

  // flip r around because I'm an idiot and wired the decoder backwards in the schematic
  r = ( ((r&1)<<2) | (r&2) | ((r&4)>>2) );

  // set the row bits (B5, B4, and B3)
  PORTB |= ( (r<<3) );
}

void disableLeds(void) {
  PORTB &= ~(1<<2);
}

void enableLeds(void) {
  PORTB |= (1<<2);
}


void initRefreshTimer(void) {
  // set timer to normal mode
  TCCR0A = 0;
  // set prescaler to 64
  TCCR0B = ( (1<<CS01) | (1<<CS00));
  // enable the overflow interrupt
  // 8-bit timer, so overflow will occur 16M/PS256/256=244 times a second
  TIMSK0 = (1<<TOIE0);
}

// PSI that alternates between yellow (red) and green
void setPsi0(void) {

}

// PSI that alternates between red and blue
void setPsi1() {

}
