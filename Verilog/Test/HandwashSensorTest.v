module HandwashTest;

//6) Instantiate the handwash sensor with the TestModule automation.  


//We've written the test bench for you, look at it in simulation to see the 
//handwash sensor call for the water to be on when the distance times gain
//for one of the hands is under the threshold, 1500. 
initial begin

    #1000;
    reset = 1;
    #1000;
    reset = 0;

    #5000;

    leftHandDistance = 3000; #500;
    acceptLeftHandDistance = 1; #350;
    acceptLeftHandDistance = 0; #350;
    leftHandDistance = 0; # 500;

    leftHandGain = 8'b10011000; #500;
    acceptLeftHandGain = 1; #350;
    acceptLeftHandGain = 0; #350;
    leftHandGain = 0; # 500;

    rightHandDistance = 6000; #500;
    acceptRightHandDistance = 1; #350;
    acceptRightHandDistance = 0; #350;
    rightHandDistance = 0; # 500;

    rightHandGain = 8'b01110111; #500;
    acceptRightHandGain = 1; #350;
    acceptRightHandGain = 0; #350;
    rightHandGain = 0; # 500;


    #25000;

    leftHandDistance = 1200; #500;
    acceptLeftHandDistance = 1; #350;
    acceptLeftHandDistance = 0; #350;
    leftHandDistance = 0; # 500;

    rightHandDistance = 3200; #500;
    acceptRightHandDistance = 1; #350;
    acceptRightHandDistance = 0; #350;
    rightHandDistance = 0; # 500;

    #25000;

    leftHandDistance = 1600; #500;
    acceptLeftHandDistance = 1; #350;
    acceptLeftHandDistance = 0; #350;
    leftHandDistance = 0; # 500;

    rightHandDistance = 1800; #500;
    acceptRightHandDistance = 1; #350;
    acceptRightHandDistance = 0; #350;
    rightHandDistance = 0; # 500;


    #20000;

    $finish;

end
endmodule