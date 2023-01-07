//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.16
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// Variables generated for SystemC signals
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_binary.cpp:613:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic clk;
logic rstn;
logic [31:0] s;
logic [65:0] sig;

// Local parameters generated for C++ constants
localparam logic [31:0] STORED_RESP_WIDTH = 66;

//------------------------------------------------------------------------------
// Clocked THREAD: syncProc (test_binary.cpp:70:5) 

// Next-state combinational logic
always_comb begin : syncProc_comb     // test_binary.cpp:70:5
    syncProc_func;
end
function void syncProc_func;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : syncProc_ff
    if ( ~rstn ) begin
        sig <= 66'd1 <<< 32'(STORED_RESP_WIDTH - 1);
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Method process: multiAssign (test_binary.cpp:82:5) 

always_comb 
begin : multiAssign     // test_binary.cpp:82:5
    logic b1;
    logic b2;
    integer unsigned u1;
    integer unsigned u2;
    integer unsigned u3;
    logic [11:0] ux1;
    logic [11:0] ux2;
    logic [11:0] ux3;
    logic signed [65:0] bx1;
    logic signed [65:0] bx2;
    logic signed [65:0] bx3;
    b2 = 1; b1 = b2;
    u2 = 1; u1 = u2;
    u3 = 2; u2 = u3; u1 = u2;
    u2 = u2 + 1; u1 = u2;
    u2 = u3++; u1 = u2;
    u2 = --u3; u1 = u2;
    u2 = 3; u1 = u2;
    u2 = 3; u1 = u1 * (u2);
    ux1 = 0;
    ux2 = 0;
    ux3 = 0;
    ux2 = 1; ux1 = ux2;
    ux3 = 1; ux2 = ux3; ux1 = ux2;
    ux2 = ux2 - 1; ux1 = ux2;
    ux1 = ux2 == 1;
    u1 = |s ? 1 : 2; ux1 = u1;
    ux2 = ux2 + 3; ux1 = ux2;
    ux2 = ux2 + (ux3 + 1); ux1 = ux1 + (ux2);
    bx1 = 0;
    bx2 = 0;
    bx3 = 0;
    bx2 = -5'sd11; bx1 = bx2;
    bx2 = bx2 / 2; bx1 = bx2;
    ux2 = ux1 + 1; bx1 = ux2;
    ux1 = 3; u1 = ux1; bx1 = u1;
    bx1 = 5; ux1 = bx1;
    ux1 = 3; u1 = 32'(ux1);
    ux1 = 3; u1 = 10'(ux1);
    ux2 = 3; ux1 = 10'(ux2);
    ux2 = 3; ux1 = 33'(10'(ux2));
    bx1 = 3; bx1 = 33'(bx1);
    bx1 = 3; bx1 = bx1 - (signed'({1'b0, 33'(bx1)}));
end

//------------------------------------------------------------------------------
// Method process: enumOperation (test_binary.cpp:139:5) 

always_comb 
begin : enumOperation     // test_binary.cpp:139:5
    logic [1:0] uvar;
    logic signed [2:0] ivar;
    logic b_1;
    integer i;
    logic [3:0] x;
    logic signed [3:0] y;
    integer unsigned u;
    logic [16:0] bu;
    logic signed [23:0] bi;
    logic signed [32:0] z;
    uvar = 1;
    ivar = -3'sd2;
    b_1 = 0;
    i = 11;
    x = 1;
    y = -2'sd1;
    u = 1;
    bu = 1;
    bi = -3'sd2;
    z = 0;
    i = b_1 + signed'({1'b0, uvar});
    i = x + ivar;
    i = x + uvar;
    `ifndef INTEL_SVA_OFF
        assert (i == 2) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    i = (-3'sd2) + signed'({1'b0, uvar});
    `ifndef INTEL_SVA_OFF
        assert (i == -2'sd1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    i = -3'sd2;
    i = i + signed'({1'b0, uvar});
    `ifndef INTEL_SVA_OFF
        assert (i == -2'sd1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    i = -3'sd2;
    i = i + ivar;
    `ifndef INTEL_SVA_OFF
        assert (i == -4'sd4) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    i = u + uvar;
    `ifndef INTEL_SVA_OFF
        assert (i == 2) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    i = u + ivar;
    z = signed'({1'b0, bu}) + signed'({1'b0, uvar});
    `ifndef INTEL_SVA_OFF
        assert (z == 2) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = signed'({1'b0, bu}) + ivar;
    `ifndef INTEL_SVA_OFF
        assert (z == -2'sd1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = bi + signed'({1'b0, uvar});
    `ifndef INTEL_SVA_OFF
        assert (z == -2'sd1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = bi + ivar;
    `ifndef INTEL_SVA_OFF
        assert (z == -4'sd4) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: comma (test_binary.cpp:185:5) 

always_comb 
begin : comma     // test_binary.cpp:185:5
    integer i;
    integer j;
    integer k_1;
    integer i_1;
    i++;
    k_1 = j++;
    j = i + k_1;
    k_1 = j;
    j = 2;
    k_1 = j++;
    `ifndef INTEL_SVA_OFF
        assert (j == 3) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    i_1 = 2;
    // Call g() begin
    j = j + i_1;
    // Call g() end
    k_1 = j;
    `ifndef INTEL_SVA_OFF
        assert (j == 5) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    i = 0;
    i = 1;
    k_1 = i + 1;
    `ifndef INTEL_SVA_OFF
        assert (i == 1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    `ifndef INTEL_SVA_OFF
        assert (k_1 == 2) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: shift (test_binary.cpp:202:5) 

always_comb 
begin : shift     // test_binary.cpp:202:5
    integer unsigned i;
    logic [3:0] x;
    logic [7:0] y;
    integer m_1;
    logic [11:0] ii;
    integer k_1;
    x = 0;
    y = 0;
    m_1 = 3;
    i = m_1 <<< 2;
    ii = {x, y} <<< 2;
    i = a >>> 3;
    s = i <<< m_1;
    k_1 = a <<< s;
    k_1++;
    b = |(s >>> k_1);
end

//------------------------------------------------------------------------------
// Method process: sc_type_shift (test_binary.cpp:217:5) 

always_comb 
begin : sc_type_shift     // test_binary.cpp:217:5
    logic [36:0] i;
    logic [38:0] j;
    logic [71:0] x;
    logic [129:0] y;
    integer ii;
    i = 15;
    j = i <<< 2;
    x = 70'(i) <<< 68;
    x = x <<< 70;
    `ifndef INTEL_SVA_OFF
        assert (x == 0) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    y = 130'(i) >>> 71;
    `ifndef INTEL_SVA_OFF
        assert (y == 0) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    y = x >>> 67;
    `ifndef INTEL_SVA_OFF
        assert (y == 0) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    y = x >>> i;
    y = x <<< 32'(j - 1);
    ii = 42;
    y = x <<< 12'(ii);
    y = x <<< 12'(ii);
end

//------------------------------------------------------------------------------
// Method process: sc_type_main (test_binary.cpp:266:5) 

always_comb 
begin : sc_type_main     // test_binary.cpp:266:5
    logic [2:0] x;
    logic signed [3:0] y;
    logic signed [32:0] bx;
    logic [32:0] bux;
    logic signed [41:0] z;
    logic signed [41:0] bz;
    x = 1;
    y = 5;
    bx = 4;
    bux = 7;
    z = 0;
    bz = 0;
    z = x + y;
    z = 3 * x + y * 2 + 2 * 3;
    z = x + 3 + y + 0;
    bz = 5'(x - 1 + y) / bx;
    bz = 34'(signed'({1'b0, x / y}) + bx) / signed'({1'b0, bux});
    bz = signed'({1'b0, x}) * (signed'({1'b0, bux}) + 1) + y / bx;
    `ifndef INTEL_SVA_OFF
        assert (bz == 9) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = (y >>> 1) + (bx >>> x);
    `ifndef INTEL_SVA_OFF
        assert (z == 4) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = (y <<< (4'(x + 1) >>> 1)) * signed'({1'b0, bux});
    `ifndef INTEL_SVA_OFF
        assert (z == 70) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = (x * y) <<< (32'(bux) >>> 1);
    bz = signed'({1'b0, (x + y)}) - signed'({1'b0, (++bux)});
    bz = (y % 2) * (14 % bx + 1);
    `ifndef INTEL_SVA_OFF
        assert (bz == 3) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    bz = 9'((y % bx) * signed'({1'b0, (x + 10)})) / signed'({1'b0, bux});
    `ifndef INTEL_SVA_OFF
        assert (bz == 1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: sc_type_main_neg (test_binary.cpp:236:5) 

always_comb 
begin : sc_type_main_neg     // test_binary.cpp:236:5
    logic [4:0] x;
    logic signed [4:0] y;
    logic signed [32:0] bx;
    logic signed [41:0] bz;
    logic [32:0] bux;
    logic signed [41:0] z;
    x = 1;
    y = -4'sd5;
    bx = 4;
    bz = 0;
    bux = 7;
    z = 0;
    z = (-3'sd3) - x + y;
    z = x * y;
    z = y / (x + 1);
    bz = 7'(x + y - 1) / bx;
    bz = 7'(x - 1 + y) / bx;
end

//------------------------------------------------------------------------------
// Method process: sc_type_main_signed (test_binary.cpp:313:5) 

always_comb 
begin : sc_type_main_signed     // test_binary.cpp:313:5
    logic signed [2:0] x;
    logic signed [3:0] y;
    logic signed [32:0] bx;
    logic signed [32:0] by;
    logic signed [41:0] z;
    logic signed [41:0] bz;
    x = 1;
    y = 5;
    bx = 4;
    by = 7;
    z = 0;
    bz = 0;
    z = x + y;
    `ifndef INTEL_SVA_OFF
        assert (z == 6) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = 3 * x + y * 2 + 2 * 3;
    `ifndef INTEL_SVA_OFF
        assert (z == 19) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = x + 3 + y + 0;
    `ifndef INTEL_SVA_OFF
        assert (z == 9) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    bz = 5'(x - 1 + y) / bx;
    `ifndef INTEL_SVA_OFF
        assert (bz == 1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    bz = 34'(x / y + bx) / by;
    `ifndef INTEL_SVA_OFF
        assert (bz == 0) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    bz = x * (by + 1) + y / bx;
    `ifndef INTEL_SVA_OFF
        assert (bz == 9) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    bz = (x * y) <<< (32'(by) >>> 1);
    `ifndef INTEL_SVA_OFF
        assert (bz == 40) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    bz = (x + y) - (++by);
    `ifndef INTEL_SVA_OFF
        assert (bz == -3'sd2) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    bz = 9'((y % bx) * (x + 10)) / by;
    `ifndef INTEL_SVA_OFF
        assert (bz == 1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: sc_type_logic_bitwise (test_binary.cpp:350:5) 

always_comb 
begin : sc_type_logic_bitwise     // test_binary.cpp:350:5
    integer i;
    integer unsigned uu;
    logic [4:0] x;
    logic signed [3:0] y;
    logic [9:0] bx;
    logic signed [9:0] by;
    logic [17:0] z;
    logic b_1;
    i = 10;
    uu = 3;
    x = 2;
    y = 3;
    bx = 7;
    by = 5;
    z = 0;
    z = i | uu;
    z = i & uu;
    z = i ^ uu;
    z = signed'({1'b0, x}) | signed'({1'b0, uu + bx}) & by;
    `ifndef INTEL_SVA_OFF
        assert (z == 2) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = signed'({1'b0, (x ^ (uu + 1))}) + (y | signed'({1'b0, bx}) | by);
    `ifndef INTEL_SVA_OFF
        assert (z == 13) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = (x & 11) * (10 | (2 * i));
    b_1 = |x && |y;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    b_1 = |x && !(|y);
    `ifndef INTEL_SVA_OFF
        assert (!b_1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    b_1 = 1;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    b_1 = 1;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    b_1 = 0 || |(x - 1);
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    b_1 = !(|i) || |(y + signed'({1'b0, 32'(bx)})) && 1;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: logic_bitwise_literal (test_binary.cpp:394:5) 

always_comb 
begin : logic_bitwise_literal     // test_binary.cpp:394:5
    integer i;
    integer unsigned uu;
    logic signed [63:0] j;
    logic [99:0] z;
    i = 'h123;
    uu = 3;
    j = 41'h12300000005;
    z = 0;
    z = i | 'h24;
    `ifndef INTEL_SVA_OFF
        assert (z == 'h127) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = i & 'h24;
    `ifndef INTEL_SVA_OFF
        assert (z == 'h20) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = i ^ 'h24;
    `ifndef INTEL_SVA_OFF
        assert (z == 'h107) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = j | 'h3;
    `ifndef INTEL_SVA_OFF
        assert (z == 41'h12300000007) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = j & 'h16;
    `ifndef INTEL_SVA_OFF
        assert (z == 'h4) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = j ^ 'h11;
    `ifndef INTEL_SVA_OFF
        assert (z == 41'h12300000014) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = j | 40'sh4400000002;
    `ifndef INTEL_SVA_OFF
        assert (z == 41'h16700000007) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = j & 40'sh4500000004;
    `ifndef INTEL_SVA_OFF
        assert (z == 33'h100000004) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = j | 46'sh140000000000;
    `ifndef INTEL_SVA_OFF
        assert (z == 45'h152300000005) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = j & 46'sh153000000000;
    `ifndef INTEL_SVA_OFF
        assert (z == 41'h12000000000) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: sc_type_comp (test_binary.cpp:426:5) 

always_comb 
begin : sc_type_comp     // test_binary.cpp:426:5
    integer i;
    integer unsigned uu;
    logic [4:0] x;
    logic signed [3:0] y;
    logic [9:0] bx;
    logic signed [9:0] by;
    logic b_1;
    i = 10;
    uu = 3;
    x = 2;
    y = 3;
    bx = 7;
    by = 5;
    b_1 = x > y;
    b_1 = x != y;
    b_1 = x != 1 && bx != i;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    b_1 = x == y - 1;
    b_1 = 0 == y - signed'({1'b0, uu});
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    b_1 = x == 2 && bx == uu + 4;
    `ifndef INTEL_SVA_OFF
        assert (b_1) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    b_1 = x <= y;
    b_1 = x <= y && bx > by && 1;
    b_1 = x < y;
    b_1 = x < (y + 1) && 1;
end

//------------------------------------------------------------------------------
// Method process: large_types (test_binary.cpp:461:5) 

always_comb 
begin : large_types     // test_binary.cpp:461:5
    logic signed [127:0] i;
    logic [127:0] j;
    logic signed [99:0] x;
    logic [99:0] y;
    logic signed [99:0] z;
    i = -5'sd10;
    j = 10;
    i = 140 / j;
    `ifndef INTEL_SVA_OFF
        assert (i == 14) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    i = j <<< 2;
    `ifndef INTEL_SVA_OFF
        assert (i == 40) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    x = -5'sd11;
    y = 11;
    z = 0;
    z = x + signed'({1'b0, y});
    `ifndef INTEL_SVA_OFF
        assert (z == 0) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    z = x * signed'({1'b0, y});
    `ifndef INTEL_SVA_OFF
        assert (z == -8'sd121) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    x = signed'({1'b0, y}) * 2;
    `ifndef INTEL_SVA_OFF
        assert (x == 22) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
    y = x <<< 50;
    `ifndef INTEL_SVA_OFF
        assert (y == 55'h58000000000000) else $error("Assertion failed at test_binary.cpp:60:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: sc_relational_ops (test_binary.cpp:489:5) 

always_comb 
begin : sc_relational_ops     // test_binary.cpp:489:5
    integer unsigned rel_a;
    integer unsigned rel_b;
    logic [31:0] rel_c;
    logic [31:0] rel_d;
    integer rel_e;
    integer rel_f;
    logic rel_less_than;
    logic rel_greater_than;
    logic rel_not_eq;
    logic rel_less_than_eq;
    logic rel_greater_than_eq;
    rel_a = 0;
    rel_b = rel_a - 1;
    rel_c = 0;
    rel_d = rel_c - 1;
    rel_e = rel_d;
    rel_f = rel_a;
    rel_less_than = rel_a < rel_b;
    rel_greater_than = rel_d > rel_c;
    rel_not_eq = rel_d != rel_c;
    rel_b = rel_a;
    rel_c = rel_d;
    rel_less_than_eq = rel_a <= rel_b;
    rel_greater_than_eq = rel_d >= rel_c;
end

//------------------------------------------------------------------------------
// Method process: sc_fp_bitwise_fns (test_binary.cpp:564:5) 

// Process-local variables
logic signed [31:0] iter;

always_comb 
begin : sc_fp_bitwise_fns     // test_binary.cpp:564:5
    logic [9:0] par1;
    logic [11:0] par2;
    logic [21:0] par3;
    logic [29:0] par4;
    logic [15:0] par5;
    logic [13:0] par6;
    logic [21:0] par7;
    logic [9:0] B;
    logic [11:0] C;
    logic [21:0] i;
    logic [29:0] s2;
    logic [15:0] s3;
    logic [13:0] u2;
    logic [21:0] u3;
    logic [21:0] A0;
    logic [21:0] A1;
    logic [21:0] A2;
    logic [21:0] A3;
    logic [21:0] A4;
    logic [21:0] A5;
    logic [21:0] s10;
    logic [21:0] s11;
    logic [21:0] s12;
    logic [21:0] u10;
    logic [21:0] u11;
    logic [21:0] u12;
    logic signed [12:0] par1_1;
    logic signed [11:0] par2_1;
    logic signed [11:0] par3_1;
    logic signed [11:0] par4_1;
    logic signed [9:0] par5_1;
    logic signed [11:0] par6_1;
    logic signed [31:0] par7_1;
    logic signed [12:0] B_1;
    logic signed [11:0] C_1;
    logic signed [11:0] i_1;
    logic signed [11:0] s2_1;
    logic signed [9:0] s3_1;
    logic signed [11:0] u2_1;
    logic signed [31:0] u3_1;
    logic signed [31:0] A0_1;
    logic signed [31:0] A1_1;
    logic signed [31:0] A2_1;
    logic signed [31:0] A3_1;
    logic signed [31:0] A4_1;
    logic signed [31:0] A5_1;
    logic signed [31:0] s10_1;
    logic signed [31:0] s11_1;
    logic signed [31:0] s12_1;
    logic signed [31:0] u10_1;
    logic signed [31:0] u11_1;
    logic signed [31:0] u12_1;
    logic signed [11:0] par1_2;
    logic signed [11:0] par2_2;
    logic signed [11:0] par3_2;
    logic signed [11:0] par4_2;
    logic signed [9:0] par5_2;
    logic signed [11:0] par6_2;
    logic signed [31:0] par7_2;
    logic signed [11:0] B_2;
    logic signed [11:0] C_2;
    logic signed [11:0] i_2;
    logic signed [11:0] s2_2;
    logic signed [9:0] s3_2;
    logic signed [11:0] u2_2;
    logic signed [31:0] u3_2;
    logic signed [31:0] A0_2;
    logic signed [31:0] A1_2;
    logic signed [31:0] A2_2;
    logic signed [31:0] A3_2;
    logic signed [31:0] A4_2;
    logic signed [31:0] A5_2;
    logic signed [31:0] s10_2;
    logic signed [31:0] s11_2;
    logic signed [31:0] s12_2;
    logic signed [31:0] u10_2;
    logic signed [31:0] u11_2;
    logic signed [31:0] u12_2;
    logic [9:0] par1_3;
    logic [11:0] par2_3;
    logic [11:0] par3_3;
    logic [11:0] par4_3;
    logic [9:0] par5_3;
    logic [11:0] par6_3;
    logic [31:0] par7_3;
    logic [9:0] B_3;
    logic [11:0] C_3;
    logic [11:0] i_3;
    logic [11:0] s2_3;
    logic [9:0] s3_3;
    logic [11:0] u2_3;
    logic [31:0] u3_3;
    logic [31:0] A0_3;
    logic [31:0] A1_3;
    logic [31:0] A2_3;
    logic [31:0] A3_3;
    logic [31:0] A4_3;
    logic [31:0] A5_3;
    logic [31:0] s10_3;
    logic [31:0] s11_3;
    logic [31:0] s12_3;
    logic [31:0] u10_3;
    logic [31:0] u11_3;
    logic [31:0] u12_3;
    integer x0;
    integer x1;
    integer x2;
    integer x3;
    integer x4;
    integer x5;
    integer x6;
    integer x7;
    logic [19:0] par1_4;
    logic [31:0] par2_4;
    logic [51:0] par3_4;
    logic [71:0] par4_4;
    logic [19:0] par5_4;
    logic [31:0] par6_4;
    logic [51:0] par7_4;
    logic [19:0] B_4;
    logic [31:0] C_4;
    logic [51:0] i_4;
    logic [71:0] s2_4;
    logic [19:0] s3_4;
    logic [31:0] u2_4;
    logic [51:0] u3_4;
    logic [51:0] A0_4;
    logic [51:0] A1_4;
    logic [51:0] A2_4;
    logic [51:0] A3_4;
    logic [51:0] A4_4;
    logic [51:0] A5_4;
    logic [51:0] s10_4;
    logic [51:0] s11_4;
    logic [51:0] s12_4;
    logic [51:0] u10_4;
    logic [51:0] u11_4;
    logic [51:0] u12_4;
    par1 = 10'd5; par2 = 12'd1; par3 = 22'd3; par4 = 30'd12; par5 = 16'd90; par6 = 14'd64; par7 = 22'd14;
    // Call sc_fp_bitwise_fns_types() begin
    B = par1;
    C = par2;
    i = par3;
    s2 = par4;
    s3 = par5;
    u2 = par6;
    u3 = par7;
    iter++;
    A0 = B + C;
    A1 = B - C;
    A2 = B * C;
    A3 = B / C;
    A4 = B <<< i;
    A5 = B >>> i;
    s10 = s2 & s3;
    s11 = s2 | s3;
    s12 = s2 ^ s3;
    u10 = u2 & u3;
    u11 = u2 | u3;
    u12 = u2 ^ u3;
    // Call sc_fp_bitwise_fns_types() end
    par1_1 = 13'd15; par2_1 = 12'd11; par3_1 = 12'd2; par4_1 = 12'd22; par5_1 = 10'd40; par6_1 = 12'd44; par7_1 = 32'd24;
    // Call sc_fp_bitwise_fns_types() begin
    B_1 = par1_1;
    C_1 = par2_1;
    i_1 = par3_1;
    s2_1 = par4_1;
    s3_1 = par5_1;
    u2_1 = par6_1;
    u3_1 = par7_1;
    iter++;
    A0_1 = B_1 + C_1;
    A1_1 = B_1 - C_1;
    A2_1 = B_1 * C_1;
    A3_1 = B_1 / C_1;
    A4_1 = B_1 <<< i_1;
    A5_1 = B_1 >>> i_1;
    s10_1 = s2_1 & s3_1;
    s11_1 = s2_1 | s3_1;
    s12_1 = s2_1 ^ s3_1;
    u10_1 = u2_1 & u3_1;
    u11_1 = u2_1 | u3_1;
    u12_1 = u2_1 ^ u3_1;
    // Call sc_fp_bitwise_fns_types() end
    par1_2 = 12'd5; par2_2 = 12'd1; par3_2 = 12'd3; par4_2 = 12'd12; par5_2 = 10'd90; par6_2 = 12'd64; par7_2 = 32'd14;
    // Call sc_fp_bitwise_fns_types() begin
    B_2 = par1_2;
    C_2 = par2_2;
    i_2 = par3_2;
    s2_2 = par4_2;
    s3_2 = par5_2;
    u2_2 = par6_2;
    u3_2 = par7_2;
    iter++;
    A0_2 = B_2 + C_2;
    A1_2 = B_2 - C_2;
    A2_2 = B_2 * C_2;
    A3_2 = B_2 / C_2;
    A4_2 = B_2 <<< i_2;
    A5_2 = B_2 >>> i_2;
    s10_2 = s2_2 & s3_2;
    s11_2 = s2_2 | s3_2;
    s12_2 = s2_2 ^ s3_2;
    u10_2 = u2_2 & u3_2;
    u11_2 = u2_2 | u3_2;
    u12_2 = u2_2 ^ u3_2;
    // Call sc_fp_bitwise_fns_types() end
    par1_3 = 10'd5; par2_3 = 12'd1; par3_3 = 12'd3; par4_3 = 12'd12; par5_3 = 10'd90; par6_3 = 12'd64; par7_3 = 32'd14;
    // Call sc_fp_bitwise_fns_types() begin
    B_3 = par1_3;
    C_3 = par2_3;
    i_3 = par3_3;
    s2_3 = par4_3;
    s3_3 = par5_3;
    u2_3 = par6_3;
    u3_3 = par7_3;
    iter++;
    A0_3 = B_3 + C_3;
    A1_3 = signed'({1'b0, B_3}) - signed'({1'b0, C_3});
    A2_3 = B_3 * C_3;
    A3_3 = B_3 / C_3;
    A4_3 = B_3 <<< i_3;
    A5_3 = B_3 >>> i_3;
    s10_3 = s2_3 & s3_3;
    s11_3 = s2_3 | s3_3;
    s12_3 = s2_3 ^ s3_3;
    u10_3 = u2_3 & u3_3;
    u11_3 = u2_3 | u3_3;
    u12_3 = u2_3 ^ u3_3;
    // Call sc_fp_bitwise_fns_types() end
    x0 = 5;
    x1 = 1;
    x2 = 1;
    x3 = 12;
    x4 = 90;
    x5 = 64;
    x6 = 14;
    for (integer loopcount = 0; loopcount < 10; loopcount++)
    begin
        x0 = x0 + 5;
        x1 = x1 + 1;
        x2 = x2 + 1;
        x3 = x3 + 12;
        x4 = x4 + 90;
        x5 = x5 + 64;
        x6 = x6 + 14;
        par1_4 = 20'(x0); par2_4 = 32'(x1); par3_4 = 52'(x2); par4_4 = 72'(x3); par5_4 = 20'(x4); par6_4 = 32'(x5); par7_4 = 52'(x6);
        // Call sc_fp_bitwise_fns_types() begin
        B_4 = par1_4;
        C_4 = par2_4;
        i_4 = par3_4;
        s2_4 = par4_4;
        s3_4 = par5_4;
        u2_4 = par6_4;
        u3_4 = par7_4;
        iter++;
        A0_4 = B_4 + C_4;
        A1_4 = signed'({1'b0, B_4}) - signed'({1'b0, C_4});
        A2_4 = B_4 * C_4;
        A3_4 = B_4 / C_4;
        A4_4 = B_4 <<< i_4;
        A5_4 = B_4 >>> i_4;
        s10_4 = s2_4 & s3_4;
        s11_4 = s2_4 | s3_4;
        s12_4 = s2_4 ^ s3_4;
        u10_4 = u2_4 & u3_4;
        u11_4 = u2_4 | u3_4;
        u12_4 = u2_4 ^ u3_4;
        // Call sc_fp_bitwise_fns_types() end
    end
end

endmodule

