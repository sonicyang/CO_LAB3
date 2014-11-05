
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


















	
endmodule
