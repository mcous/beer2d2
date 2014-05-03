// header for r2dbrew back panel

#ifndef R2BACK_H
#define R2BACK_H

// standard int types
#include <stdint.h>

// function protypes
int main(void);

// set a column pin
void setCol(uint8_t c);

// set a row pin
void setRow(uint8_t r);

// enable and disable leds
void enableLeds(void);
void disableLeds(void);


#endif