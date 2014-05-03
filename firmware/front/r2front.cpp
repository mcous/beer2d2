// r2dbrew front led panel

// avr includes
#include <stdlib.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

// application includes
#include "r2front.h"

// display refresh loop
ISR(TIMER0_OVF_vect) {
  // increment the column and loop it back around if necesary
  if (++col >= 7) {
    col = 0;
  }

  // set column
  PORTB = 0x7F & ~(1<<col);
  // set PORTA (rows) to a random number
  PORTA = column[col];
}

// main function
int main(void) {
  // setup

  // disable interrupts
  cli();

  // initialize pins 0-6 of PORTB (columns) as outputs
  DDRB = ( (1<<6) | (1<<5) | (1<<4) | (1<<3) | (1<<2) | (1<<1) | (1<<0) );
  // pull them high (columns are PNP, so high is off)
  PORTB = ( (1<<6) | (1<<5) | (1<<4) | (1<<3) | (1<<2) | (1<<1) | (1<<0) );

  // set all of PORTA to outputs and pull low (rows are NPN)
  DDRA = 0xFF;
  PORTA = 0;

  // get an array ready to put the led states in
  for (uint8_t i=0; i<N_COLS; i++) {
    column[i] = 0;
  }

  #ifdef LEDTEST
  for (uint8_t col=0; col<7; col++) {
    // set column
    PORTB = 0x7F & ~(1<<col);

    // loop through rows
    for (uint8_t row=0; row<8; row++) {
      // set row
      PORTA = 0 | (1<<row);
      // delay a little
      _delay_ms(300);
    }
  }
  #endif

  // initialize the refresh timer
  initRefreshTimer();

  // enable global interrupts
  sei();

  // infinite loop
  // randomly set LEDs
  bool add = true;
  for (;;) {
    // generate a new random frame
    for (uint8_t i=0; i<N_COLS; i++) {
      if (add) {
        add = false;
        column[i] |= (uint8_t)(rand() & 0xFF);
      }
      else {
        add = true;
        column[i] &= ~(uint8_t)(rand() & 0xFF);
      }
    }

    // delay 150 ms
    _delay_ms(150);
  }

  // never give up, never surrender
  return 0;
}

void initRefreshTimer(void) {
  // set timer to normal mode
  TCCR0A = 0;
  // set prescaler to 64
  TCCR0B = ( (1<<CS02) );
  // enable the overflow interrupt
  // 8-bit timer, so overflow will occur 8M/PS128/256=122 times a second
  TIMSK0 = (1<<TOIE0);
}