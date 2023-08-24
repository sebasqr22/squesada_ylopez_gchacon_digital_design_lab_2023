module display(input a, b, c, d, e, output [6:0]led);

assign led[0] = ~e & ~c & a | ~d & ~c & a | ~d & b & a| ~e & d & ~c & ~b | d & c & ~b & a | e & ~d & c & ~b & ~a;
assign led[1] = ~e & c & ~b | ~e & d & ~c & b | ~e & d & ~c & ~a | e & d & ~c & ~b | ~e & ~d & b & ~a | e & ~d & ~c & b | ~d & ~c & ~b &a | e & d & c & b & ~a;
assign led[2] = ~e & ~d & c & ~b | ~d & c & ~b & a | ~e & d & ~b & ~a | ~e & d & b & a | e & ~d & ~c & a | e & d & c & b |~e & ~d & ~c & b & ~a;
assign led[3] = ~e & c & a | ~e & ~c & ~b & ~a | ~d & b & c & a  | d & ~c & b & ~a | e & ~d & ~c & ~b | e & ~d & ~b & ~a;
assign led[4] = e & ~c & ~a | e & ~b & ~a | e & ~d & c & b | ~e & d & ~c & ~b & a;
assign led[5] = ~e & d & ~b & a | e & ~d & ~b & a | e & ~d & c & ~a | ~e & ~d & ~c & b & a | e & d & ~c & b & ~a | e & d & c & b & a; 
assign led[6] = ~e & ~d & b & ~a | ~e & c & b & ~a | ~e & d & ~c & ~b| ~e & d & ~c & a | e & ~d & c & ~b & ~a | e & d & ~c & b & ~a | e & d & c & ~b & a;

endmodule
