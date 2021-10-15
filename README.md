# openroad_test_lfsr
A miniature LFSR to test out OpenROAD Flow

Implements a simple synchronous linear feedback shift register (LFSR).

The register has two taps, customizeable in position, and each clock edge they are XOR'd
together with the rightmost bit, placed on the left, and the whole thing right shifted.

On reset it goes back to 00000001, and on enable you can set the current value to seed.
