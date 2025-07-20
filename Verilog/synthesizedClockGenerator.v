/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : synthesizedClockGenerator                                    **
 **                                                                          **
 *****************************************************************************/

module synthesizedClockGenerator( FPGAClock,
                                  SynthesizedClock );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input FPGAClock;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output SynthesizedClock;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the update logic is defined. Loop back the global clock.              **
   *******************************************************************************/
   assign  SynthesizedClock  =  FPGAClock;
endmodule
