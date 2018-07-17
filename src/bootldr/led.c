/* ___DISCLAIMER___ */

#include <arm/NXP/LPC17xx/LPC17xx.h>
#include "bits.h"
#include "timer.h"
#include "led.h"

int led_rdyledstate = 0;
int led_readledstate = 0;
int led_writeledstate = 0;

/* LED connections (Rev.C)

   LED    color  IO    PWM
   ---------------------------
   ready  green  P2.4  PWM1[5]
   read   yellow P2.5  PWM1[6]
   write  red    P1.23 PWM1[4]
*/

void rdyled(unsigned int state) {
  BITBAND(LPC_GPIO2->FIODIR, 4) = state;
  led_rdyledstate = state;
}

void readled(unsigned int state) {
  BITBAND(LPC_GPIO2->FIODIR, 5) = state;
  led_readledstate = state;
}

void writeled(unsigned int state) {
  BITBAND(LPC_GPIO1->FIODIR, 23) = state;
  led_writeledstate = state;
}

void led_clkout32(uint32_t val) {
  while(1) {
    rdyled(1);
    delay_ms(400);
    readled((val & BV(31))>>31);
    rdyled(0);
    val<<=1;
    delay_ms(400);
  }
}

void toggle_rdy_led() {
  rdyled(~led_rdyledstate);
}

void toggle_read_led() {
  readled(~led_readledstate);
}

void toggle_write_led() {
  writeled(~led_writeledstate);
}

void led_panic() {
  while(1) {
    LPC_GPIO2->FIODIR |= BV(4) | BV(5);
    LPC_GPIO1->FIODIR |= BV(23);
    delay_ms(350);
    LPC_GPIO2->FIODIR &= ~(BV(4) | BV(5));
    LPC_GPIO1->FIODIR &= ~BV(23);
    delay_ms(350);
  }
}

void led_std() {
  BITBAND(LPC_PINCON->PINSEL4, 9) = 0;
  BITBAND(LPC_PINCON->PINSEL4, 8) = 0;

  BITBAND(LPC_PINCON->PINSEL4, 11) = 0;
  BITBAND(LPC_PINCON->PINSEL4, 10) = 0;

  BITBAND(LPC_PINCON->PINSEL3, 15) = 0;
  BITBAND(LPC_PINCON->PINSEL3, 14) = 0;

  BITBAND(LPC_PWM1->PCR, 12) = 0;
  BITBAND(LPC_PWM1->PCR, 13) = 0;
  BITBAND(LPC_PWM1->PCR, 14) = 0;
}

void led_init() {
/* power is already connected by default */
/* set PCLK divider to 8 */
  BITBAND(LPC_SC->PCLKSEL1, 21) = 1;
  BITBAND(LPC_SC->PCLKSEL1, 20) = 1;
}
