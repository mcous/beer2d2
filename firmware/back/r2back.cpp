// r2dbrew back led panel

// avr includes
#include <avr/io.h>
#include <util/delay.h>

// application includes
#include "r2back.h"

// program
int main(void) {
  // setup
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


  // led test (passed in by makefile or defined at top)
  // loops through all leds to make sure they're working
  #ifdef LEDTEST
  for (uint8_t row=0; row<8; row++) {
    setRow(row);
    for (uint8_t col=0; col<11; col++) {
      disableLeds();
      setCol(col);
      _delay_ms(300);
      enableLeds();
    }
  }
  #endif

  // loop
  for (;;) {
    // set R0 to on
    PORTB |= ( (1<<2) );
    // set CO to on
    PORTB &= ~(1<<2);

    _delay_ms(10);
  }

  // don't stop believing
  return 0;
}

// set a column
void setCol(uint8_t c) {
  // pull B0, B1, D2 - D7, C0 - C2 high to turn off columns (PNP)
  PORTB |= ( (1<<1) | (1<<0) );
  PORTD |= ( (1<<7) | (1<<6) | (1<<5) | (1<<4) | (1<<3) | (1<<2) );
  PORTC |= ( (1<<2) | (1<<1) | (1<<0) );

  // select the proper column
  switch (c) {
    case 0:  PORTB &= ~(1<<0); break;
    case 1:  PORTB &= ~(1<<1); break;
    case 2:  PORTD &= ~(1<<2); break;
    case 3:  PORTD &= ~(1<<3); break;
    case 4:  PORTD &= ~(1<<4); break;
    case 5:  PORTD &= ~(1<<5); break;
    case 6:  PORTD &= ~(1<<6); break;
    case 7:  PORTD &= ~(1<<7); break;
    case 8:  PORTC &= ~(1<<0); break;
    case 9:  PORTC &= ~(1<<1); break;
    case 10: PORTC &= ~(1<<2); break;
    default: break;
  }
}

// set a row
void setRow(uint8_t r) {
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