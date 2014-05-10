// header for r2dbrew back panel

#ifndef R2BACK_H
#define R2BACK_H

// standard int types
#include <stdint.h>

// defines
#define N_ROWS 8
#define N_COLS 11

// global variables
// current row being displayed
volatile uint8_t r;
volatile bool newRgb;
// led panel
uint16_t row[N_ROWS];

// function protypes
int main(void);

// set a column
void setRow(uint8_t c);

// set a row pin
void enableRow(uint8_t r);

// enable and disable leds
void enableLeds(void);
void disableLeds(void);

// initialize a refresh timer
void initRefreshTimer(void);

#endif