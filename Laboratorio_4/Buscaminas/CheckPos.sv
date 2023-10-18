module CheckPos( input logic [9:0] hs,vs,
					  output logic [63:0]pos);
					  
					  
		assign pos[0]  = ((0     < hs)&(114 > hs)&(0   < vs)&(74 > vs))? 1:0;
assign pos[1]  = ((126     < hs)&(174 > hs)&(0   < vs)&(74 > vs))? 1:0;
assign pos[2]  = ((186     < hs)&(234 > hs)&(0   < vs)&(74 > vs))? 1:0;
assign pos[3]  = ((246     < hs)&(294 > hs)&(0   < vs)&(74 > vs))? 1:0;
assign pos[4]  = ((306     < hs)&(354 > hs)&(0   < vs)&(74 > vs))? 1:0;
assign pos[5]  = ((366     < hs)&(414 > hs)&(0   < vs)&(74 > vs))? 1:0;
assign pos[6]  = ((426     < hs)&(474 > hs)&(0   < vs)&(74 > vs))? 1:0;
assign pos[7]  = ((486     < hs)&(534 > hs)&(0   < vs)&(74 > vs))? 1:0;


assign pos[8]  = ((0     < hs)&(114 > hs)&(84   < vs)&(154 > vs))? 1:0;
assign pos[9]  = ((126     < hs)&(174 > hs)&(84   < vs)&(154 > vs))? 1:0;
assign pos[10]  = ((186     < hs)&(234 > hs)&(84   < vs)&(154 > vs))? 1:0;
assign pos[11]  = ((246     < hs)&(294 > hs)&(84   < vs)&(154 > vs))? 1:0;
assign pos[12]  = ((306     < hs)&(354 > hs)&(84   < vs)&(154 > vs))? 1:0;
assign pos[13]  = ((366     < hs)&(414 > hs)&(84   < vs)&(154 > vs))? 1:0;
assign pos[14]  = ((426     < hs)&(474 > hs)&(84   < vs)&(154 > vs))? 1:0;
assign pos[15]  = ((486     < hs)&(534 > hs)&(84   < vs)&(154 > vs))? 1:0;


assign pos[16]  = ((0     < hs)&(114 > hs)&(164   < vs)&(234 > vs))? 1:0;
assign pos[17]  = ((126     < hs)&(174 > hs)&(164   < vs)&(234 > vs))? 1:0;
assign pos[18]  = ((186     < hs)&(234 > hs)&(164   < vs)&(234 > vs))? 1:0;
assign pos[19]  = ((246     < hs)&(294 > hs)&(164   < vs)&(234 > vs))? 1:0;
assign pos[20]  = ((306     < hs)&(354 > hs)&(164   < vs)&(234 > vs))? 1:0;
assign pos[21]  = ((366     < hs)&(414 > hs)&(164   < vs)&(234 > vs))? 1:0;
assign pos[22]  = ((426     < hs)&(474 > hs)&(164   < vs)&(234 > vs))? 1:0;
assign pos[23]  = ((486     < hs)&(534 > hs)&(164   < vs)&(234 > vs))? 1:0;


assign pos[24]  = ((0     < hs)&(114 > hs)&(244   < vs)&(314 > vs))? 1:0;
assign pos[25]  = ((126     < hs)&(174 > hs)&(244   < vs)&(314 > vs))? 1:0;
assign pos[26]  = ((186     < hs)&(234 > hs)&(244   < vs)&(314 > vs))? 1:0;
assign pos[27]  = ((246     < hs)&(294 > hs)&(244   < vs)&(314 > vs))? 1:0;
assign pos[28]  = ((306     < hs)&(354 > hs)&(244   < vs)&(314 > vs))? 1:0;
assign pos[29]  = ((366     < hs)&(414 > hs)&(244   < vs)&(314 > vs))? 1:0;
assign pos[30]  = ((426     < hs)&(474 > hs)&(244   < vs)&(314 > vs))? 1:0;
assign pos[31]  = ((486     < hs)&(534 > hs)&(244   < vs)&(314 > vs))? 1:0;


