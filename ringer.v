module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor ,output z1,z2       // Vibrate
);
    assign motor=ring&vibrate_mode;
    assign ringer=ring&~vibrate_mode;

endmodule
