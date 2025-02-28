// Copyright (C) 2022  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"
// CREATED		"Fri Jun  7 20:27:19 2024"

module lab5(
	Clock50MHz,
	ResetActiveLow,
	add,
	minus,
	C,
	switch,
	alarm,
	Seg0,
	Seg1,
	Seg2,
	Seg3,
	Seg4,
	Seg5
);


input wire	Clock50MHz;
input wire	ResetActiveLow;
input wire	add;
input wire	minus;
input wire	[2:0] C;
input wire	[3:0] switch;
output wire	alarm;
output wire	[6:0] Seg0;
output wire	[6:0] Seg1;
output wire	[6:0] Seg2;
output wire	[6:0] Seg3;
output wire	[6:0] Seg4;
output wire	[6:0] Seg5;

wire	Agte60;
wire	[7:0] hrIn;
wire	[7:0] hrOut;
wire	[7:0] minIn;
wire	[7:0] minOut;
wire	[3:0] Ones;
wire	qClk;
wire	ResetCount;
wire	[7:0] secIn;
wire	[7:0] secOut;
wire	stop;
wire	[3:0] Tens;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_7;
wire	[7:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	[3:0] SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[7:0] SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	[3:0] SYNTHESIZED_WIRE_21;





counter	b2v_inst(
	.clk(SYNTHESIZED_WIRE_0),
	.reset(SYNTHESIZED_WIRE_1),
	.add(add),
	.minus(minus),
	.pause(C[0]),
	.q(secIn));
	defparam	b2v_inst.N = 8;


displayMethod	b2v_inst1(
	.switch(switch[0]),
	.in0(secIn),
	.in1(secOut),
	.out(SYNTHESIZED_WIRE_17));


sevenseg	b2v_inst10(
	.A(SYNTHESIZED_WIRE_2),
	.Z(Seg3));


clock_divider	b2v_inst11(
	.clk_in(Clock50MHz),
	.clk_out(SYNTHESIZED_WIRE_4));


comparator	b2v_inst12(
	.a(secIn),
	
	
	
	
	
	.gte(Agte60));
	defparam	b2v_inst12.b = 60;
	defparam	b2v_inst12.c = 24;
	defparam	b2v_inst12.N = 8;


parser	b2v_inst13(
	.value(SYNTHESIZED_WIRE_3),
	.ones(SYNTHESIZED_WIRE_21),
	.tens(SYNTHESIZED_WIRE_2));


chooseClk	b2v_inst14(
	.Clk0(SYNTHESIZED_WIRE_4),
	.Clk1(qClk),
	.switch(C[0]),
	.clockOut(SYNTHESIZED_WIRE_0));


comparator	b2v_inst15(
	.a(hrIn),
	
	
	
	
	.gt(SYNTHESIZED_WIRE_11)
	);
	defparam	b2v_inst15.b = 60;
	defparam	b2v_inst15.c = 24;
	defparam	b2v_inst15.N = 8;


sevenseg	b2v_inst16(
	.A(SYNTHESIZED_WIRE_5),
	.Z(Seg4));


chooseClk	b2v_inst17(
	.Clk0(SYNTHESIZED_WIRE_22),
	.Clk1(SYNTHESIZED_WIRE_7),
	.switch(C[2]),
	.clockOut(SYNTHESIZED_WIRE_18));


parser	b2v_inst18(
	.value(SYNTHESIZED_WIRE_8),
	.ones(SYNTHESIZED_WIRE_5),
	.tens(SYNTHESIZED_WIRE_14));

assign	SYNTHESIZED_WIRE_10 =  ~stop;


displayMethod	b2v_inst2(
	.switch(switch[0]),
	.in0(minIn),
	.in1(minOut),
	.out(SYNTHESIZED_WIRE_3));

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_22 | SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_12 =  ~stop;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12;


chooseClk	b2v_inst23(
	.Clk0(ResetCount),
	.Clk1(SYNTHESIZED_WIRE_13),
	.switch(C[1]),
	.clockOut(SYNTHESIZED_WIRE_15));


quickChange	b2v_inst24(
	.clk_in(Clock50MHz),
	.clk_out(qClk));


quickChange	b2v_inst25(
	.clk_in(Clock50MHz),
	.clk_out(SYNTHESIZED_WIRE_13));


quickChange	b2v_inst26(
	.clk_in(Clock50MHz),
	.clk_out(SYNTHESIZED_WIRE_7));


alarmChecker	b2v_inst27(
	.add(add),
	.minus(minus),
	.clk(qClk),
	.hr(hrIn),
	.min(minIn),
	.sec(secIn),
	.switch(switch),
	.alarmOut(alarm),
	.hrOut(hrOut),
	.minOut(minOut),
	.secOut(secOut));


displayMethod	b2v_inst28(
	.switch(switch[0]),
	.in0(hrIn),
	.in1(hrOut),
	.out(SYNTHESIZED_WIRE_8));


sevenseg	b2v_inst3(
	.A(Ones),
	.Z(Seg0));


sevenseg	b2v_inst30(
	.A(SYNTHESIZED_WIRE_14),
	.Z(Seg5));


counter	b2v_inst37(
	.clk(SYNTHESIZED_WIRE_15),
	.reset(SYNTHESIZED_WIRE_16),
	.add(add),
	.minus(minus),
	.pause(C[1]),
	.q(minIn));
	defparam	b2v_inst37.N = 8;


comparator	b2v_inst4(
	.a(minIn),
	
	
	
	
	
	.gte(SYNTHESIZED_WIRE_22));
	defparam	b2v_inst4.b = 60;
	defparam	b2v_inst4.c = 24;
	defparam	b2v_inst4.N = 8;


parser	b2v_inst41(
	.value(SYNTHESIZED_WIRE_17),
	.ones(Ones),
	.tens(Tens));


counter	b2v_inst42(
	.clk(SYNTHESIZED_WIRE_18),
	.reset(SYNTHESIZED_WIRE_19),
	.add(add),
	.minus(minus),
	.pause(C[2]),
	.q(hrIn));
	defparam	b2v_inst42.N = 8;

assign	SYNTHESIZED_WIRE_1 = ResetCount | SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_20 =  ~stop;


sync	b2v_inst7(
	.clk(Clock50MHz),
	.d(Agte60),
	.q(ResetCount));


sevenseg	b2v_inst8(
	.A(Tens),
	.Z(Seg1));


sevenseg	b2v_inst9(
	.A(SYNTHESIZED_WIRE_21),
	.Z(Seg2));

assign	stop = ResetActiveLow;

endmodule
