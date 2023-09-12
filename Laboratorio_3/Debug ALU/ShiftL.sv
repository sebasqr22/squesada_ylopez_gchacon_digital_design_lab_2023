module ShiftL #(parameter N = 4)(input logic [N-1:0] A, input logic [N-1:0] shift , output logic [N-1:0] R);

	logic [N-1:0] temp1;
	logic [N-1:0] temp2;    

	
	
	
	always @(*) begin
	 temp1=A;
    for (int i = 0; i < shift; i++) 
		 begin
			temp2 = {temp1[N-1:0], 1'b0};
			temp1= temp2;
		 end
	end
	
	assign R = temp1;
endmodule
