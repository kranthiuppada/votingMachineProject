`timescale 1ns / 1ps

module votingMachine_tb;
    reg clock;
    reg reset;
    reg mode;
    reg button1;
    reg button2;
    reg button3;
    reg button4;
    
    wire [7:0] led;
    
    // Instantiate the votingMachine module
    votingMachine uut (
        .clock(clock),
        .reset(reset),
        .mode(mode),
        .button1(button1),
        .button2(button2),
        .button3(button3),
        .button4(button4),
        .led(led)
    );
    
    // Clock generation: clock period of 10ns (50MHz)
    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end
    
    // Stimulus
    initial begin
        reset = 1; 
        mode = 0; 
        button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #100;
        
        #100 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 1; button2 = 0; button3 = 0; button4 = 0;
        #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 1; button2 = 0; button3 = 0; button4 = 0;
        #200 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;

        #5 reset = 0; mode = 0; button1 = 0; button2 = 1; button3 = 0; button4 = 0;
        #200 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;  

        #5 reset = 0; mode = 0; button1 = 0; button2 = 1; button3 = 1; button4 = 0;
        #200 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;  

        #5 reset = 0; mode = 1; button1 = 0; button2 = 1; button3 = 0; button4 = 0;
        #200 reset = 0; mode = 1; button1 = 0; button2 = 0; button3 = 1; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;  

        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 1; button4 = 0;
        #200 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #10 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;
        #5 reset = 0; mode = 0; button1 = 0; button2 = 0; button3 = 0; button4 = 0;   

        $finish;
    end
    
    // VCD dump for waveform visualization
    initial begin
        $dumpvars;
        $dumpfile("dump.vcd");
    end
    
    // Monitor signals
    initial begin
        $monitor($time, " mode = %b, button1 = %b, button2 = %b, button3 = %b, button4 = %b, led = %h", 
                 mode, button1, button2, button3, button4, led);
    end

endmodule

