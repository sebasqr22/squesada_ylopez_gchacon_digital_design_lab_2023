module CheckPos( input logic [9:0] hs,vs,
					  output logic [63:0]pos);
					  
					  
		assign pos[0]  = ((0     < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[1]  = ((126   < hs)&(174 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[2]  = ((186   < hs)&(234 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[3]  = ((246   < hs)&(294 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[4]  = ((306   < hs)&(354 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[5]  = ((366   < hs)&(414 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[6]  = ((426   < hs)&(474 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[7]  = ((486   < hs)&(534 > hs)&(0   < vs)&(74 > vs))? 1:0;
		
	
		assign pos[8]  = ((0     < hs)&(114 > hs)&(84   < vs)&(154 > vs))? 1:0;
		assign pos[9]  = ((126   < hs)&(174 > hs)&(84   < vs)&(154 > vs))? 1:0;
		assign pos[10]  = ((186   < hs)&(234 > hs)&(84   < vs)&(154 > vs))? 1:0;
		assign pos[11]  = ((246   < hs)&(294 > hs)&(84   < vs)&(154 > vs))? 1:0;
		assign pos[12]  = ((306   < hs)&(354 > hs)&(84   < vs)&(154 > vs))? 1:0;
		assign pos[13]  = ((366   < hs)&(414 > hs)&(84   < vs)&(154 > vs))? 1:0;
		assign pos[14]  = ((426   < hs)&(474 > hs)&(84   < vs)&(154 > vs))? 1:0;
		assign pos[15]  = ((486   < hs)&(534 > hs)&(84   < vs)&(154 > vs))? 1:0;
		
		assign pos[16]  = ((0   < hs)&(114 > hs)&(164   < vs)&(234 > vs))? 1:0;
		assign pos[17]  = ((0   < hs)&(114 > hs)&(164   < vs)&(234 > vs))? 1:0;
		assign pos[18]  = ((0   < hs)&(114 > hs)&(164   < vs)&(234 > vs))? 1:0;
		assign pos[19]  = ((0   < hs)&(114 > hs)&(164   < vs)&(234 > vs))? 1:0;
		assign pos[20]  = ((0   < hs)&(114 > hs)&(164   < vs)&(234 > vs))? 1:0;
		assign pos[21]  = ((0   < hs)&(114 > hs)&(164   < vs)&(234 > vs))? 1:0;
		assign pos[22]  = ((0   < hs)&(114 > hs)&(164   < vs)&(234 > vs))? 1:0;
		assign pos[23]  = ((0   < hs)&(114 > hs)&(164   < vs)&(234 > vs))? 1:0;
		
		assign pos[24]  = ((0   < hs)&(114 > hs)&(244   < vs)&(314 > vs))? 1:0;
		assign pos[25]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[26]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[27]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[28]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[29]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[30]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[31]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		
		assign pos[32]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[33]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[34]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[35]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[36]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[37]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[38]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[39]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		
		assign pos[40]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[41]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[42]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[43]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[44]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[45]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[46]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[47]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		
		assign pos[48]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[49]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[50]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[51]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[52]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[53]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[54]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[55]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		
		assign pos[56]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[57]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[58]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[59]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[60]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[61]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[62]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		assign pos[63]  = ((0   < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
		
endmodule