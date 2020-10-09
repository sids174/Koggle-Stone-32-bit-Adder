module KoggleStone32(out,in1,in2,c0);

input [31:0]in1,in2;
input c0;
output [32:0]out;

wire [31:0]g,p;
wire [60:0]s1;
wire [57:0]s2;
wire [51:0]s3;
wire [39:0]s4;
wire [15:0]s5;
wire [31:0]w;
wire [31:0]c;

assign g = in1 & in2;
assign p = in1 | in2;

//Stage 1__________________________________________________
PrefixOperator2 M1 (s1[0],g[1],p[1],g[0]); //1
PrefixOperator1 M2 (s1[2:1],g[2],p[2],g[1],p[1]); //2
PrefixOperator1 M3 (s1[4:3],g[3],p[3],g[2],p[2]); //3
PrefixOperator1 M4 (s1[6:5],g[4],p[4],g[3],p[3]); //4

PrefixOperator1 M5 (s1[8:7],g[5],p[5],g[4],p[4]); //5
PrefixOperator1 M6 (s1[10:9],g[6],p[6],g[5],p[5]); //6
PrefixOperator1 M7 (s1[12:11],g[7],p[7],g[6],p[6]); //7
PrefixOperator1 M8 (s1[14:13],g[8],p[8],g[7],p[7]); //8

PrefixOperator1 M9 (s1[16:15],g[9],p[9],g[8],p[8]); //9
PrefixOperator1 M10 (s1[18:17],g[10],p[10],g[9],p[9]); //10
PrefixOperator1 M11 (s1[20:19],g[11],p[11],g[10],p[10]); //11
PrefixOperator1 M12 (s1[22:21],g[12],p[12],g[11],p[11]); //12
 
PrefixOperator1 M13 (s1[24:23],g[13],p[13],g[12],p[12]); //13
PrefixOperator1 M14 (s1[26:25],g[14],p[14],g[13],p[13]); //14
PrefixOperator1 M15 (s1[28:27],g[15],p[15],g[14],p[14]); //15
PrefixOperator1 M16 (s1[30:29],g[16],p[16],g[15],p[15]); //16
 
PrefixOperator1 M17 (s1[32:31],g[17],p[17],g[16],p[16]); //17
PrefixOperator1 M18 (s1[34:33],g[18],p[18],g[17],p[17]); //18
PrefixOperator1 M19 (s1[36:35],g[19],p[19],g[18],p[18]); //19
PrefixOperator1 M20 (s1[38:37],g[20],p[20],g[19],p[19]); //20
 
PrefixOperator1 M21 (s1[40:39],g[21],p[21],g[20],p[20]); //21
PrefixOperator1 M22 (s1[42:41],g[22],p[22],g[21],p[21]); //22
PrefixOperator1 M23 (s1[44:43],g[23],p[23],g[22],p[22]); //23
PrefixOperator1 M24 (s1[46:45],g[24],p[24],g[23],p[23]); //24

PrefixOperator1 M25 (s1[48:47],g[25],p[25],g[24],p[24]); //25
PrefixOperator1 M26 (s1[50:49],g[26],p[26],g[25],p[25]); //26
PrefixOperator1 M27 (s1[52:51],g[27],p[27],g[26],p[26]); //27
PrefixOperator1 M28 (s1[54:53],g[28],p[28],g[27],p[27]); //28

PrefixOperator1 M29 (s1[56:55],g[29],p[29],g[28],p[28]); //29
PrefixOperator1 M30 (s1[58:57],g[30],p[30],g[29],p[29]); //30
PrefixOperator1 M31 (s1[60:59],g[31],p[31],g[30],p[30]); //31
 
//Stage 2___________________________________________________
PrefixOperator2 M32 (s2[0],s1[2],s1[1],g[0]); //1
PrefixOperator2 M33 (s2[1],s1[4],s1[3],s1[0]); //2
PrefixOperator1 M34 (s2[3:2],s1[6],s1[5],s1[2],s1[1]); //3
PrefixOperator1 M35 (s2[5:4],s1[8],s1[7],s1[4],s1[3]); //4

