`default_nettype none


module thruwire(i_sw, o_led);
   input wire [8:0] i_sw;
   output wire [8:0] o_led;


   assign o_led[7] = i_sw[0];
   assign o_led[6:5] = i_sw[5:4];
   
   assign o_led = i_sw;

endmodule

// Local Variables:
// mode: verilog
// End:
