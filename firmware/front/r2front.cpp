// r2dbrew front led panel

// avr includes
#include <stdlib.h>
#include <avr/io.h>
#include <util/delay.h>

// application includes
//#include "r2front.h"

// main function
int main(void) {
  // setup
  // initialize pins 0-6 of PORTB (columns) as outputs
  DDRB = ( (1<<6) | (1<<5) | (1<<4) | (1<<3) | (1<<2) | (1<<1) | (1<<0) );
  // pull them high (columns are PNP, so high is off)
  PORTB = ( (1<<6) | (1<<5) | (1<<4) | (1<<3) | (1<<2) | (1<<1) | (1<<0) );

  // set all of PORTA to outputs and pull low (rows are NPN)
  DDRA = 0xFF;
  PORTA = 0;

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

  // infinite loop
  // randomly set LEDs
  for (;;) {
    int randomNumber = rand();

    PORTB = (uint8_t)((randomNumber >> 8) & 0x7F);
    PORTA = (uint8_t)(randomNumber & 0xFF);

    // delay 200 ms
    _delay_ms(150);
  }

  // never give up, never surrender
  return 0;
}