PrefixOperator1 M36 (s2[7:6],s1[10],s1[9],s1[6],s1[5]); //5
PrefixOperator1 M37 (s2[9:8],s1[12],s1[11],s1[8],s1[7]); //6
PrefixOperator1 M38 (s2[11:10],s1[14],s1[13],s1[10],s1[9]); //7
PrefixOperator1 M39 (s2[13:12],s1[16],s1[15],s1[12],s1[11]); //8

PrefixOperator1 M40 (s2[15:14],s1[18],s1[17],s1[14],s1[13]); //9
PrefixOperator1 M41 (s2[17:16],s1[20],s1[19],s1[16],s1[15]); //10
PrefixOperator1 M42 (s2[19:18],s1[22],s1[21],s1[18],s1[17]); //11
PrefixOperator1 M43 (s2[21:20],s1[24],s1[23],s1[20],s1[19]); //12

PrefixOperator1 M44 (s2[23:22],s1[26],s1[25],s1[22],s1[21]); //13
PrefixOperator1 M45 (s2[25:24],s1[28],s1[27],s1[24],s1[23]); //14
PrefixOperator1 M46 (s2[27:26],s1[30],s1[29],s1[26],s1[25]); //15
PrefixOperator1 M47 (s2[29:28],s1[32],s1[31],s1[28],s1[27]); //16

PrefixOperator1 M48 (s2[31:30],s1[34],s1[33],s1[30],s1[29]); //17
PrefixOperator1 M49 (s2[33:32],s1[36],s1[35],s1[32],s1[31]); //18
PrefixOperator1 M50 (s2[35:34],s1[38],s1[37],s1[34],s1[33]); //19
PrefixOperator1 M51 (s2[37:36],s1[40],s1[39],s1[36],s1[35]); //20
 
PrefixOperator1 M52 (s2[39:38],s1[42],s1[41],s1[38],s1[37]); //21
PrefixOperator1 M53 (s2[41:40],s1[44],s1[43],s1[40],s1[39]); //22
PrefixOperator1 M54 (s2[43:42],s1[46],s1[45],s1[42],s1[41]); //23
PrefixOperator1 M55 (s2[45:44],s1[48],s1[47],s1[44],s1[43]); //24

PrefixOperator1 M56 (s2[47:46],s1[50],s1[49],s1[46],s1[45]); //25
PrefixOperator1 M57 (s2[49:48],s1[52],s1[51],s1[48],s1[47]); //26
PrefixOperator1 M58 (s2[51:50],s1[54],s1[53],s1[50],s1[49]); //27
PrefixOperator1 M59 (s2[53:52],s1[56],s1[55],s1[52],s1[51]); //28

PrefixOperator1 M60 (s2[55:54],s1[58],s1[57],s1[54],s1[53]); //29
PrefixOperator1 M61 (s2[57:56],s1[60],s1[59],s1[56],s1[55]); //30
  
//Stage 3___________________________________________________
PrefixOperator2 M62 (s3[0],s2[3],s2[2],g[0]); //1
PrefixOperator2 M63 (s3[1],s2[5],s2[4],s1[0]); //2
PrefixOperator2 M64 (s3[2],s2[7],s2[6],s2[0]); //3
PrefixOperator2 M65 (s3[3],s2[9],s2[8],s2[1]); //4

PrefixOperator1 M66 (s3[5:4],s2[11],s2[10],s2[3],s2[2]); //5
PrefixOperator1 M67 (s3[7:6],s2[13],s2[12],s2[5],s2[4]); //6
PrefixOperator1 M68 (s3[9:8],s2[15],s2[14],s2[7],s2[6]); //7
PrefixOperator1 M69 (s3[11:10],s2[17],s2[16],s2[9],s2[8]); //8

PrefixOperator1 M70 (s3[13:12],s2[19],s2[18],s2[11],s2[10]); //9
PrefixOperator1 M71 (s3[15:14],s2[21],s2[20],s2[13],s2[12]); //10
PrefixOperator1 M72 (s3[17:16],s2[23],s2[22],s2[15],s2[14]); //11
PrefixOperator1 M73 (s3[19:18],s2[25],s2[24],s2[17],s2[16]); //12

PrefixOperator1 M74 (s3[21:20],s2[27],s2[26],s2[19],s2[18]); //13
PrefixOperator1 M75 (s3[23:22],s2[29],s2[28],s2[21],s2[20]); //14
PrefixOperator1 M76 (s3[25:24],s2[31],s2[30],s2[23],s2[22]); //15
PrefixOperator1 M77 (s3[27:26],s2[33],s2[32],s2[25],s2[24]); //16

