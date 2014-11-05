
module DECODE (ins, op, Rs, Rt, Rd, shamt,func, offset);

	input 	[31:0]	ins;
	
	output	[5:0]	op, func;
	output	[4:0]	Rs, Rt, Rd, shamt;
	output	[15:0]	offset;

//=======================================================
//	bit			6	5	5	5	  5		   6	
//	I-type		op	Rs	Rt	Rd	shamt 	function
//	bits			6	5	5		      16
//	J-type		op	Rs	Rd		    offset
//=======================================================
	assign op = ins[31:26];
	assign func = (ins[31:26] == 0) ? ins[5:0] : 6'b0;
	
	assign Rs = ins[25:21];
	assign Rt = ins[20:16];
	assign Rd = (ins[31:26] == 0) ? ins[15:11] : 5'b0;
	assign shamt = (ins[31:26] == 0) ? ins[10:6] : 5'b0;
	
	assign offset = (ins[31:26] == 0) ? 16'b0 : ins[15:0];
	
endmodule
