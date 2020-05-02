#ifndef NTT_H
#define NTT_H

#include "inttypes.h"

extern uint16_t omegas_inv_bitrev_montgomery[];
extern uint16_t gammas_bitrev_montgomery[];
extern uint16_t gammas_inv_montgomery[];

void bitrev_vector(uint16_t* poly);
void bitrev_vector_asm(uint16_t* poly);
void mul_coefficients(uint16_t* poly, const uint16_t* factors);
void mul_coefficients_asm(uint16_t* poly, const uint16_t* factors);
void ntt(uint16_t* poly, const uint16_t* omegas);
void ntt_asm(uint16_t* poly, const uint16_t* omegas);

#endif
