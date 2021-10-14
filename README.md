# openroad_test_lfsr
A miniature LFSR to test out the online openroad-flow

Implements a simple synchronous linear feedbnack shift register (LFSR).

It has two taps, customizeable in position, and each clock edge they are XOR'd
together with the rightmost bit, placed pn the left, and the whole thing right shifted.

On reset it goes back to 00000001, and on enable you can set the current value.
