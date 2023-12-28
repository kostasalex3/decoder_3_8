# VHDL Code: Decoders

This repository contains VHDL implementations of decoders with various architectures - Behavioral, Structural, and Dataflow.

## Contents

- **Decoder 2-to-4 (`decoder_2_4.vhdl`)**: Implements a 2-to-4 decoder with three different architectures.
  - **Behavioral Architecture (`decoder_2_4`)**: Implements the decoding logic using a behavioral approach.
  - **Structural Architecture (`decoder_2_4_structural`)**: Implements the decoding logic using a structural approach with components such as AND gates and NOT gates.
  - **Dataflow Architecture (`decoder_2_4_dataflow`)**: Implements the decoding logic using a dataflow approach.

- **Decoder 3-to-8 (`decoder_3_8.vhdl`)**: Implements a 3-to-8 decoder using a structural architecture by utilizing multiple 2-to-4 decoders.
  
## File Descriptions

### Decoder 2-to-4

#### Behavioral Architecture (`decoder_2_4.vhdl`)

Implements the 2-to-4 decoding logic using a behavioral approach. It takes inputs A, B, and EN to produce four outputs Y0, Y1, Y2, and Y3 based on the input combination.

#### Structural Architecture (`decoder_2_4_structural.vhdl`)

Implements the 2-to-4 decoding logic using a structural approach. This architecture comprises custom components such as AND gates and NOT gates to achieve the decoding functionality.

#### Dataflow Architecture (`decoder_2_4_dataflow.vhdl`)

Implements the 2-to-4 decoding logic using a dataflow approach. It directly assigns output values based on logical operations with input signals.

### Decoder 3-to-8

#### Structural Architecture (`decoder_3_8.vhdl`)

Implements a 3-to-8 decoder using a structural architecture. It utilizes multiple 2-to-4 decoders to perform the decoding operation based on the input signals A, B, and C, providing eight output signals Y0 through Y7.


