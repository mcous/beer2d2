// r2dbrew front led panel

#ifndef R2FRONT_H
#define R2FRONT_H

#define N_ROWS 8
#define N_COLS 7

// standard int types
#include <stdint.h>

// global variables
// current column being displayed
volatile uint8_t col;
// led panel
uint8_t column[N_COLS];

// function protypes
int main(void);

// initialize a refresh timer
void initRefreshTimer(void);

#endif