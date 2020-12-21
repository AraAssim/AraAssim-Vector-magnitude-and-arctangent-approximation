`timescale 1 ns / 1 ns

module simulink_functio
          (clk,
           reset_x,
           clk_enable,
           in_re,
           in_im,
           magnitude,
           alpha_arctangen);


  input   clk;
  input   reset_x;
  input   clk_enable;
  input   signed [15:0] in_re;  // sfix16_En14
  input   signed [15:0] in_im;  // sfix16_En14
  output  [15:0] magnitude;  // ufix16_En14
  output  signed [7:0] alpha_arctangen;  // sfix8_En5

  reg signed [15:0] in_re_REG;
  reg signed [15:0] in_im_REG;
  reg [15:0] magnitude_REG;
  reg signed [7:0] alpha_arctangen_REG;

  wire signed [16:0] Abs_y;  // sfix17_En14
  wire signed [16:0] Abs_cast;  // sfix17_En14
  wire [15:0] Abs_out1;  // ufix16_En15
  wire signed [16:0] Abs1_y;  // sfix17_En14
  wire signed [16:0] Abs1_cast;  // sfix17_En14
  wire [15:0] Abs1_out1;  // ufix16_En15
  wire Relational_Operator_relop1;
  wire switch_compare_1;
  wire [15:0] Abs1_out1_dtc;  // ufix16_En11
  wire [15:0] Abs_out1_dtc;  // ufix16_En11
  wire [15:0] Switch6_out1;  // ufix16_En11
  reg [15:0] Switch6_out1_1;  // ufix16_En11
  wire Relational_Operator6_relop1;
  wire switch_compare_1_1;
  wire [15:0] Abs1_out1_dtc_1;  // ufix16_En10
  wire [15:0] Abs_out1_dtc_1;  // ufix16_En10
  wire [15:0] Switch5_out1;  // ufix16_En10
  reg [15:0] Switch5_out1_1;  // ufix16_En10
  wire [15:0] Constant14_out1;  // ufix16_En12
  reg [15:0] Constant14_out1_1;  // ufix16_En12
  wire [31:0] Product11_out1;  // ufix32_En22
  wire [15:0] Constant17_out1;  // ufix16_En11
  reg [15:0] Constant17_out1_1;  // ufix16_En11
  wire [31:0] Product15_out1;  // ufix32_En21
  wire [15:0] Constant16_out1;  // ufix16_En11
  reg [15:0] Constant16_out1_1;  // ufix16_En11
  wire [31:0] Product14_out1;  // ufix32_En22
  wire [15:0] Constant4_out1;  // ufix16_En11
  reg [15:0] Constant4_out1_1;  // ufix16_En11
  wire [31:0] Product12_out1;  // ufix32_En21
  wire [15:0] Constant15_out1;  // ufix16_En13
  reg [15:0] Constant15_out1_1;  // ufix16_En13
  wire [31:0] Product13_out1;  // ufix32_En24
  reg [15:0] Switch6_out1_2;  // ufix16_En11
  reg [31:0] Product11_out1_1;  // ufix32_En22
  wire [15:0] Product11_out1_2;  // ufix16_En12
  wire [16:0] Relational_Operator7_1_cast;  // ufix17_En12
  wire [16:0] Relational_Operator7_1_cast_1;  // ufix17_En12
  wire Relational_Operator7_relop1;
  wire switch_compare_1_2;
  reg [31:0] Product15_out1_1;  // ufix32_En21
  wire [15:0] Product15_out1_2;  // ufix16_En11
  reg [31:0] Product14_out1_1;  // ufix32_En22
  wire [15:0] Product14_out1_2;  // ufix16_En12
  wire [17:0] Add15_add_cast;  // ufix18_En12
  wire [17:0] Add15_add_cast_1;  // ufix18_En12
  wire [17:0] Add15_add_temp;  // ufix18_En12
  wire [15:0] Add15_out1;  // ufix16_En10
  wire [15:0] Add15_out1_dtc;  // ufix16_En14
  reg [31:0] Product12_out1_1;  // ufix32_En21
  wire [15:0] Product12_out1_2;  // ufix16_En10
  reg [31:0] Product13_out1_1;  // ufix32_En24
  wire [15:0] Product13_out1_2;  // ufix16_En14
  wire [20:0] Add14_add_cast;  // ufix21_En14
  wire [20:0] Add14_add_cast_1;  // ufix21_En14
  wire [20:0] Add14_add_temp;  // ufix21_En14
  wire [15:0] Add14_out1;  // ufix16_En10
  wire [15:0] Add14_out1_dtc;  // ufix16_En14
  wire [15:0] Magnitude_Approximation;  // ufix16_En14
  reg [15:0] delayMatch24_reg [0:23];  // ufix16 [24]
  wire [15:0] delayMatch24_reg_next [0:23];  // ufix16_En14 [24]
  wire [15:0] Magnitude_Approximation_1;  // ufix16_En14
  wire signed [16:0] Add22_sub_cast;  // sfix17_En15
  wire signed [16:0] Add22_sub_cast_1;  // sfix17_En15
  wire signed [16:0] Add22_sub_temp;  // sfix17_En15
  wire signed [15:0] Add22_out1;  // sfix16_En14
  wire signed [15:0] Constant13_out1;  // sfix16_En4
  wire signed [15:0] Constant12_out1;  // sfix16_En4
  wire signed [25:0] Relational_Operator4_1_cast;  // sfix26_En14
  wire signed [25:0] Relational_Operator4_1_cast_1;  // sfix26_En14
  wire Relational_Operator4_relop1;
  wire signed [15:0] Constant11_out1;  // sfix16_En4
  wire signed [25:0] Relational_Operator3_1_cast;  // sfix26_En14
  wire signed [25:0] Relational_Operator3_1_cast_1;  // sfix26_En14
  wire Relational_Operator3_relop1;
  wire Logical_Operator1_out1;
  wire switch_compare_1_3;
  wire signed [15:0] Constant9_out1;  // sfix16_En4
  wire signed [25:0] Relational_Operator2_1_cast;  // sfix26_En14
  wire signed [25:0] Relational_Operator2_1_cast_1;  // sfix26_En14
  wire Relational_Operator2_relop1;
  wire signed [15:0] Constant18_out1;  // sfix16_En4
  wire signed [25:0] Relational_Operator1_1_cast;  // sfix26_En14
  wire signed [25:0] Relational_Operator1_1_cast_1;  // sfix26_En14
  wire Relational_Operator1_relop1;
  wire Logical_Operator_out1;
  wire switch_compare_1_4;
  wire signed [25:0] Relational_Operator5_1_cast;  // sfix26_En14
  wire signed [25:0] Relational_Operator5_1_cast_1;  // sfix26_En14
  wire Relational_Operator5_relop1;
  wire switch_compare_1_5;
  wire [15:0] Constant10_out1;  // ufix16_En13
  wire [15:0] Constant21_out1;  // ufix16_En14
  wire [15:0] Constant21_out1_dtc;  // ufix16_En13
  wire [15:0] Switch2_out1;  // ufix16_En13
  wire [15:0] Constant20_out1;  // ufix16_En14
  wire [15:0] Constant19_out1;  // ufix16_En15
  wire [15:0] Constant19_out1_dtc;  // ufix16_En14
  wire [15:0] Switch4_out1;  // ufix16_En14
  wire [15:0] Switch4_out1_dtc;  // ufix16_En13
  wire [15:0] Switch1_out1;  // ufix16_En13
  reg [15:0] delayMatch23_reg [0:25];  // ufix16 [26]
  wire [15:0] delayMatch23_reg_next [0:25];  // ufix16_En13 [26]
  wire [15:0] Switch1_out1_1;  // ufix16_En13
  wire switch_compare_1_6;
  wire [15:0] k0;  // ufix16_En13
  wire [15:0] Switch1_out1_zp;  // ufix16_En13
  reg signed [15:0] Complex_to_Real_Imag1_out1;  // sfix16_En14
  reg signed [15:0] Complex_to_Real_Imag1_out2;  // sfix16_En14
  wire signed [31:0] Product22_out1;  // sfix32_En28
  reg signed [31:0] Product22_out1_1;  // sfix32_En28
  wire signed [15:0] Product22_out1_2;  // sfix16_En15
  reg signed [15:0] HwModeRegister24_reg [0:22];  // sfix16 [23]
  wire signed [15:0] HwModeRegister24_reg_next [0:22];  // sfix16_En15 [23]
  wire signed [15:0] Product22_out1_3;  // sfix16_En15
  wire [15:0] Constant1_out1;  // ufix16_En15
  wire signed [31:0] Product16_out1;  // sfix32_En28
  reg signed [31:0] Product16_out1_1;  // sfix32_En28
  wire [15:0] Product16_out1_2;  // ufix16_En15
  wire signed [31:0] Product23_out1;  // sfix32_En28
  reg signed [31:0] Product23_out1_1;  // sfix32_En28
  wire [15:0] Product23_out1_2;  // ufix16_En15
  reg [15:0] Product23_out1_3;  // ufix16_En15
  wire [15:0] Constant2_out1;  // ufix16_En17
  reg [15:0] Constant2_out1_1;  // ufix16_En17
  wire [31:0] Product24_out1;  // ufix32_En32
  reg [15:0] delayMatch1_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch1_reg_next [0:1];  // ufix16_En15 [2]
  wire [15:0] Product16_out1_3;  // ufix16_En15
  reg [31:0] Product24_out1_1;  // ufix32_En32
  wire [15:0] Product24_out1_2;  // ufix16_En17
  wire [18:0] Add4_add_cast;  // ufix19_En17
  wire [18:0] Add4_add_cast_1;  // ufix19_En17
  wire [18:0] Add4_add_temp;  // ufix19_En17
  wire [15:0] Add4_out1;  // ufix16_En15
  wire [15:0] Constant5_out1;  // ufix16_En15
  wire signed [16:0] Subtract3_sub_cast;  // sfix17_En15
  wire signed [16:0] Subtract3_sub_cast_1;  // sfix17_En15
  wire signed [16:0] Subtract3_sub_temp;  // sfix17_En15
  wire signed [15:0] Subtract3_out1;  // sfix16_En14
  wire signed [17:0] Add1_sub_cast;  // sfix18_En15
  wire signed [17:0] Add1_sub_cast_1;  // sfix18_En15
  wire signed [17:0] Add1_sub_temp;  // sfix18_En15
  wire [15:0] Add1_out1;  // ufix16_En14
  reg [15:0] delayMatch2_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch2_reg_next [0:1];  // ufix16_En14 [2]
  wire [15:0] Add1_out1_1;  // ufix16_En14
  reg signed [15:0] Subtract3_out1_1;  // sfix16_En14
  wire signed [31:0] Product2_out1;  // sfix32_En28
  reg signed [31:0] Product2_out1_1;  // sfix32_En28
  wire [15:0] Product2_out1_2;  // ufix16_En15
  wire [17:0] Add2_add_cast;  // ufix18_En15
  wire [17:0] Add2_add_cast_1;  // ufix18_En15
  wire [17:0] Add2_add_temp;  // ufix18_En15
  wire [15:0] Add2_out1;  // ufix16_En14
  reg [15:0] delayMatch4_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch4_reg_next [0:1];  // ufix16_En14 [2]
  wire [15:0] Add2_out1_1;  // ufix16_En14
  reg [15:0] Product2_out1_3;  // ufix16_En15
  reg signed [15:0] reduced_reg [0:1];  // sfix16 [2]
  wire signed [15:0] reduced_reg_next [0:1];  // sfix16_En14 [2]
  wire signed [15:0] Subtract3_out1_2;  // sfix16_En14
  wire signed [16:0] Product1_cast;  // sfix17_En15
  wire signed [32:0] Product1_mul_temp;  // sfix33_En29
  wire signed [31:0] Product1_out1;  // sfix32_En29
  reg signed [31:0] Product1_out1_1;  // sfix32_En29
  wire signed [15:0] Product1_out1_2;  // sfix16_En14
  wire signed [17:0] Add3_sub_cast;  // sfix18_En14
  wire signed [17:0] Add3_sub_cast_1;  // sfix18_En14
  wire signed [17:0] Add3_sub_temp;  // sfix18_En14
  wire [15:0] Add3_out1;  // ufix16_En13
  reg [15:0] delayMatch6_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch6_reg_next [0:1];  // ufix16_En13 [2]
  wire [15:0] Add3_out1_1;  // ufix16_En13
  reg signed [15:0] Product1_out1_3;  // sfix16_En14
  reg signed [15:0] reduced_reg_1 [0:1];  // sfix16 [2]
  wire signed [15:0] reduced_reg_next_1 [0:1];  // sfix16_En14 [2]
  wire signed [15:0] Subtract3_out1_3;  // sfix16_En14
  wire signed [31:0] Product3_out1;  // sfix32_En28
  reg signed [31:0] Product3_out1_1;  // sfix32_En28
  wire [15:0] Product3_out1_2;  // ufix16_En15
  wire [18:0] Add6_add_cast;  // ufix19_En15
  wire [18:0] Add6_add_cast_1;  // ufix19_En15
  wire [18:0] Add6_add_temp;  // ufix19_En15
  wire [15:0] Add6_out1;  // ufix16_En13
  reg [15:0] delayMatch8_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch8_reg_next [0:1];  // ufix16_En13 [2]
  wire [15:0] Add6_out1_1;  // ufix16_En13
  reg [15:0] Product3_out1_3;  // ufix16_En15
  reg signed [15:0] reduced_reg_2 [0:1];  // sfix16 [2]
  wire signed [15:0] reduced_reg_next_2 [0:1];  // sfix16_En14 [2]
  wire signed [15:0] Subtract3_out1_4;  // sfix16_En14
  wire signed [16:0] Product4_cast;  // sfix17_En15
  wire signed [32:0] Product4_mul_temp;  // sfix33_En29
  wire signed [31:0] Product4_out1;  // sfix32_En29
  reg signed [31:0] Product4_out1_1;  // sfix32_En29
  wire signed [15:0] Product4_out1_2;  // sfix16_En14
  wire signed [18:0] Add7_sub_cast;  // sfix19_En14
  wire signed [18:0] Add7_sub_cast_1;  // sfix19_En14
  wire signed [18:0] Add7_sub_temp;  // sfix19_En14
  wire [15:0] Add7_out1;  // ufix16_En13
  reg [15:0] delayMatch10_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch10_reg_next [0:1];  // ufix16_En13 [2]
  wire [15:0] Add7_out1_1;  // ufix16_En13
  reg signed [15:0] Product4_out1_3;  // sfix16_En14
  reg signed [15:0] reduced_reg_3 [0:1];  // sfix16 [2]
  wire signed [15:0] reduced_reg_next_3 [0:1];  // sfix16_En14 [2]
  wire signed [15:0] Subtract3_out1_5;  // sfix16_En14
  wire signed [31:0] Product5_out1;  // sfix32_En28
  reg signed [31:0] Product5_out1_1;  // sfix32_En28
  wire [15:0] Product5_out1_2;  // ufix16_En15
  wire [18:0] Add8_add_cast;  // ufix19_En15
  wire [18:0] Add8_add_cast_1;  // ufix19_En15
  wire [18:0] Add8_add_temp;  // ufix19_En15
  wire [15:0] Add8_out1;  // ufix16_En13
  reg [15:0] delayMatch12_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch12_reg_next [0:1];  // ufix16_En13 [2]
  wire [15:0] Add8_out1_1;  // ufix16_En13
  reg [15:0] Product5_out1_3;  // ufix16_En15
  reg signed [15:0] reduced_reg_4 [0:1];  // sfix16 [2]
  wire signed [15:0] reduced_reg_next_4 [0:1];  // sfix16_En14 [2]
  wire signed [15:0] Subtract3_out1_6;  // sfix16_En14
  wire signed [16:0] Product6_cast;  // sfix17_En15
  wire signed [32:0] Product6_mul_temp;  // sfix33_En29
  wire signed [31:0] Product6_out1;  // sfix32_En29
  reg signed [31:0] Product6_out1_1;  // sfix32_En29
  wire signed [15:0] Product6_out1_2;  // sfix16_En14
  wire signed [18:0] Add9_sub_cast;  // sfix19_En14
  wire signed [18:0] Add9_sub_cast_1;  // sfix19_En14
  wire signed [18:0] Add9_sub_temp;  // sfix19_En14
  wire [15:0] Add9_out1;  // ufix16_En12
  reg [15:0] delayMatch14_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch14_reg_next [0:1];  // ufix16_En12 [2]
  wire [15:0] Add9_out1_1;  // ufix16_En12
  reg signed [15:0] Product6_out1_3;  // sfix16_En14
  reg signed [15:0] reduced_reg_5 [0:1];  // sfix16 [2]
  wire signed [15:0] reduced_reg_next_5 [0:1];  // sfix16_En14 [2]
  wire signed [15:0] Subtract3_out1_7;  // sfix16_En14
  wire signed [31:0] Product7_out1;  // sfix32_En28
  reg signed [31:0] Product7_out1_1;  // sfix32_En28
  wire [15:0] Product7_out1_2;  // ufix16_En15
  wire [19:0] Add10_add_cast;  // ufix20_En15
  wire [19:0] Add10_add_cast_1;  // ufix20_En15
  wire [19:0] Add10_add_temp;  // ufix20_En15
  wire [15:0] Add10_out1;  // ufix16_En12
  reg [15:0] delayMatch16_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch16_reg_next [0:1];  // ufix16_En12 [2]
  wire [15:0] Add10_out1_1;  // ufix16_En12
  reg [15:0] Product7_out1_3;  // ufix16_En15
  reg signed [15:0] reduced_reg_6 [0:1];  // sfix16 [2]
  wire signed [15:0] reduced_reg_next_6 [0:1];  // sfix16_En14 [2]
  wire signed [15:0] Subtract3_out1_8;  // sfix16_En14
  wire signed [16:0] Product8_cast;  // sfix17_En15
  wire signed [32:0] Product8_mul_temp;  // sfix33_En29
  wire signed [31:0] Product8_out1;  // sfix32_En29
  reg signed [31:0] Product8_out1_1;  // sfix32_En29
  wire signed [15:0] Product8_out1_2;  // sfix16_En14
  wire signed [19:0] Add11_sub_cast;  // sfix20_En14
  wire signed [19:0] Add11_sub_cast_1;  // sfix20_En14
  wire signed [19:0] Add11_sub_temp;  // sfix20_En14
  wire [15:0] Add11_out1;  // ufix16_En12
  reg [15:0] delayMatch18_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch18_reg_next [0:1];  // ufix16_En12 [2]
  wire [15:0] Add11_out1_1;  // ufix16_En12
  reg signed [15:0] Product8_out1_3;  // sfix16_En14
  reg signed [15:0] reduced_reg_7 [0:1];  // sfix16 [2]
  wire signed [15:0] reduced_reg_next_7 [0:1];  // sfix16_En14 [2]
  wire signed [15:0] Subtract3_out1_9;  // sfix16_En14
  wire signed [31:0] Product9_out1;  // sfix32_En28
  reg signed [31:0] Product9_out1_1;  // sfix32_En28
  wire [15:0] Product9_out1_2;  // ufix16_En15
  wire [19:0] Add12_add_cast;  // ufix20_En15
  wire [19:0] Add12_add_cast_1;  // ufix20_En15
  wire [19:0] Add12_add_temp;  // ufix20_En15
  wire [15:0] Add12_out1;  // ufix16_En12
  reg [15:0] Product9_out1_3;  // ufix16_En15
  reg signed [15:0] reduced_reg_8 [0:1];  // sfix16 [2]
  wire signed [15:0] reduced_reg_next_8 [0:1];  // sfix16_En14 [2]
  wire signed [15:0] Subtract3_out1_10;  // sfix16_En14
  wire signed [16:0] Product10_cast;  // sfix17_En15
  wire signed [32:0] Product10_mul_temp;  // sfix33_En29
  wire signed [31:0] Product10_out1;  // sfix32_En29
  reg [15:0] delayMatch20_reg [0:1];  // ufix16 [2]
  wire [15:0] delayMatch20_reg_next [0:1];  // ufix16_En12 [2]
  wire [15:0] Add12_out1_1;  // ufix16_En12
  reg signed [31:0] Product10_out1_1;  // sfix32_En29
  wire signed [15:0] Product10_out1_2;  // sfix16_En14
  wire signed [19:0] Add13_sub_cast;  // sfix20_En14
  wire signed [19:0] Add13_sub_cast_1;  // sfix20_En14
  wire signed [19:0] Add13_sub_temp;  // sfix20_En14
  wire [15:0] Add13_out1;  // ufix16_En12
  reg [15:0] Add13_out1_1;  // ufix16_En12
  wire signed [16:0] Product25_cast;  // sfix17_En12
  wire signed [32:0] Product25_mul_temp;  // sfix33_En27
  wire signed [31:0] Product25_cast_1;  // sfix32_En27
  wire signed [15:0] Product25_out1;  // sfix16_En15
  reg signed [15:0] Product25_out1_1;  // sfix16_En15
  wire [15:0] Constant3_out1;  // ufix16_En15
  reg signed [15:0] reduced_reg_9 [0:24];  // sfix16 [25]
  wire signed [15:0] reduced_reg_next_9 [0:24];  // sfix16_En14 [25]
  wire signed [15:0] Complex_to_Real_Imag1_out2_1;  // sfix16_En14
  wire switch_compare_1_7;
  wire signed [15:0] Constant8_out1;  // sfix16_En13
  wire [15:0] Constant7_out1;  // ufix16_En14
  wire signed [15:0] Constant6_out1;  // sfix16_En14
  wire signed [7:0] Product25_out1_dtc;  // sfix8_En5
  wire signed [17:0] Add5_sub_cast;  // sfix18_En15
  wire signed [17:0] Add5_sub_cast_1;  // sfix18_En15
  wire signed [17:0] Add5_sub_temp;  // sfix18_En15
  wire [15:0] Add5_out1;  // ufix16_En14
  wire signed [7:0] Add5_out1_dtc;  // sfix8_En5
  wire signed [18:0] Add21_add_cast;  // sfix19_En15
  wire signed [18:0] Add21_add_cast_1;  // sfix19_En15
  wire signed [18:0] Add21_add_temp;  // sfix19_En15
  wire signed [15:0] Add21_out1;  // sfix16_En13
  wire signed [18:0] Add20_add_cast;  // sfix19_En15
  wire signed [18:0] Add20_add_cast_1;  // sfix19_En15
  wire signed [18:0] Add20_add_temp;  // sfix19_En15
  wire [15:0] Add20_out1;  // ufix16_En14
  wire signed [15:0] Add20_out1_dtc;  // sfix16_En13
  wire signed [15:0] Switch_out1;  // sfix16_En13
  wire signed [7:0] Switch_out1_dtc;  // sfix8_En5
  wire signed [17:0] Add19_sub_cast;  // sfix18_En15
  wire signed [17:0] Add19_sub_cast_1;  // sfix18_En15
  wire signed [17:0] Add19_sub_temp;  // sfix18_En15
  wire signed [15:0] Add19_out1;  // sfix16_En13
  wire signed [7:0] Add19_out1_dtc;  // sfix8_En5
  wire signed [7:0] Arctangent_Approximation;  // sfix8_En5



  assign Abs_cast = {in_re_REG[15], in_re_REG};
  assign Abs_y = (in_re_REG < 16'sb0000000000000000 ?  - (Abs_cast) :
              {in_re_REG[15], in_re_REG});
  assign Abs_out1 = {Abs_y[14:0], 1'b0};



  assign Abs1_cast = {in_im_REG[15], in_im_REG};
  assign Abs1_y = (in_im_REG < 16'sb0000000000000000 ?  - (Abs1_cast) :
              {in_im_REG[15], in_im_REG});
  assign Abs1_out1 = {Abs1_y[14:0], 1'b0};



  assign Relational_Operator_relop1 = Abs_out1 < Abs1_out1;



  assign switch_compare_1 = Relational_Operator_relop1 > 1'b0;



  assign Abs1_out1_dtc = ({4'b0, Abs1_out1[15:4]}) + Abs1_out1[3];



  assign Abs_out1_dtc = ({4'b0, Abs_out1[15:4]}) + Abs_out1[3];



  assign Switch6_out1 = (switch_compare_1 == 1'b0 ? Abs1_out1_dtc :
              Abs_out1_dtc);


always @(posedge clk)
    begin : reduced_process
      if (reset_x == 1'b1) begin
        in_re_REG <= 16'b0;
        in_im_REG <= 16'b0;
        magnitude_REG <= 16'b0;
        alpha_arctangen_REG <= 8'b0;
      Switch6_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          in_re_REG <= in_re;
          in_im_REG <=  in_im;
          magnitude_REG <= Magnitude_Approximation_1;
          alpha_arctangen_REG <= Arctangent_Approximation;
    Switch6_out1_1 <= Switch6_out1;
        end
      end
    end



  assign Relational_Operator6_relop1 = Abs_out1 > Abs1_out1;



  assign switch_compare_1_1 = Relational_Operator6_relop1 > 1'b0;



  assign Abs1_out1_dtc_1 = ({5'b0, Abs1_out1[15:5]}) + Abs1_out1[4];



  assign Abs_out1_dtc_1 = ({5'b0, Abs_out1[15:5]}) + Abs_out1[4];



  assign Switch5_out1 = (switch_compare_1_1 == 1'b0 ? Abs1_out1_dtc_1 :
              Abs_out1_dtc_1);



  always @(posedge clk)
    begin : reduced_1_process
      if (reset_x == 1'b1) begin
        Switch5_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Switch5_out1_1 <= Switch5_out1;
        end
      end
    end



  assign Constant14_out1 = 16'b0000011010100001;



  always @(posedge clk)
    begin : HwModeRegister5_process
      if (reset_x == 1'b1) begin
        Constant14_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Constant14_out1_1 <= Constant14_out1;
        end
      end
    end



  assign Product11_out1 = Switch5_out1_1 * Constant14_out1_1;



  assign Constant17_out1 = 16'b0000011010111000;



  always @(posedge clk)
    begin : HwModeRegister13_process
      if (reset_x == 1'b1) begin
        Constant17_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Constant17_out1_1 <= Constant17_out1;
        end
      end
    end



  assign Product15_out1 = Switch5_out1_1 * Constant17_out1_1;



  assign Constant16_out1 = 16'b0000010001111101;



  always @(posedge clk)
    begin : HwModeRegister11_process
      if (reset_x == 1'b1) begin
        Constant16_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Constant16_out1_1 <= Constant16_out1;
        end
      end
    end



  assign Product14_out1 = Switch6_out1_1 * Constant16_out1_1;



  assign Constant4_out1 = 16'b0000011111101100;



  always @(posedge clk)
    begin : HwModeRegister6_process
      if (reset_x == 1'b1) begin
        Constant4_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Constant4_out1_1 <= Constant4_out1;
        end
      end
    end



  assign Product12_out1 = Constant4_out1_1 * Switch5_out1_1;



  assign Constant15_out1 = 16'b0000011001001110;



  always @(posedge clk)
    begin : HwModeRegister9_process
      if (reset_x == 1'b1) begin
        Constant15_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Constant15_out1_1 <= Constant15_out1;
        end
      end
    end



  assign Product13_out1 = Switch6_out1_1 * Constant15_out1_1;



  always @(posedge clk)
    begin : reduced_2_process
      if (reset_x == 1'b1) begin
        Switch6_out1_2 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Switch6_out1_2 <= Switch6_out1_1;
        end
      end
    end



  always @(posedge clk)
    begin : PipelineRegister2_process
      if (reset_x == 1'b1) begin
        Product11_out1_1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product11_out1_1 <= Product11_out1;
        end
      end
    end



  assign Product11_out1_2 = Product11_out1_1[25:10] + Product11_out1_1[9];



  assign Relational_Operator7_1_cast = {Switch6_out1_2, 1'b0};
  assign Relational_Operator7_1_cast_1 = {1'b0, Product11_out1_2};
  assign Relational_Operator7_relop1 = Relational_Operator7_1_cast < Relational_Operator7_1_cast_1;



  assign switch_compare_1_2 = Relational_Operator7_relop1 == 1'b1;



  always @(posedge clk)
    begin : PipelineRegister6_process
      if (reset_x == 1'b1) begin
        Product15_out1_1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product15_out1_1 <= Product15_out1;
        end
      end
    end



  assign Product15_out1_2 = Product15_out1_1[25:10] + Product15_out1_1[9];



  always @(posedge clk)
    begin : PipelineRegister5_process
      if (reset_x == 1'b1) begin
        Product14_out1_1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product14_out1_1 <= Product14_out1;
        end
      end
    end



  assign Product14_out1_2 = Product14_out1_1[25:10] + Product14_out1_1[9];



  assign Add15_add_cast = {1'b0, {Product15_out1_2, 1'b0}};
  assign Add15_add_cast_1 = {2'b0, Product14_out1_2};
  assign Add15_add_temp = Add15_add_cast + Add15_add_cast_1;
  assign Add15_out1 = Add15_add_temp[17:2] + Add15_add_temp[1];



  assign Add15_out1_dtc = {Add15_out1[11:0], 4'b0000};



  always @(posedge clk)
    begin : PipelineRegister3_process
      if (reset_x == 1'b1) begin
        Product12_out1_1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product12_out1_1 <= Product12_out1;
        end
      end
    end



  assign Product12_out1_2 = Product12_out1_1[26:11] + Product12_out1_1[10];



  always @(posedge clk)
    begin : PipelineRegister4_process
      if (reset_x == 1'b1) begin
        Product13_out1_1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product13_out1_1 <= Product13_out1;
        end
      end
    end



  assign Product13_out1_2 = Product13_out1_1[25:10] + Product13_out1_1[9];



  assign Add14_add_cast = {1'b0, {Product12_out1_2, 4'b0000}};
  assign Add14_add_cast_1 = {5'b0, Product13_out1_2};
  assign Add14_add_temp = Add14_add_cast + Add14_add_cast_1;
  assign Add14_out1 = Add14_add_temp[19:4] + Add14_add_temp[3];



  assign Add14_out1_dtc = {Add14_out1[11:0], 4'b0000};



  assign Magnitude_Approximation = (switch_compare_1_2 == 1'b0 ? Add15_out1_dtc :
              Add14_out1_dtc);



  always @(posedge clk)
    begin : delayMatch24_process
      if (reset_x == 1'b1) begin
        delayMatch24_reg[0] <= 16'b0000000000000000;
        delayMatch24_reg[1] <= 16'b0000000000000000;
        delayMatch24_reg[2] <= 16'b0000000000000000;
        delayMatch24_reg[3] <= 16'b0000000000000000;
        delayMatch24_reg[4] <= 16'b0000000000000000;
        delayMatch24_reg[5] <= 16'b0000000000000000;
        delayMatch24_reg[6] <= 16'b0000000000000000;
        delayMatch24_reg[7] <= 16'b0000000000000000;
        delayMatch24_reg[8] <= 16'b0000000000000000;
        delayMatch24_reg[9] <= 16'b0000000000000000;
        delayMatch24_reg[10] <= 16'b0000000000000000;
        delayMatch24_reg[11] <= 16'b0000000000000000;
        delayMatch24_reg[12] <= 16'b0000000000000000;
        delayMatch24_reg[13] <= 16'b0000000000000000;
        delayMatch24_reg[14] <= 16'b0000000000000000;
        delayMatch24_reg[15] <= 16'b0000000000000000;
        delayMatch24_reg[16] <= 16'b0000000000000000;
        delayMatch24_reg[17] <= 16'b0000000000000000;
        delayMatch24_reg[18] <= 16'b0000000000000000;
        delayMatch24_reg[19] <= 16'b0000000000000000;
        delayMatch24_reg[20] <= 16'b0000000000000000;
        delayMatch24_reg[21] <= 16'b0000000000000000;
        delayMatch24_reg[22] <= 16'b0000000000000000;
        delayMatch24_reg[23] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch24_reg[0] <= delayMatch24_reg_next[0];
          delayMatch24_reg[1] <= delayMatch24_reg_next[1];
          delayMatch24_reg[2] <= delayMatch24_reg_next[2];
          delayMatch24_reg[3] <= delayMatch24_reg_next[3];
          delayMatch24_reg[4] <= delayMatch24_reg_next[4];
          delayMatch24_reg[5] <= delayMatch24_reg_next[5];
          delayMatch24_reg[6] <= delayMatch24_reg_next[6];
          delayMatch24_reg[7] <= delayMatch24_reg_next[7];
          delayMatch24_reg[8] <= delayMatch24_reg_next[8];
          delayMatch24_reg[9] <= delayMatch24_reg_next[9];
          delayMatch24_reg[10] <= delayMatch24_reg_next[10];
          delayMatch24_reg[11] <= delayMatch24_reg_next[11];
          delayMatch24_reg[12] <= delayMatch24_reg_next[12];
          delayMatch24_reg[13] <= delayMatch24_reg_next[13];
          delayMatch24_reg[14] <= delayMatch24_reg_next[14];
          delayMatch24_reg[15] <= delayMatch24_reg_next[15];
          delayMatch24_reg[16] <= delayMatch24_reg_next[16];
          delayMatch24_reg[17] <= delayMatch24_reg_next[17];
          delayMatch24_reg[18] <= delayMatch24_reg_next[18];
          delayMatch24_reg[19] <= delayMatch24_reg_next[19];
          delayMatch24_reg[20] <= delayMatch24_reg_next[20];
          delayMatch24_reg[21] <= delayMatch24_reg_next[21];
          delayMatch24_reg[22] <= delayMatch24_reg_next[22];
          delayMatch24_reg[23] <= delayMatch24_reg_next[23];
        end
      end
    end

  assign Magnitude_Approximation_1 = delayMatch24_reg[23];
  assign delayMatch24_reg_next[0] = Magnitude_Approximation;
  assign delayMatch24_reg_next[1] = delayMatch24_reg[0];
  assign delayMatch24_reg_next[2] = delayMatch24_reg[1];
  assign delayMatch24_reg_next[3] = delayMatch24_reg[2];
  assign delayMatch24_reg_next[4] = delayMatch24_reg[3];
  assign delayMatch24_reg_next[5] = delayMatch24_reg[4];
  assign delayMatch24_reg_next[6] = delayMatch24_reg[5];
  assign delayMatch24_reg_next[7] = delayMatch24_reg[6];
  assign delayMatch24_reg_next[8] = delayMatch24_reg[7];
  assign delayMatch24_reg_next[9] = delayMatch24_reg[8];
  assign delayMatch24_reg_next[10] = delayMatch24_reg[9];
  assign delayMatch24_reg_next[11] = delayMatch24_reg[10];
  assign delayMatch24_reg_next[12] = delayMatch24_reg[11];
  assign delayMatch24_reg_next[13] = delayMatch24_reg[12];
  assign delayMatch24_reg_next[14] = delayMatch24_reg[13];
  assign delayMatch24_reg_next[15] = delayMatch24_reg[14];
  assign delayMatch24_reg_next[16] = delayMatch24_reg[15];
  assign delayMatch24_reg_next[17] = delayMatch24_reg[16];
  assign delayMatch24_reg_next[18] = delayMatch24_reg[17];
  assign delayMatch24_reg_next[19] = delayMatch24_reg[18];
  assign delayMatch24_reg_next[20] = delayMatch24_reg[19];
  assign delayMatch24_reg_next[21] = delayMatch24_reg[20];
  assign delayMatch24_reg_next[22] = delayMatch24_reg[21];
  assign delayMatch24_reg_next[23] = delayMatch24_reg[22];



  assign magnitude = magnitude_REG;

  assign Add22_sub_cast = {1'b0, Abs1_out1};
  assign Add22_sub_cast_1 = {1'b0, Abs_out1};
  assign Add22_sub_temp = Add22_sub_cast - Add22_sub_cast_1;
  assign Add22_out1 = Add22_sub_temp[16:1] + $signed({1'b0, Add22_sub_temp[0]});



  assign Constant13_out1 = 16'sb0000000000000000;



  assign Constant12_out1 = 16'sb0000000000000000;



  assign Relational_Operator4_1_cast = {{10{in_im[15]}}, in_im};
  assign Relational_Operator4_1_cast_1 = {Constant12_out1, 10'b0000000000};
  assign Relational_Operator4_relop1 = Relational_Operator4_1_cast > Relational_Operator4_1_cast_1;



  assign Constant11_out1 = 16'sb0000000000000000;



  assign Relational_Operator3_1_cast = {{10{Add22_out1[15]}}, Add22_out1};
  assign Relational_Operator3_1_cast_1 = {Constant11_out1, 10'b0000000000};
  assign Relational_Operator3_relop1 = Relational_Operator3_1_cast >= Relational_Operator3_1_cast_1;



  assign Logical_Operator1_out1 = Relational_Operator4_relop1 & Relational_Operator3_relop1;



  assign switch_compare_1_3 = Logical_Operator1_out1 == 1'b1;



  assign Constant9_out1 = 16'sb0000000000000000;



  assign Relational_Operator2_1_cast = {{10{in_re[15]}}, in_re};
  assign Relational_Operator2_1_cast_1 = {Constant9_out1, 10'b0000000000};
  assign Relational_Operator2_relop1 = Relational_Operator2_1_cast > Relational_Operator2_1_cast_1;



  assign Constant18_out1 = 16'sb0000000000000000;



  assign Relational_Operator1_1_cast = {{10{Add22_out1[15]}}, Add22_out1};
  assign Relational_Operator1_1_cast_1 = {Constant18_out1, 10'b0000000000};
  assign Relational_Operator1_relop1 = Relational_Operator1_1_cast < Relational_Operator1_1_cast_1;



  assign Logical_Operator_out1 = Relational_Operator2_relop1 & Relational_Operator1_relop1;



  assign switch_compare_1_4 = Logical_Operator_out1 == 1'b1;



  assign Relational_Operator5_1_cast = {{10{Add22_out1[15]}}, Add22_out1};
  assign Relational_Operator5_1_cast_1 = {Constant13_out1, 10'b0000000000};
  assign Relational_Operator5_relop1 = Relational_Operator5_1_cast < Relational_Operator5_1_cast_1;



  assign switch_compare_1_5 = Relational_Operator5_relop1 == 1'b1;



  assign Constant10_out1 = 16'b1000000000000000;



  assign Constant21_out1 = 16'b1000000000000000;



  assign Constant21_out1_dtc = ({1'b0, Constant21_out1[15:1]}) + Constant21_out1[0];



  assign Switch2_out1 = (switch_compare_1_3 == 1'b0 ? Constant10_out1 :
              Constant21_out1_dtc);



  assign Constant20_out1 = 16'b1100000000000000;



  assign Constant19_out1 = 16'b1000000000000000;



  assign Constant19_out1_dtc = ({1'b0, Constant19_out1[15:1]}) + Constant19_out1[0];



  assign Switch4_out1 = (switch_compare_1_4 == 1'b0 ? Constant20_out1 :
              Constant19_out1_dtc);



  assign Switch4_out1_dtc = ({1'b0, Switch4_out1[15:1]}) + Switch4_out1[0];



  assign Switch1_out1 = (switch_compare_1_5 == 1'b0 ? Switch2_out1 :
              Switch4_out1_dtc);



  always @(posedge clk)
    begin : delayMatch23_process
      if (reset_x == 1'b1) begin
        delayMatch23_reg[0] <= 16'b0000000000000000;
        delayMatch23_reg[1] <= 16'b0000000000000000;
        delayMatch23_reg[2] <= 16'b0000000000000000;
        delayMatch23_reg[3] <= 16'b0000000000000000;
        delayMatch23_reg[4] <= 16'b0000000000000000;
        delayMatch23_reg[5] <= 16'b0000000000000000;
        delayMatch23_reg[6] <= 16'b0000000000000000;
        delayMatch23_reg[7] <= 16'b0000000000000000;
        delayMatch23_reg[8] <= 16'b0000000000000000;
        delayMatch23_reg[9] <= 16'b0000000000000000;
        delayMatch23_reg[10] <= 16'b0000000000000000;
        delayMatch23_reg[11] <= 16'b0000000000000000;
        delayMatch23_reg[12] <= 16'b0000000000000000;
        delayMatch23_reg[13] <= 16'b0000000000000000;
        delayMatch23_reg[14] <= 16'b0000000000000000;
        delayMatch23_reg[15] <= 16'b0000000000000000;
        delayMatch23_reg[16] <= 16'b0000000000000000;
        delayMatch23_reg[17] <= 16'b0000000000000000;
        delayMatch23_reg[18] <= 16'b0000000000000000;
        delayMatch23_reg[19] <= 16'b0000000000000000;
        delayMatch23_reg[20] <= 16'b0000000000000000;
        delayMatch23_reg[21] <= 16'b0000000000000000;
        delayMatch23_reg[22] <= 16'b0000000000000000;
        delayMatch23_reg[23] <= 16'b0000000000000000;
        delayMatch23_reg[24] <= 16'b0000000000000000;
        delayMatch23_reg[25] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch23_reg[0] <= delayMatch23_reg_next[0];
          delayMatch23_reg[1] <= delayMatch23_reg_next[1];
          delayMatch23_reg[2] <= delayMatch23_reg_next[2];
          delayMatch23_reg[3] <= delayMatch23_reg_next[3];
          delayMatch23_reg[4] <= delayMatch23_reg_next[4];
          delayMatch23_reg[5] <= delayMatch23_reg_next[5];
          delayMatch23_reg[6] <= delayMatch23_reg_next[6];
          delayMatch23_reg[7] <= delayMatch23_reg_next[7];
          delayMatch23_reg[8] <= delayMatch23_reg_next[8];
          delayMatch23_reg[9] <= delayMatch23_reg_next[9];
          delayMatch23_reg[10] <= delayMatch23_reg_next[10];
          delayMatch23_reg[11] <= delayMatch23_reg_next[11];
          delayMatch23_reg[12] <= delayMatch23_reg_next[12];
          delayMatch23_reg[13] <= delayMatch23_reg_next[13];
          delayMatch23_reg[14] <= delayMatch23_reg_next[14];
          delayMatch23_reg[15] <= delayMatch23_reg_next[15];
          delayMatch23_reg[16] <= delayMatch23_reg_next[16];
          delayMatch23_reg[17] <= delayMatch23_reg_next[17];
          delayMatch23_reg[18] <= delayMatch23_reg_next[18];
          delayMatch23_reg[19] <= delayMatch23_reg_next[19];
          delayMatch23_reg[20] <= delayMatch23_reg_next[20];
          delayMatch23_reg[21] <= delayMatch23_reg_next[21];
          delayMatch23_reg[22] <= delayMatch23_reg_next[22];
          delayMatch23_reg[23] <= delayMatch23_reg_next[23];
          delayMatch23_reg[24] <= delayMatch23_reg_next[24];
          delayMatch23_reg[25] <= delayMatch23_reg_next[25];
        end
      end
    end

  assign Switch1_out1_1 = delayMatch23_reg[25];
  assign delayMatch23_reg_next[0] = Switch1_out1;
  assign delayMatch23_reg_next[1] = delayMatch23_reg[0];
  assign delayMatch23_reg_next[2] = delayMatch23_reg[1];
  assign delayMatch23_reg_next[3] = delayMatch23_reg[2];
  assign delayMatch23_reg_next[4] = delayMatch23_reg[3];
  assign delayMatch23_reg_next[5] = delayMatch23_reg[4];
  assign delayMatch23_reg_next[6] = delayMatch23_reg[5];
  assign delayMatch23_reg_next[7] = delayMatch23_reg[6];
  assign delayMatch23_reg_next[8] = delayMatch23_reg[7];
  assign delayMatch23_reg_next[9] = delayMatch23_reg[8];
  assign delayMatch23_reg_next[10] = delayMatch23_reg[9];
  assign delayMatch23_reg_next[11] = delayMatch23_reg[10];
  assign delayMatch23_reg_next[12] = delayMatch23_reg[11];
  assign delayMatch23_reg_next[13] = delayMatch23_reg[12];
  assign delayMatch23_reg_next[14] = delayMatch23_reg[13];
  assign delayMatch23_reg_next[15] = delayMatch23_reg[14];
  assign delayMatch23_reg_next[16] = delayMatch23_reg[15];
  assign delayMatch23_reg_next[17] = delayMatch23_reg[16];
  assign delayMatch23_reg_next[18] = delayMatch23_reg[17];
  assign delayMatch23_reg_next[19] = delayMatch23_reg[18];
  assign delayMatch23_reg_next[20] = delayMatch23_reg[19];
  assign delayMatch23_reg_next[21] = delayMatch23_reg[20];
  assign delayMatch23_reg_next[22] = delayMatch23_reg[21];
  assign delayMatch23_reg_next[23] = delayMatch23_reg[22];
  assign delayMatch23_reg_next[24] = delayMatch23_reg[23];
  assign delayMatch23_reg_next[25] = delayMatch23_reg[24];



  assign switch_compare_1_6 = Switch1_out1_1 >= 16'b0010000000000000;



  assign k0 = 16'b0010000000000000;



  assign Switch1_out1_zp = (switch_compare_1_6 == 1'b0 ? k0 :
              Switch1_out1_1);



  always @(posedge clk)
    begin : reduced_3_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Complex_to_Real_Imag1_out1 <= in_re;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_4_process
      if (reset_x == 1'b1) begin
        Complex_to_Real_Imag1_out2 <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Complex_to_Real_Imag1_out2 <= in_im;
        end
      end
    end



  assign Product22_out1 = Complex_to_Real_Imag1_out1 * Complex_to_Real_Imag1_out2;



  always @(posedge clk)
    begin : PipelineRegister9_process
      if (reset_x == 1'b1) begin
        Product22_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product22_out1_1 <= Product22_out1;
        end
      end
    end



  assign Product22_out1_2 = Product22_out1_1[28:13] + $signed({1'b0, Product22_out1_1[12]});



  always @(posedge clk)
    begin : HwModeRegister24_process
      if (reset_x == 1'b1) begin
        HwModeRegister24_reg[0] <= 16'sb0000000000000000;
        HwModeRegister24_reg[1] <= 16'sb0000000000000000;
        HwModeRegister24_reg[2] <= 16'sb0000000000000000;
        HwModeRegister24_reg[3] <= 16'sb0000000000000000;
        HwModeRegister24_reg[4] <= 16'sb0000000000000000;
        HwModeRegister24_reg[5] <= 16'sb0000000000000000;
        HwModeRegister24_reg[6] <= 16'sb0000000000000000;
        HwModeRegister24_reg[7] <= 16'sb0000000000000000;
        HwModeRegister24_reg[8] <= 16'sb0000000000000000;
        HwModeRegister24_reg[9] <= 16'sb0000000000000000;
        HwModeRegister24_reg[10] <= 16'sb0000000000000000;
        HwModeRegister24_reg[11] <= 16'sb0000000000000000;
        HwModeRegister24_reg[12] <= 16'sb0000000000000000;
        HwModeRegister24_reg[13] <= 16'sb0000000000000000;
        HwModeRegister24_reg[14] <= 16'sb0000000000000000;
        HwModeRegister24_reg[15] <= 16'sb0000000000000000;
        HwModeRegister24_reg[16] <= 16'sb0000000000000000;
        HwModeRegister24_reg[17] <= 16'sb0000000000000000;
        HwModeRegister24_reg[18] <= 16'sb0000000000000000;
        HwModeRegister24_reg[19] <= 16'sb0000000000000000;
        HwModeRegister24_reg[20] <= 16'sb0000000000000000;
        HwModeRegister24_reg[21] <= 16'sb0000000000000000;
        HwModeRegister24_reg[22] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          HwModeRegister24_reg[0] <= HwModeRegister24_reg_next[0];
          HwModeRegister24_reg[1] <= HwModeRegister24_reg_next[1];
          HwModeRegister24_reg[2] <= HwModeRegister24_reg_next[2];
          HwModeRegister24_reg[3] <= HwModeRegister24_reg_next[3];
          HwModeRegister24_reg[4] <= HwModeRegister24_reg_next[4];
          HwModeRegister24_reg[5] <= HwModeRegister24_reg_next[5];
          HwModeRegister24_reg[6] <= HwModeRegister24_reg_next[6];
          HwModeRegister24_reg[7] <= HwModeRegister24_reg_next[7];
          HwModeRegister24_reg[8] <= HwModeRegister24_reg_next[8];
          HwModeRegister24_reg[9] <= HwModeRegister24_reg_next[9];
          HwModeRegister24_reg[10] <= HwModeRegister24_reg_next[10];
          HwModeRegister24_reg[11] <= HwModeRegister24_reg_next[11];
          HwModeRegister24_reg[12] <= HwModeRegister24_reg_next[12];
          HwModeRegister24_reg[13] <= HwModeRegister24_reg_next[13];
          HwModeRegister24_reg[14] <= HwModeRegister24_reg_next[14];
          HwModeRegister24_reg[15] <= HwModeRegister24_reg_next[15];
          HwModeRegister24_reg[16] <= HwModeRegister24_reg_next[16];
          HwModeRegister24_reg[17] <= HwModeRegister24_reg_next[17];
          HwModeRegister24_reg[18] <= HwModeRegister24_reg_next[18];
          HwModeRegister24_reg[19] <= HwModeRegister24_reg_next[19];
          HwModeRegister24_reg[20] <= HwModeRegister24_reg_next[20];
          HwModeRegister24_reg[21] <= HwModeRegister24_reg_next[21];
          HwModeRegister24_reg[22] <= HwModeRegister24_reg_next[22];
        end
      end
    end

  assign Product22_out1_3 = HwModeRegister24_reg[22];
  assign HwModeRegister24_reg_next[0] = Product22_out1_2;
  assign HwModeRegister24_reg_next[1] = HwModeRegister24_reg[0];
  assign HwModeRegister24_reg_next[2] = HwModeRegister24_reg[1];
  assign HwModeRegister24_reg_next[3] = HwModeRegister24_reg[2];
  assign HwModeRegister24_reg_next[4] = HwModeRegister24_reg[3];
  assign HwModeRegister24_reg_next[5] = HwModeRegister24_reg[4];
  assign HwModeRegister24_reg_next[6] = HwModeRegister24_reg[5];
  assign HwModeRegister24_reg_next[7] = HwModeRegister24_reg[6];
  assign HwModeRegister24_reg_next[8] = HwModeRegister24_reg[7];
  assign HwModeRegister24_reg_next[9] = HwModeRegister24_reg[8];
  assign HwModeRegister24_reg_next[10] = HwModeRegister24_reg[9];
  assign HwModeRegister24_reg_next[11] = HwModeRegister24_reg[10];
  assign HwModeRegister24_reg_next[12] = HwModeRegister24_reg[11];
  assign HwModeRegister24_reg_next[13] = HwModeRegister24_reg[12];
  assign HwModeRegister24_reg_next[14] = HwModeRegister24_reg[13];
  assign HwModeRegister24_reg_next[15] = HwModeRegister24_reg[14];
  assign HwModeRegister24_reg_next[16] = HwModeRegister24_reg[15];
  assign HwModeRegister24_reg_next[17] = HwModeRegister24_reg[16];
  assign HwModeRegister24_reg_next[18] = HwModeRegister24_reg[17];
  assign HwModeRegister24_reg_next[19] = HwModeRegister24_reg[18];
  assign HwModeRegister24_reg_next[20] = HwModeRegister24_reg[19];
  assign HwModeRegister24_reg_next[21] = HwModeRegister24_reg[20];
  assign HwModeRegister24_reg_next[22] = HwModeRegister24_reg[21];



  assign Constant1_out1 = 16'b1000000000000000;



  assign Product16_out1 = Complex_to_Real_Imag1_out1 * Complex_to_Real_Imag1_out1;



  always @(posedge clk)
    begin : PipelineRegister7_process
      if (reset_x == 1'b1) begin
        Product16_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product16_out1_1 <= Product16_out1;
        end
      end
    end



  assign Product16_out1_2 = Product16_out1_1[28:13] + Product16_out1_1[12];



  assign Product23_out1 = Complex_to_Real_Imag1_out2 * Complex_to_Real_Imag1_out2;



  always @(posedge clk)
    begin : PipelineRegister10_process
      if (reset_x == 1'b1) begin
        Product23_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product23_out1_1 <= Product23_out1;
        end
      end
    end



  assign Product23_out1_2 = Product23_out1_1[28:13] + Product23_out1_1[12];



  always @(posedge clk)
    begin : HwModeRegister22_process
      if (reset_x == 1'b1) begin
        Product23_out1_3 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product23_out1_3 <= Product23_out1_2;
        end
      end
    end



  assign Constant2_out1 = 16'b1001000000000000;



  always @(posedge clk)
    begin : HwModeRegister23_process
      if (reset_x == 1'b1) begin
        Constant2_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Constant2_out1_1 <= Constant2_out1;
        end
      end
    end



  assign Product24_out1 = Product23_out1_3 * Constant2_out1_1;



  always @(posedge clk)
    begin : delayMatch1_process
      if (reset_x == 1'b1) begin
        delayMatch1_reg[0] <= 16'b0000000000000000;
        delayMatch1_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch1_reg[0] <= delayMatch1_reg_next[0];
          delayMatch1_reg[1] <= delayMatch1_reg_next[1];
        end
      end
    end

  assign Product16_out1_3 = delayMatch1_reg[1];
  assign delayMatch1_reg_next[0] = Product16_out1_2;
  assign delayMatch1_reg_next[1] = delayMatch1_reg[0];



  always @(posedge clk)
    begin : PipelineRegister11_process
      if (reset_x == 1'b1) begin
        Product24_out1_1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product24_out1_1 <= Product24_out1;
        end
      end
    end



  assign Product24_out1_2 = Product24_out1_1[30:15] + Product24_out1_1[14];



  assign Add4_add_cast = {1'b0, {Product16_out1_3, 2'b00}};
  assign Add4_add_cast_1 = {3'b0, Product24_out1_2};
  assign Add4_add_temp = Add4_add_cast + Add4_add_cast_1;
  assign Add4_out1 = Add4_add_temp[17:2] + Add4_add_temp[1];



  assign Constant5_out1 = 16'b1000000000000000;



  assign Subtract3_sub_cast = {1'b0, Add4_out1};
  assign Subtract3_sub_cast_1 = {1'b0, Constant5_out1};
  assign Subtract3_sub_temp = Subtract3_sub_cast - Subtract3_sub_cast_1;
  assign Subtract3_out1 = Subtract3_sub_temp[16:1] + $signed({1'b0, Subtract3_sub_temp[0]});



  assign Add1_sub_cast = {2'b0, Constant1_out1};
  assign Add1_sub_cast_1 = {Subtract3_out1[15], {Subtract3_out1, 1'b0}};
  assign Add1_sub_temp = Add1_sub_cast - Add1_sub_cast_1;
  assign Add1_out1 = Add1_sub_temp[16:1];



  always @(posedge clk)
    begin : delayMatch2_process
      if (reset_x == 1'b1) begin
        delayMatch2_reg[0] <= 16'b0000000000000000;
        delayMatch2_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch2_reg[0] <= delayMatch2_reg_next[0];
          delayMatch2_reg[1] <= delayMatch2_reg_next[1];
        end
      end
    end

  assign Add1_out1_1 = delayMatch2_reg[1];
  assign delayMatch2_reg_next[0] = Add1_out1;
  assign delayMatch2_reg_next[1] = delayMatch2_reg[0];



  always @(posedge clk)
    begin : reduced_5_process
      if (reset_x == 1'b1) begin
        Subtract3_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Subtract3_out1_1 <= Subtract3_out1;
        end
      end
    end



  assign Product2_out1 = Subtract3_out1_1 * Subtract3_out1_1;



  always @(posedge clk)
    begin : PipelineRegister8_process
      if (reset_x == 1'b1) begin
        Product2_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product2_out1_1 <= Product2_out1;
        end
      end
    end



  assign Product2_out1_2 = Product2_out1_1[28:13] + Product2_out1_1[12];



  assign Add2_add_cast = {1'b0, {Add1_out1_1, 1'b0}};
  assign Add2_add_cast_1 = {2'b0, Product2_out1_2};
  assign Add2_add_temp = Add2_add_cast + Add2_add_cast_1;
  assign Add2_out1 = Add2_add_temp[16:1] + Add2_add_temp[0];



  always @(posedge clk)
    begin : delayMatch4_process
      if (reset_x == 1'b1) begin
        delayMatch4_reg[0] <= 16'b0000000000000000;
        delayMatch4_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch4_reg[0] <= delayMatch4_reg_next[0];
          delayMatch4_reg[1] <= delayMatch4_reg_next[1];
        end
      end
    end

  assign Add2_out1_1 = delayMatch4_reg[1];
  assign delayMatch4_reg_next[0] = Add2_out1;
  assign delayMatch4_reg_next[1] = delayMatch4_reg[0];



  always @(posedge clk)
    begin : HwModeRegister_process
      if (reset_x == 1'b1) begin
        Product2_out1_3 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product2_out1_3 <= Product2_out1_2;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_6_process
      if (reset_x == 1'b1) begin
        reduced_reg[0] <= 16'sb0000000000000000;
        reduced_reg[1] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg[0] <= reduced_reg_next[0];
          reduced_reg[1] <= reduced_reg_next[1];
        end
      end
    end

  assign Subtract3_out1_2 = reduced_reg[1];
  assign reduced_reg_next[0] = Subtract3_out1_1;
  assign reduced_reg_next[1] = reduced_reg[0];



  assign Product1_cast = {1'b0, Product2_out1_3};
  assign Product1_mul_temp = Product1_cast * Subtract3_out1_2;
  assign Product1_out1 = Product1_mul_temp[31:0];



  always @(posedge clk)
    begin : PipelineRegister_process
      if (reset_x == 1'b1) begin
        Product1_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product1_out1_1 <= Product1_out1;
        end
      end
    end



  assign Product1_out1_2 = Product1_out1_1[30:15] + $signed({1'b0, Product1_out1_1[14]});



  assign Add3_sub_cast = {2'b0, Add2_out1_1};
  assign Add3_sub_cast_1 = {{2{Product1_out1_2[15]}}, Product1_out1_2};
  assign Add3_sub_temp = Add3_sub_cast - Add3_sub_cast_1;
  assign Add3_out1 = Add3_sub_temp[16:1];



  always @(posedge clk)
    begin : delayMatch6_process
      if (reset_x == 1'b1) begin
        delayMatch6_reg[0] <= 16'b0000000000000000;
        delayMatch6_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch6_reg[0] <= delayMatch6_reg_next[0];
          delayMatch6_reg[1] <= delayMatch6_reg_next[1];
        end
      end
    end

  assign Add3_out1_1 = delayMatch6_reg[1];
  assign delayMatch6_reg_next[0] = Add3_out1;
  assign delayMatch6_reg_next[1] = delayMatch6_reg[0];



  always @(posedge clk)
    begin : HwModeRegister26_process
      if (reset_x == 1'b1) begin
        Product1_out1_3 <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product1_out1_3 <= Product1_out1_2;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_7_process
      if (reset_x == 1'b1) begin
        reduced_reg_1[0] <= 16'sb0000000000000000;
        reduced_reg_1[1] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg_1[0] <= reduced_reg_next_1[0];
          reduced_reg_1[1] <= reduced_reg_next_1[1];
        end
      end
    end

  assign Subtract3_out1_3 = reduced_reg_1[1];
  assign reduced_reg_next_1[0] = Subtract3_out1_2;
  assign reduced_reg_next_1[1] = reduced_reg_1[0];



  assign Product3_out1 = Product1_out1_3 * Subtract3_out1_3;



  always @(posedge clk)
    begin : PipelineRegister13_process
      if (reset_x == 1'b1) begin
        Product3_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product3_out1_1 <= Product3_out1;
        end
      end
    end



  assign Product3_out1_2 = Product3_out1_1[28:13] + Product3_out1_1[12];



  assign Add6_add_cast = {1'b0, {Add3_out1_1, 2'b00}};
  assign Add6_add_cast_1 = {3'b0, Product3_out1_2};
  assign Add6_add_temp = Add6_add_cast + Add6_add_cast_1;
  assign Add6_out1 = Add6_add_temp[17:2] + Add6_add_temp[1];



  always @(posedge clk)
    begin : delayMatch8_process
      if (reset_x == 1'b1) begin
        delayMatch8_reg[0] <= 16'b0000000000000000;
        delayMatch8_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch8_reg[0] <= delayMatch8_reg_next[0];
          delayMatch8_reg[1] <= delayMatch8_reg_next[1];
        end
      end
    end

  assign Add6_out1_1 = delayMatch8_reg[1];
  assign delayMatch8_reg_next[0] = Add6_out1;
  assign delayMatch8_reg_next[1] = delayMatch8_reg[0];



  always @(posedge clk)
    begin : HwModeRegister28_process
      if (reset_x == 1'b1) begin
        Product3_out1_3 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product3_out1_3 <= Product3_out1_2;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_8_process
      if (reset_x == 1'b1) begin
        reduced_reg_2[0] <= 16'sb0000000000000000;
        reduced_reg_2[1] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg_2[0] <= reduced_reg_next_2[0];
          reduced_reg_2[1] <= reduced_reg_next_2[1];
        end
      end
    end

  assign Subtract3_out1_4 = reduced_reg_2[1];
  assign reduced_reg_next_2[0] = Subtract3_out1_3;
  assign reduced_reg_next_2[1] = reduced_reg_2[0];



  assign Product4_cast = {1'b0, Product3_out1_3};
  assign Product4_mul_temp = Product4_cast * Subtract3_out1_4;
  assign Product4_out1 = Product4_mul_temp[31:0];



  always @(posedge clk)
    begin : PipelineRegister14_process
      if (reset_x == 1'b1) begin
        Product4_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product4_out1_1 <= Product4_out1;
        end
      end
    end



  assign Product4_out1_2 = Product4_out1_1[30:15] + $signed({1'b0, Product4_out1_1[14]});



  assign Add7_sub_cast = {2'b0, {Add6_out1_1, 1'b0}};
  assign Add7_sub_cast_1 = {{3{Product4_out1_2[15]}}, Product4_out1_2};
  assign Add7_sub_temp = Add7_sub_cast - Add7_sub_cast_1;
  assign Add7_out1 = Add7_sub_temp[16:1];



  always @(posedge clk)
    begin : delayMatch10_process
      if (reset_x == 1'b1) begin
        delayMatch10_reg[0] <= 16'b0000000000000000;
        delayMatch10_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch10_reg[0] <= delayMatch10_reg_next[0];
          delayMatch10_reg[1] <= delayMatch10_reg_next[1];
        end
      end
    end

  assign Add7_out1_1 = delayMatch10_reg[1];
  assign delayMatch10_reg_next[0] = Add7_out1;
  assign delayMatch10_reg_next[1] = delayMatch10_reg[0];



  always @(posedge clk)
    begin : HwModeRegister30_process
      if (reset_x == 1'b1) begin
        Product4_out1_3 <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product4_out1_3 <= Product4_out1_2;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_9_process
      if (reset_x == 1'b1) begin
        reduced_reg_3[0] <= 16'sb0000000000000000;
        reduced_reg_3[1] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg_3[0] <= reduced_reg_next_3[0];
          reduced_reg_3[1] <= reduced_reg_next_3[1];
        end
      end
    end

  assign Subtract3_out1_5 = reduced_reg_3[1];
  assign reduced_reg_next_3[0] = Subtract3_out1_4;
  assign reduced_reg_next_3[1] = reduced_reg_3[0];



  assign Product5_out1 = Product4_out1_3 * Subtract3_out1_5;



  always @(posedge clk)
    begin : PipelineRegister15_process
      if (reset_x == 1'b1) begin
        Product5_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product5_out1_1 <= Product5_out1;
        end
      end
    end



  assign Product5_out1_2 = Product5_out1_1[28:13] + Product5_out1_1[12];



  assign Add8_add_cast = {1'b0, {Add7_out1_1, 2'b00}};
  assign Add8_add_cast_1 = {3'b0, Product5_out1_2};
  assign Add8_add_temp = Add8_add_cast + Add8_add_cast_1;
  assign Add8_out1 = Add8_add_temp[17:2] + Add8_add_temp[1];



  always @(posedge clk)
    begin : delayMatch12_process
      if (reset_x == 1'b1) begin
        delayMatch12_reg[0] <= 16'b0000000000000000;
        delayMatch12_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch12_reg[0] <= delayMatch12_reg_next[0];
          delayMatch12_reg[1] <= delayMatch12_reg_next[1];
        end
      end
    end

  assign Add8_out1_1 = delayMatch12_reg[1];
  assign delayMatch12_reg_next[0] = Add8_out1;
  assign delayMatch12_reg_next[1] = delayMatch12_reg[0];



  always @(posedge clk)
    begin : HwModeRegister32_process
      if (reset_x == 1'b1) begin
        Product5_out1_3 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product5_out1_3 <= Product5_out1_2;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_10_process
      if (reset_x == 1'b1) begin
        reduced_reg_4[0] <= 16'sb0000000000000000;
        reduced_reg_4[1] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg_4[0] <= reduced_reg_next_4[0];
          reduced_reg_4[1] <= reduced_reg_next_4[1];
        end
      end
    end

  assign Subtract3_out1_6 = reduced_reg_4[1];
  assign reduced_reg_next_4[0] = Subtract3_out1_5;
  assign reduced_reg_next_4[1] = reduced_reg_4[0];



  assign Product6_cast = {1'b0, Product5_out1_3};
  assign Product6_mul_temp = Product6_cast * Subtract3_out1_6;
  assign Product6_out1 = Product6_mul_temp[31:0];



  always @(posedge clk)
    begin : PipelineRegister16_process
      if (reset_x == 1'b1) begin
        Product6_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product6_out1_1 <= Product6_out1;
        end
      end
    end



  assign Product6_out1_2 = Product6_out1_1[30:15] + $signed({1'b0, Product6_out1_1[14]});



  assign Add9_sub_cast = {2'b0, {Add8_out1_1, 1'b0}};
  assign Add9_sub_cast_1 = {{3{Product6_out1_2[15]}}, Product6_out1_2};
  assign Add9_sub_temp = Add9_sub_cast - Add9_sub_cast_1;
  assign Add9_out1 = Add9_sub_temp[17:2];



  always @(posedge clk)
    begin : delayMatch14_process
      if (reset_x == 1'b1) begin
        delayMatch14_reg[0] <= 16'b0000000000000000;
        delayMatch14_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch14_reg[0] <= delayMatch14_reg_next[0];
          delayMatch14_reg[1] <= delayMatch14_reg_next[1];
        end
      end
    end

  assign Add9_out1_1 = delayMatch14_reg[1];
  assign delayMatch14_reg_next[0] = Add9_out1;
  assign delayMatch14_reg_next[1] = delayMatch14_reg[0];



  always @(posedge clk)
    begin : HwModeRegister34_process
      if (reset_x == 1'b1) begin
        Product6_out1_3 <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product6_out1_3 <= Product6_out1_2;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_11_process
      if (reset_x == 1'b1) begin
        reduced_reg_5[0] <= 16'sb0000000000000000;
        reduced_reg_5[1] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg_5[0] <= reduced_reg_next_5[0];
          reduced_reg_5[1] <= reduced_reg_next_5[1];
        end
      end
    end

  assign Subtract3_out1_7 = reduced_reg_5[1];
  assign reduced_reg_next_5[0] = Subtract3_out1_6;
  assign reduced_reg_next_5[1] = reduced_reg_5[0];



  assign Product7_out1 = Product6_out1_3 * Subtract3_out1_7;



  always @(posedge clk)
    begin : PipelineRegister17_process
      if (reset_x == 1'b1) begin
        Product7_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product7_out1_1 <= Product7_out1;
        end
      end
    end



  assign Product7_out1_2 = Product7_out1_1[28:13] + Product7_out1_1[12];



  assign Add10_add_cast = {1'b0, {Add9_out1_1, 3'b000}};
  assign Add10_add_cast_1 = {4'b0, Product7_out1_2};
  assign Add10_add_temp = Add10_add_cast + Add10_add_cast_1;
  assign Add10_out1 = Add10_add_temp[18:3] + Add10_add_temp[2];



  always @(posedge clk)
    begin : delayMatch16_process
      if (reset_x == 1'b1) begin
        delayMatch16_reg[0] <= 16'b0000000000000000;
        delayMatch16_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch16_reg[0] <= delayMatch16_reg_next[0];
          delayMatch16_reg[1] <= delayMatch16_reg_next[1];
        end
      end
    end

  assign Add10_out1_1 = delayMatch16_reg[1];
  assign delayMatch16_reg_next[0] = Add10_out1;
  assign delayMatch16_reg_next[1] = delayMatch16_reg[0];



  always @(posedge clk)
    begin : HwModeRegister36_process
      if (reset_x == 1'b1) begin
        Product7_out1_3 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product7_out1_3 <= Product7_out1_2;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_12_process
      if (reset_x == 1'b1) begin
        reduced_reg_6[0] <= 16'sb0000000000000000;
        reduced_reg_6[1] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg_6[0] <= reduced_reg_next_6[0];
          reduced_reg_6[1] <= reduced_reg_next_6[1];
        end
      end
    end

  assign Subtract3_out1_8 = reduced_reg_6[1];
  assign reduced_reg_next_6[0] = Subtract3_out1_7;
  assign reduced_reg_next_6[1] = reduced_reg_6[0];



  assign Product8_cast = {1'b0, Product7_out1_3};
  assign Product8_mul_temp = Product8_cast * Subtract3_out1_8;
  assign Product8_out1 = Product8_mul_temp[31:0];



  always @(posedge clk)
    begin : PipelineRegister18_process
      if (reset_x == 1'b1) begin
        Product8_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product8_out1_1 <= Product8_out1;
        end
      end
    end



  assign Product8_out1_2 = Product8_out1_1[30:15] + $signed({1'b0, Product8_out1_1[14]});



  assign Add11_sub_cast = {2'b0, {Add10_out1_1, 2'b00}};
  assign Add11_sub_cast_1 = {{4{Product8_out1_2[15]}}, Product8_out1_2};
  assign Add11_sub_temp = Add11_sub_cast - Add11_sub_cast_1;
  assign Add11_out1 = Add11_sub_temp[17:2];



  always @(posedge clk)
    begin : delayMatch18_process
      if (reset_x == 1'b1) begin
        delayMatch18_reg[0] <= 16'b0000000000000000;
        delayMatch18_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch18_reg[0] <= delayMatch18_reg_next[0];
          delayMatch18_reg[1] <= delayMatch18_reg_next[1];
        end
      end
    end

  assign Add11_out1_1 = delayMatch18_reg[1];
  assign delayMatch18_reg_next[0] = Add11_out1;
  assign delayMatch18_reg_next[1] = delayMatch18_reg[0];



  always @(posedge clk)
    begin : HwModeRegister38_process
      if (reset_x == 1'b1) begin
        Product8_out1_3 <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product8_out1_3 <= Product8_out1_2;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_13_process
      if (reset_x == 1'b1) begin
        reduced_reg_7[0] <= 16'sb0000000000000000;
        reduced_reg_7[1] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg_7[0] <= reduced_reg_next_7[0];
          reduced_reg_7[1] <= reduced_reg_next_7[1];
        end
      end
    end

  assign Subtract3_out1_9 = reduced_reg_7[1];
  assign reduced_reg_next_7[0] = Subtract3_out1_8;
  assign reduced_reg_next_7[1] = reduced_reg_7[0];



  assign Product9_out1 = Product8_out1_3 * Subtract3_out1_9;



  always @(posedge clk)
    begin : PipelineRegister19_process
      if (reset_x == 1'b1) begin
        Product9_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product9_out1_1 <= Product9_out1;
        end
      end
    end



  assign Product9_out1_2 = Product9_out1_1[28:13] + Product9_out1_1[12];



  assign Add12_add_cast = {1'b0, {Add11_out1_1, 3'b000}};
  assign Add12_add_cast_1 = {4'b0, Product9_out1_2};
  assign Add12_add_temp = Add12_add_cast + Add12_add_cast_1;
  assign Add12_out1 = Add12_add_temp[18:3] + Add12_add_temp[2];



  always @(posedge clk)
    begin : HwModeRegister2_process
      if (reset_x == 1'b1) begin
        Product9_out1_3 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product9_out1_3 <= Product9_out1_2;
        end
      end
    end



  always @(posedge clk)
    begin : reduced_14_process
      if (reset_x == 1'b1) begin
        reduced_reg_8[0] <= 16'sb0000000000000000;
        reduced_reg_8[1] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg_8[0] <= reduced_reg_next_8[0];
          reduced_reg_8[1] <= reduced_reg_next_8[1];
        end
      end
    end

  assign Subtract3_out1_10 = reduced_reg_8[1];
  assign reduced_reg_next_8[0] = Subtract3_out1_9;
  assign reduced_reg_next_8[1] = reduced_reg_8[0];



  assign Product10_cast = {1'b0, Product9_out1_3};
  assign Product10_mul_temp = Product10_cast * Subtract3_out1_10;
  assign Product10_out1 = Product10_mul_temp[31:0];



  always @(posedge clk)
    begin : delayMatch20_process
      if (reset_x == 1'b1) begin
        delayMatch20_reg[0] <= 16'b0000000000000000;
        delayMatch20_reg[1] <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          delayMatch20_reg[0] <= delayMatch20_reg_next[0];
          delayMatch20_reg[1] <= delayMatch20_reg_next[1];
        end
      end
    end

  assign Add12_out1_1 = delayMatch20_reg[1];
  assign delayMatch20_reg_next[0] = Add12_out1;
  assign delayMatch20_reg_next[1] = delayMatch20_reg[0];



  always @(posedge clk)
    begin : PipelineRegister1_process
      if (reset_x == 1'b1) begin
        Product10_out1_1 <= 32'sb00000000000000000000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product10_out1_1 <= Product10_out1;
        end
      end
    end



  assign Product10_out1_2 = Product10_out1_1[30:15] + $signed({1'b0, Product10_out1_1[14]});



  assign Add13_sub_cast = {2'b0, {Add12_out1_1, 2'b00}};
  assign Add13_sub_cast_1 = {{4{Product10_out1_2[15]}}, Product10_out1_2};
  assign Add13_sub_temp = Add13_sub_cast - Add13_sub_cast_1;
  assign Add13_out1 = Add13_sub_temp[17:2];



  always @(posedge clk)
    begin : HwModeRegister25_process
      if (reset_x == 1'b1) begin
        Add13_out1_1 <= 16'b0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Add13_out1_1 <= Add13_out1;
        end
      end
    end



  assign Product25_cast = {1'b0, Add13_out1_1};
  assign Product25_mul_temp = Product22_out1_3 * Product25_cast;
  assign Product25_cast_1 = Product25_mul_temp[31:0];
  assign Product25_out1 = Product25_cast_1[27:12];



  always @(posedge clk)
    begin : PipelineRegister12_process
      if (reset_x == 1'b1) begin
        Product25_out1_1 <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          Product25_out1_1 <= Product25_out1;
        end
      end
    end



  assign Constant3_out1 = 16'b1100100100010000;



  always @(posedge clk)
    begin : reduced_15_process
      if (reset_x == 1'b1) begin
        reduced_reg_9[0] <= 16'sb0000000000000000;
        reduced_reg_9[1] <= 16'sb0000000000000000;
        reduced_reg_9[2] <= 16'sb0000000000000000;
        reduced_reg_9[3] <= 16'sb0000000000000000;
        reduced_reg_9[4] <= 16'sb0000000000000000;
        reduced_reg_9[5] <= 16'sb0000000000000000;
        reduced_reg_9[6] <= 16'sb0000000000000000;
        reduced_reg_9[7] <= 16'sb0000000000000000;
        reduced_reg_9[8] <= 16'sb0000000000000000;
        reduced_reg_9[9] <= 16'sb0000000000000000;
        reduced_reg_9[10] <= 16'sb0000000000000000;
        reduced_reg_9[11] <= 16'sb0000000000000000;
        reduced_reg_9[12] <= 16'sb0000000000000000;
        reduced_reg_9[13] <= 16'sb0000000000000000;
        reduced_reg_9[14] <= 16'sb0000000000000000;
        reduced_reg_9[15] <= 16'sb0000000000000000;
        reduced_reg_9[16] <= 16'sb0000000000000000;
        reduced_reg_9[17] <= 16'sb0000000000000000;
        reduced_reg_9[18] <= 16'sb0000000000000000;
        reduced_reg_9[19] <= 16'sb0000000000000000;
        reduced_reg_9[20] <= 16'sb0000000000000000;
        reduced_reg_9[21] <= 16'sb0000000000000000;
        reduced_reg_9[22] <= 16'sb0000000000000000;
        reduced_reg_9[23] <= 16'sb0000000000000000;
        reduced_reg_9[24] <= 16'sb0000000000000000;
      end
      else begin
        if (clk_enable) begin
          reduced_reg_9[0] <= reduced_reg_next_9[0];
          reduced_reg_9[1] <= reduced_reg_next_9[1];
          reduced_reg_9[2] <= reduced_reg_next_9[2];
          reduced_reg_9[3] <= reduced_reg_next_9[3];
          reduced_reg_9[4] <= reduced_reg_next_9[4];
          reduced_reg_9[5] <= reduced_reg_next_9[5];
          reduced_reg_9[6] <= reduced_reg_next_9[6];
          reduced_reg_9[7] <= reduced_reg_next_9[7];
          reduced_reg_9[8] <= reduced_reg_next_9[8];
          reduced_reg_9[9] <= reduced_reg_next_9[9];
          reduced_reg_9[10] <= reduced_reg_next_9[10];
          reduced_reg_9[11] <= reduced_reg_next_9[11];
          reduced_reg_9[12] <= reduced_reg_next_9[12];
          reduced_reg_9[13] <= reduced_reg_next_9[13];
          reduced_reg_9[14] <= reduced_reg_next_9[14];
          reduced_reg_9[15] <= reduced_reg_next_9[15];
          reduced_reg_9[16] <= reduced_reg_next_9[16];
          reduced_reg_9[17] <= reduced_reg_next_9[17];
          reduced_reg_9[18] <= reduced_reg_next_9[18];
          reduced_reg_9[19] <= reduced_reg_next_9[19];
          reduced_reg_9[20] <= reduced_reg_next_9[20];
          reduced_reg_9[21] <= reduced_reg_next_9[21];
          reduced_reg_9[22] <= reduced_reg_next_9[22];
          reduced_reg_9[23] <= reduced_reg_next_9[23];
          reduced_reg_9[24] <= reduced_reg_next_9[24];
        end
      end
    end

  assign Complex_to_Real_Imag1_out2_1 = reduced_reg_9[24];
  assign reduced_reg_next_9[0] = Complex_to_Real_Imag1_out2;
  assign reduced_reg_next_9[1] = reduced_reg_9[0];
  assign reduced_reg_next_9[2] = reduced_reg_9[1];
  assign reduced_reg_next_9[3] = reduced_reg_9[2];
  assign reduced_reg_next_9[4] = reduced_reg_9[3];
  assign reduced_reg_next_9[5] = reduced_reg_9[4];
  assign reduced_reg_next_9[6] = reduced_reg_9[5];
  assign reduced_reg_next_9[7] = reduced_reg_9[6];
  assign reduced_reg_next_9[8] = reduced_reg_9[7];
  assign reduced_reg_next_9[9] = reduced_reg_9[8];
  assign reduced_reg_next_9[10] = reduced_reg_9[9];
  assign reduced_reg_next_9[11] = reduced_reg_9[10];
  assign reduced_reg_next_9[12] = reduced_reg_9[11];
  assign reduced_reg_next_9[13] = reduced_reg_9[12];
  assign reduced_reg_next_9[14] = reduced_reg_9[13];
  assign reduced_reg_next_9[15] = reduced_reg_9[14];
  assign reduced_reg_next_9[16] = reduced_reg_9[15];
  assign reduced_reg_next_9[17] = reduced_reg_9[16];
  assign reduced_reg_next_9[18] = reduced_reg_9[17];
  assign reduced_reg_next_9[19] = reduced_reg_9[18];
  assign reduced_reg_next_9[20] = reduced_reg_9[19];
  assign reduced_reg_next_9[21] = reduced_reg_9[20];
  assign reduced_reg_next_9[22] = reduced_reg_9[21];
  assign reduced_reg_next_9[23] = reduced_reg_9[22];
  assign reduced_reg_next_9[24] = reduced_reg_9[23];



  assign switch_compare_1_7 = Complex_to_Real_Imag1_out2_1 > 16'sb0000000000000000;



  assign Constant8_out1 = 16'sb1001101101111000;



  assign Constant7_out1 = 16'b1100100100010000;



  assign Constant6_out1 = 16'sb1001101101111000;



  assign Product25_out1_dtc = ({{2{Product25_out1_1[15]}}, Product25_out1_1[15:10]}) + $signed({1'b0, Product25_out1_1[9]});



  assign Add5_sub_cast = {2'b0, Constant3_out1};
  assign Add5_sub_cast_1 = {{2{Product25_out1_1[15]}}, Product25_out1_1};
  assign Add5_sub_temp = Add5_sub_cast - Add5_sub_cast_1;
  assign Add5_out1 = Add5_sub_temp[16:1];



  assign Add5_out1_dtc = ({1'b0, Add5_out1[15:9]}) + Add5_out1[8];



  assign Add21_add_cast = {{3{Product25_out1_1[15]}}, Product25_out1_1};
  assign Add21_add_cast_1 = {Constant8_out1[15], {Constant8_out1, 2'b00}};
  assign Add21_add_temp = Add21_add_cast + Add21_add_cast_1;
  assign Add21_out1 = Add21_add_temp[17:2];



  assign Add20_add_cast = {{3{Product25_out1_1[15]}}, Product25_out1_1};
  assign Add20_add_cast_1 = {2'b0, {Constant7_out1, 1'b0}};
  assign Add20_add_temp = Add20_add_cast + Add20_add_cast_1;
  assign Add20_out1 = Add20_add_temp[16:1];



  assign Add20_out1_dtc = {1'b0, Add20_out1[15:1]};



  assign Switch_out1 = (switch_compare_1_7 == 1'b0 ? Add21_out1 :
              Add20_out1_dtc);



  assign Switch_out1_dtc = Switch_out1[15:8] + $signed({1'b0, Switch_out1[7]});



  assign Add19_sub_cast = {Constant6_out1[15], {Constant6_out1, 1'b0}};
  assign Add19_sub_cast_1 = {{2{Product25_out1_1[15]}}, Product25_out1_1};
  assign Add19_sub_temp = Add19_sub_cast - Add19_sub_cast_1;
  assign Add19_out1 = Add19_sub_temp[17:2];



  assign Add19_out1_dtc = Add19_out1[15:8] + $signed({1'b0, Add19_out1[7]});



  assign Arctangent_Approximation = (Switch1_out1_zp == 16'b0010000000000000 ? Product25_out1_dtc :
              (Switch1_out1_zp == 16'b0100000000000000 ? Add5_out1_dtc :
              (Switch1_out1_zp == 16'b0110000000000000 ? Switch_out1_dtc :
              Add19_out1_dtc)));



  assign alpha_arctangen = alpha_arctangen_REG;

endmodule  // simulink_functio