PrefixOperator1 M78 (s3[29:28],s2[35],s2[34],s2[27],s2[26]); //17
PrefixOperator1 M79 (s3[31:30],s2[37],s2[36],s2[29],s2[28]); //18
PrefixOperator1 M80 (s3[33:32],s2[39],s2[38],s2[31],s2[30]); //19
PrefixOperator1 M81 (s3[35:34],s2[41],s2[40],s2[33],s2[32]); //20

PrefixOperator1 M82 (s3[37:36],s2[43],s2[42],s2[35],s2[34]); //21
PrefixOperator1 M83 (s3[39:38],s2[45],s2[44],s2[37],s2[36]); //22
PrefixOperator1 M84 (s3[41:40],s2[47],s2[46],s2[39],s2[38]); //23
PrefixOperator1 M85 (s3[43:42],s2[49],s2[48],s2[41],s2[40]); //24

PrefixOperator1 M86 (s3[45:44],s2[51],s2[50],s2[43],s2[42]); //25
PrefixOperator1 M87 (s3[47:46],s2[53],s2[52],s2[45],s2[44]); //26
PrefixOperator1 M88 (s3[49:48],s2[55],s2[54],s2[47],s2[46]); //27
PrefixOperator1 M89 (s3[51:50],s2[57],s2[56],s2[49],s2[48]); //28

//Stage 4___________________________________________________
PrefixOperator2 M90 (s4[0],s3[5],s3[4],g[0]); //1
PrefixOperator2 M91 (s4[1],s3[7],s3[6],s1[0]); //2
PrefixOperator2 M92 (s4[2],s3[9],s3[8],s2[0]); //3
PrefixOperator2 M93 (s4[3],s3[11],s3[10],s2[1]); //4

PrefixOperator2 M94 (s4[4],s3[13],s3[12],s3[0]); //5
PrefixOperator2 M95 (s4[5],s3[15],s3[14],s3[1]); //6
PrefixOperator2 M96 (s4[6],s3[17],s3[16],s3[2]); //7
PrefixOperator2 M97 (s4[7],s3[19],s3[18],s3[3]); //8

PrefixOperator1 M98 (s4[9:8],s3[21],s3[20],s3[5],s3[4]); //9
PrefixOperator1 M99 (s4[11:10],s3[23],s3[22],s3[7],s3[6]); //10
PrefixOperator1 M100 (s4[13:12],s3[25],s3[24],s3[9],s3[8]); //11
PrefixOperator1 M101 (s4[15:14],s3[27],s3[26],s3[11],s3[10]); //12

PrefixOperator1 M102 (s4[17:16],s3[29],s3[28],s3[13],s3[12]); //13
PrefixOperator1 M103 (s4[19:18],s3[31],s3[30],s3[15],s3[14]); //14
PrefixOperator1 M104 (s4[21:20],s3[33],s3[32],s3[17],s3[16]); //15
PrefixOperator1 M105 (s4[23:22],s3[35],s3[34],s3[19],s3[18]); //16

PrefixOperator1 M106 (s4[25:24],s3[37],s3[36],s3[21],s3[20]); //17
PrefixOperator1 M107 (s4[27:26],s3[39],s3[38],s3[23],s3[22]); //18
PrefixOperator1 M108 (s4[29:28],s3[41],s3[40],s3[25],s3[24]); //19
PrefixOperator1 M109 (s4[31:30],s3[43],s3[42],s3[27],s3[26]); //20
 
PrefixOperator1 M110 (s4[33:32],s3[45],s3[44],s3[29],s3[28]); //21
PrefixOperator1 M111 (s4[35:34],s3[47],s3[46],s3[31],s3[30]); //22
PrefixOperator1 M112 (s4[37:36],s3[49],s3[48],s3[33],s3[32]); //23
PrefixOperator1 M113 (s4[39:38],s3[51],s3[50],s3[35],s3[34]); //24

//Stage 5___________________________________________________
PrefixOperator2 M114 (s5[0],s4[9],s4[8],g[0]); //1
PrefixOperator2 M115 (s5[1],s4[11],s4[10],s1[0]); //2
PrefixOperator2 M116 (s5[2],s4[13],s4[12],s2[0]); //3
PrefixOperator2 M117 (s5[3],s4[15],s4[14],s2[1]); //4

