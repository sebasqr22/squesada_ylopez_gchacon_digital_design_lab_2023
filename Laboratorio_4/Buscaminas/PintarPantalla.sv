module PintarPantalla(
	input logic reset,
	input logic [9:0]hs,vs,
	input logic [7:0][7:0]matriz,
	//input logic [63:0] states,
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


	
	CheckPos check(hs,vs,pos);
					
mux_space space0(matriz[0][0], pos[0], rgb[0]);
mux_space space1(matriz[0][1], pos[1], rgb[1]);
mux_space space2(matriz[0][2], pos[2], rgb[2]);
mux_space space3(matriz[0][3], pos[3], rgb[3]);
mux_space space4(matriz[0][4], pos[4], rgb[4]);
mux_space space5(matriz[0][5], pos[5], rgb[5]);
mux_space space6(matriz[0][6], pos[6], rgb[6]);
mux_space space7(matriz[0][7], pos[7], rgb[7]);


mux_space space8(matriz[1][0], pos[8], rgb[8]);
mux_space space9(matriz[1][1], pos[9], rgb[9]);
mux_space space10(matriz[1][2], pos[10], rgb[10]);
mux_space space11(matriz[1][3], pos[11], rgb[11]);
mux_space space12(matriz[1][4], pos[12], rgb[12]);
mux_space space13(matriz[1][5], pos[13], rgb[13]);
mux_space space14(matriz[1][6], pos[14], rgb[14]);
mux_space space15(matriz[1][7], pos[15], rgb[15]);


mux_space space16(matriz[2][0], pos[16], rgb[16]);
mux_space space17(matriz[2][1], pos[17], rgb[17]);
mux_space space18(matriz[2][2], pos[18], rgb[18]);
mux_space space19(matriz[2][3], pos[19], rgb[19]);
mux_space space20(matriz[2][4], pos[20], rgb[20]);
mux_space space21(matriz[2][5], pos[21], rgb[21]);
mux_space space22(matriz[2][6], pos[22], rgb[22]);
mux_space space23(matriz[2][7], pos[23], rgb[23]);


mux_space space24(matriz[3][0], pos[24], rgb[24]);
mux_space space25(matriz[3][1], pos[25], rgb[25]);
mux_space space26(matriz[3][2], pos[26], rgb[26]);
mux_space space27(matriz[3][3], pos[27], rgb[27]);
mux_space space28(matriz[3][4], pos[28], rgb[28]);
mux_space space29(matriz[3][5], pos[29], rgb[29]);
mux_space space30(matriz[3][6], pos[30], rgb[30]);
mux_space space31(matriz[3][7], pos[31], rgb[31]);


mux_space space32(matriz[4][0], pos[32], rgb[32]);
mux_space space33(matriz[4][1], pos[33], rgb[33]);
mux_space space34(matriz[4][2], pos[34], rgb[34]);
mux_space space35(matriz[4][3], pos[35], rgb[35]);
mux_space space36(matriz[4][4], pos[36], rgb[36]);
mux_space space37(matriz[4][5], pos[37], rgb[37]);
mux_space space38(matriz[4][6], pos[38], rgb[38]);
mux_space space39(matriz[4][7], pos[39], rgb[39]);


mux_space space40(matriz[5][0], pos[40], rgb[40]);
mux_space space41(matriz[5][1], pos[41], rgb[41]);
mux_space space42(matriz[5][2], pos[42], rgb[42]);
mux_space space43(matriz[5][3], pos[43], rgb[43]);
mux_space space44(matriz[5][4], pos[44], rgb[44]);
mux_space space45(matriz[5][5], pos[45], rgb[45]);
mux_space space46(matriz[5][6], pos[46], rgb[46]);
mux_space space47(matriz[5][7], pos[47], rgb[47]);


mux_space space48(matriz[6][0], pos[48], rgb[48]);
mux_space space49(matriz[6][1], pos[49], rgb[49]);
mux_space space50(matriz[6][2], pos[50], rgb[50]);
mux_space space51(matriz[6][3], pos[51], rgb[51]);
mux_space space52(matriz[6][4], pos[52], rgb[52]);
mux_space space53(matriz[6][5], pos[53], rgb[53]);
mux_space space54(matriz[6][6], pos[54], rgb[54]);
mux_space space55(matriz[6][7], pos[55], rgb[55]);


mux_space space56(matriz[7][0], pos[56], rgb[56]);
mux_space space57(matriz[7][1], pos[57], rgb[57]);
mux_space space58(matriz[7][2], pos[58], rgb[58]);
mux_space space59(matriz[7][3], pos[59], rgb[59]);
mux_space space60(matriz[7][4], pos[60], rgb[60]);
mux_space space61(matriz[7][5], pos[61], rgb[61]);
mux_space space62(matriz[7][6], pos[62], rgb[62]);
mux_space space63(matriz[7][7], pos[63], rgb[63]);
	

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