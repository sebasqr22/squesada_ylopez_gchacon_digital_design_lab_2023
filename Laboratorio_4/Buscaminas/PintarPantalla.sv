module PintarPantalla(
	input logic reset,
	input logic [9:0]hs,vs,
	//input logic [7:0][7:0]states,
	input logic [63:0] states,
	output logic [7:0] r,g,b);
	
	logic [23:0] rgb[63:0];
	logic [63:0]pos;
	
	
	
	assign lines = 
	((hs > 115) & (hs < 125) | 
	(hs > 175) & (hs < 185) | 
	(hs > 235) & (hs < 245) | 
	(hs > 295) & (hs < 305) | 
	(hs > 355) & (hs < 365) | 
	(hs > 415) & (hs < 425) | 
	(hs > 475) & (hs < 485) | 
	
	(vs > 75) & (vs < 85) | 
	(vs > 155) & (vs < 165) |
	(vs > 235) & (vs < 245) | 
	(vs > 315) & (vs < 325) | 
	(vs > 395) & (vs < 405) | 
	(vs > 475) & (vs < 485) | 
	(vs > 555) & (vs < 565) | 
	(vs > 635) & (vs < 645))? 1:0;


	
	//llamar a la logica para asignar valores
	

	
	CheckPos check(hs,vs,pos);
					
	mux_space space0(states[0],pos[0],rgb[0]);
mux_space space1(states[1],pos[1],rgb[1]);
mux_space space2(states[2],pos[2],rgb[2]);
mux_space space3(states[3],pos[3],rgb[3]);
mux_space space4(states[4],pos[4],rgb[4]);
mux_space space5(states[5],pos[5],rgb[5]);
mux_space space6(states[6],pos[6],rgb[6]);
mux_space space7(states[7],pos[7],rgb[7]);

mux_space space8(states[8],pos[8],rgb[8]);
mux_space space9(states[9],pos[9],rgb[9]);
mux_space space10(states[10],pos[10],rgb[10]);
mux_space space11(states[11],pos[11],rgb[11]);
mux_space space12(4'b0111,pos[12],rgb[12]);
mux_space space13(states[13],pos[13],rgb[13]);
mux_space space14(states[14],pos[14],rgb[14]);
mux_space space15(states[15],pos[15],rgb[15]);

mux_space space16(states[16],pos[16],rgb[16]);
mux_space space17(states[17],pos[17],rgb[17]);
mux_space space18(states[18],pos[18],rgb[18]);
mux_space space19(states[19],pos[19],rgb[19]);
mux_space space20(states[20],pos[20],rgb[20]);
mux_space space21(states[21],pos[21],rgb[21]);
mux_space space22(states[22],pos[22],rgb[22]);
mux_space space23(states[23],pos[23],rgb[23]);

mux_space space24(states[24],pos[24],rgb[24]);
mux_space space25(states[25],pos[25],rgb[25]);
mux_space space26(states[26],pos[26],rgb[26]);
mux_space space27(states[27],pos[27],rgb[27]);
mux_space space28(states[28],pos[28],rgb[28]);
mux_space space29(states[29],pos[29],rgb[29]);
mux_space space30(states[30],pos[30],rgb[30]);
mux_space space31(states[31],pos[31],rgb[31]);

mux_space space32(states[32],pos[32],rgb[32]);
mux_space space33(states[33],pos[33],rgb[33]);
mux_space space34(states[34],pos[34],rgb[34]);
mux_space space35(states[35],pos[35],rgb[35]);
mux_space space36(states[36],pos[36],rgb[36]);
mux_space space37(states[37],pos[37],rgb[37]);
mux_space space38(states[38],pos[38],rgb[38]);
mux_space space39(states[39],pos[39],rgb[39]);

mux_space space40(states[40],pos[40],rgb[40]);
mux_space space41(states[41],pos[41],rgb[41]);
mux_space space42(states[42],pos[42],rgb[42]);
mux_space space43(states[43],pos[43],rgb[43]);
mux_space space44(states[44],pos[44],rgb[44]);
mux_space space45(states[45],pos[45],rgb[45]);
mux_space space46(states[46],pos[46],rgb[46]);
mux_space space47(states[47],pos[47],rgb[47]);

mux_space space48(states[48],pos[48],rgb[48]);
mux_space space49(states[49],pos[49],rgb[49]);
mux_space space50(states[50],pos[50],rgb[50]);
mux_space space51(states[51],pos[51],rgb[51]);
mux_space space52(states[52],pos[52],rgb[52]);
mux_space space53(states[53],pos[53],rgb[53]);
mux_space space54(states[54],pos[54],rgb[54]);
mux_space space55(states[55],pos[55],rgb[55]);

mux_space space56(states[56],pos[56],rgb[56]);
mux_space space57(states[57],pos[57],rgb[57]);
mux_space space58(states[58],pos[58],rgb[58]);
mux_space space59(states[59],pos[59],rgb[59]);
mux_space space60(states[60],pos[60],rgb[60]);
mux_space space61(states[61],pos[61],rgb[61]);
mux_space space62(states[62],pos[62],rgb[62]);
mux_space space63(states[63],pos[63],rgb[63]);
	

	mux_dibujar mux_dib(lines,rgb[0]
,rgb[1]
,rgb[2]
,rgb[3]
,rgb[4]
,rgb[5]
,rgb[6]
,rgb[7]
,rgb[8]
,rgb[9]
,rgb[10]
,rgb[11]
,rgb[12]
,rgb[13]
,rgb[14]
,rgb[15]
,rgb[16]
,rgb[17]
,rgb[18]
,rgb[19]
,rgb[20]
,rgb[21]
,rgb[22]
,rgb[23]
,rgb[24]
,rgb[25]
,rgb[26]
,rgb[27]
,rgb[28]
,rgb[29]
,rgb[30]
,rgb[31]
,rgb[32]
,rgb[33]
,rgb[34]
,rgb[35]
,rgb[36]
,rgb[37]
,rgb[38]
,rgb[39]
,rgb[40]
,rgb[41]
,rgb[42]
,rgb[43]
,rgb[44]
,rgb[45]
,rgb[46]
,rgb[47]
,rgb[48]
,rgb[49]
,rgb[50]
,rgb[51]
,rgb[52]
,rgb[53]
,rgb[54]
,rgb[55]
,rgb[56]
,rgb[57]
,rgb[58]
,rgb[59]
,rgb[60]
,rgb[61]
,rgb[62]
,rgb[63]

,pos[0]
,pos[1]
,pos[2]
,pos[3]
,pos[4]
,pos[5]
,pos[6]
,pos[7]
,pos[8]
,pos[9]
,pos[10]
,pos[11]
,pos[12]
,pos[13]
,pos[14]
,pos[15]
,pos[16]
,pos[17]
,pos[18]
,pos[19]
,pos[20]
,pos[21]
,pos[22]
,pos[23]
,pos[24]
,pos[25]
,pos[26]
,pos[27]
,pos[28]
,pos[29]
,pos[30]
,pos[31]
,pos[32]
,pos[33]
,pos[34]
,pos[35]
,pos[36]
,pos[37]
,pos[38]
,pos[39]
,pos[40]
,pos[41]
,pos[42]
,pos[43]
,pos[44]
,pos[45]
,pos[46]
,pos[47]
,pos[48]
,pos[49]
,pos[50]
,pos[51]
,pos[52]
,pos[53]
,pos[54]
,pos[55]
,pos[56]
,pos[57]
,pos[58]
,pos[59]
,pos[60]
,pos[61]
,pos[62]
,pos[63]
,r,g,b);
	
endmodule