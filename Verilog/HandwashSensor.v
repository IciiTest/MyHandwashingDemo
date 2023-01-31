module HandwashSensor(

    //1a) Add a clock automation, since the sensor doesn't need to be fast, we suggest a 10 MHz clock 
    input clk,

    //1b) Add a reset automation
    input reset,

    input acceptLeftHandDistance,
    input [15:0] leftHandDistance,

    input acceptLeftHandGain,
    input [7:0] leftHandGain,

    input acceptRightHandDistance,
    input [15:0] rightHandDistance,

    input acceptRightHandGain,
    input [7:0] rightHandGain,

    output waterOn
);

//2) For the next 4 regs, leftHandDistanceHeld, leftHandGainHeld, rightHandDistanceHeld, and rightHandGainHeld,
//   add a HoldWhenAccept automation with no items. We are going to make a custom automation! Go to the 
//   Automations > HoldWhenAccept.cs for Step 3). 
reg [15:0] leftHandDistanceHeld;
reg [7:0] leftHandGainHeld;
reg [15:0] rightHandDistanceHeld;
reg [7:0] rightHandGainHeld;

//4) We need to calculate the distance of the left and right hands. Calculate the distance by multiplying
//   the left hand's distance by it's gain, and shift the result right by 7. In the example, we assume
//   that the gain is an 8 bit fixed point number with 7 decimal places. We recommend using the Calculate
//   automation to abstract away the multiplication.
wire [15:0] leftHand;

//5) Similary, we want to do the same for the right.
wire [15:0] rightHand;

parameter threshold = 1500;
assign waterOn = leftHand != 0 && rightHand != 0 && (leftHand < threshold || rightHand < threshold);
endmodule