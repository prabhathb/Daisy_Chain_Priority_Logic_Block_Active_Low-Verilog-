# Daisy_Chain_Priority_Logic_Block_Active_Low-Verilog-
This is a Verilog model of a daisy chain logic block that is used to determine the priorities of multiple interrupt sources. This block decides whether to propagate the interrupt acknowledgement signal to next block or not. A typical Daisy chain consists of many such blocks connected in cascade.
The design assumes active low signals for the interrupt request signals issued by the peripheral device and the interrupt acknowledgement signal issued by the CPU.
It shows the implementation of the daisy chain block using;
  01. Dataflow Modelling.
  02. Structural Modelling.
  03. Behavioural Modelling.
Test wabeform results are also provided for all three types.
Test benched was simulated on ModelSim starter edition 2020.1 by Mentor Graphics.