assign pos[32]  = ((0     < hs)&(114 > hs)&(324   < vs)&(394 > vs))? 1:0;
assign pos[33]  = ((126     < hs)&(174 > hs)&(324   < vs)&(394 > vs))? 1:0;
assign pos[34]  = ((186     < hs)&(234 > hs)&(324   < vs)&(394 > vs))? 1:0;
assign pos[35]  = ((246     < hs)&(294 > hs)&(324   < vs)&(394 > vs))? 1:0;
assign pos[36]  = ((306     < hs)&(354 > hs)&(324   < vs)&(394 > vs))? 1:0;
assign pos[37]  = ((366     < hs)&(414 > hs)&(324   < vs)&(394 > vs))? 1:0;
assign pos[38]  = ((426     < hs)&(474 > hs)&(324   < vs)&(394 > vs))? 1:0;
assign pos[39]  = ((486     < hs)&(534 > hs)&(324   < vs)&(394 > vs))? 1:0;


assign pos[40]  = ((0     < hs)&(114 > hs)&(404   < vs)&(474 > vs))? 1:0;
assign pos[41]  = ((126     < hs)&(174 > hs)&(404   < vs)&(474 > vs))? 1:0;
assign pos[42]  = ((186     < hs)&(234 > hs)&(404   < vs)&(474 > vs))? 1:0;
assign pos[43]  = ((246     < hs)&(294 > hs)&(404   < vs)&(474 > vs))? 1:0;
assign pos[44]  = ((306     < hs)&(354 > hs)&(404   < vs)&(474 > vs))? 1:0;
assign pos[45]  = ((366     < hs)&(414 > hs)&(404   < vs)&(474 > vs))? 1:0;
assign pos[46]  = ((426     < hs)&(474 > hs)&(404   < vs)&(474 > vs))? 1:0;
assign pos[47]  = ((486     < hs)&(534 > hs)&(404   < vs)&(474 > vs))? 1:0;


assign pos[48]  = ((0     < hs)&(114 > hs)&(484   < vs)&(554 > vs))? 1:0;
assign pos[49]  = ((126     < hs)&(174 > hs)&(484   < vs)&(554 > vs))? 1:0;
assign pos[50]  = ((186     < hs)&(234 > hs)&(484   < vs)&(554 > vs))? 1:0;
assign pos[51]  = ((246     < hs)&(294 > hs)&(484   < vs)&(554 > vs))? 1:0;
assign pos[52]  = ((306     < hs)&(354 > hs)&(484   < vs)&(554 > vs))? 1:0;
assign pos[53]  = ((366     < hs)&(414 > hs)&(484   < vs)&(554 > vs))? 1:0;
assign pos[54]  = ((426     < hs)&(474 > hs)&(484   < vs)&(554 > vs))? 1:0;
assign pos[55]  = ((486     < hs)&(534 > hs)&(484   < vs)&(554 > vs))? 1:0;


assign pos[56]  = ((0     < hs)&(114 > hs)&(564   < vs)&(634 > vs))? 1:0;
assign pos[57]  = ((126     < hs)&(174 > hs)&(564   < vs)&(634 > vs))? 1:0;
assign pos[58]  = ((186     < hs)&(234 > hs)&(564   < vs)&(634 > vs))? 1:0;
assign pos[59]  = ((246     < hs)&(294 > hs)&(564   < vs)&(634 > vs))? 1:0;
assign pos[60]  = ((306     < hs)&(354 > hs)&(564   < vs)&(634 > vs))? 1:0;
assign pos[61]  = ((366     < hs)&(414 > hs)&(564   < vs)&(634 > vs))? 1:0;
assign pos[62]  = ((426     < hs)&(474 > hs)&(564   < vs)&(634 > vs))? 1:0;
assign pos[63]  = ((486     < hs)&(534 > hs)&(564   < vs)&(634 > vs))? 1:0;
		
endmodule