PrefixOperator2 M118 (s5[4],s4[17],s4[16],s3[0]); //5
PrefixOperator2 M119 (s5[5],s4[19],s4[18],s3[1]); //6
PrefixOperator2 M120 (s5[6],s4[21],s4[20],s3[2]); //7
PrefixOperator2 M121 (s5[7],s4[23],s4[22],s3[3]); //8

PrefixOperator2 M122 (s5[8],s4[25],s4[24],s4[0]); //9
PrefixOperator2 M123 (s5[9],s4[27],s4[26],s4[1]); //10
PrefixOperator2 M124 (s5[10],s4[29],s4[28],s4[2]); //11
PrefixOperator2 M125 (s5[11],s4[31],s4[30],s4[3]); //12

PrefixOperator2 M126 (s5[12],s4[33],s4[32],s4[4]); //13
PrefixOperator2 M127 (s5[13],s4[35],s4[34],s4[5]); //14
PrefixOperator2 M128 (s5[14],s4[37],s4[36],s4[6]); //15
PrefixOperator2 M129 (s5[15],s4[39],s4[38],s4[7]); //16

//
assign w[0] = p[0] & c0;
assign c[0] = g[0] | w[0];

assign w[1] = w[0] & p[1];
assign c[1] = s1[0] | w[1];

assign w[2] = w[1] & p[2];
assign c[2] = s2[0] | w[2];

assign w[3] = w[2] & p[3];
assign c[3] = s2[1] | w[3];

assign w[4] = w[3] & p[4];
assign c[4] = s3[0] | w[4];

assign w[5] = w[4] & p[5];
assign c[5] = s3[1] | w[5];

assign w[6] = w[5] & p[6];
assign c[6] = s3[2] | w[6];

assign w[7] = w[6] & p[7];
assign c[7] = s3[3] | w[7];

assign w[8] = w[7] & p[8];
assign c[8] = s4[0] | w[8];

assign w[9] = w[8] & p[9];
assign c[9] = s4[1] | w[9];

assign w[10] = w[9] & p[10];
assign c[10] = s4[2] | w[10];

assign w[11] = w[10] & p[11];
assign c[11] = s4[3] | w[11];

assign w[12] = w[11] & p[12];
assign c[12] = s4[4] | w[12];

assign w[13] = w[12] & p[13];
assign c[13] = s4[5] | w[13];

assign w[14] = w[13] & p[14];
assign c[14] = s4[6] | w[14];

assign w[15] = w[14] & p[15];
assign c[15] = s4[7] | w[15];

assign w[16] = w[15] & p[16];
assign c[16] = s5[0] | w[16];

assign w[17] = w[16] & p[17];
assign c[17] = s5[1] | w[17];

assign w[18] = w[17] & p[18];
assign c[18] = s5[2] | w[18];

assign w[19] = w[18] & p[19];
assign c[19] = s5[3] | w[19];

assign w[20] = w[19] & p[20];
assign c[20] = s5[4] | w[20];

assign w[21] = w[20] & p[21];
assign c[21] = s5[5] | w[21];

assign w[22] = w[21] & p[22];
assign c[22] = s5[6] | w[22];

assign w[23] = w[22] & p[23];
assign c[23] = s5[7] | w[23];

assign w[24] = w[23] & p[24];
assign c[24] = s5[8] | w[24];

assign w[25] = w[24] & p[25];
assign c[25] = s5[9] | w[25];

assign w[26] = w[25] & p[26];
assign c[26] = s5[10] | w[26];

assign w[27] = w[26] & p[27];
assign c[27] = s5[11] | w[27];

assign w[28] = w[27] & p[28];
assign c[28] = s5[12] | w[28];

assign w[29] = w[28] & p[29];
assign c[29] = s5[13] | w[29];

assign w[30] = w[29] & p[30];
assign c[30] = s5[14] | w[30];

assign w[31] = w[30] & p[31];
assign c[31] = s5[15] | w[31];
//

assign out[31:0] = in1 ^ in2 ^ {c[30:0],c0};
assign out[32] = c[31];

endmodule
