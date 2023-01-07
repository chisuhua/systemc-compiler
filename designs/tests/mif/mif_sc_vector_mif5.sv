//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.39
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic [31:0] mif_b_mif_aa_resp[2];
logic [31:0] mif_b_mif_a_resp[2][3];
logic [31:0] mif_b_result[2];
logic req[2];
logic [15:0] s;
logic mif_b_clk[2];
logic mif_b_rstn[2];
logic mif_b_req[2];
logic mif_b_mif_aa_clk[2];
logic mif_b_mif_aa_rstn[2];
logic mif_b_mif_a_clk[2][3];
logic mif_b_mif_a_rstn[2][3];

// Local parameters generated for C++ constants
localparam logic [31:0] mif_b_mif_a_mm[2][3] = '{ '{ 2, 2, 2 }, '{ 2, 2, 2 } };

// Assignments generated for C++ channel arrays
assign mif_b_clk[0] = clk;
assign mif_b_clk[1] = clk;
assign mif_b_rstn[0] = rstn;
assign mif_b_rstn[1] = rstn;
assign mif_b_req = req;
assign mif_b_mif_aa_clk = mif_b_clk;
assign mif_b_mif_aa_rstn = mif_b_rstn;
assign mif_b_mif_a_clk[0][0] = mif_b_clk[0];
assign mif_b_mif_a_clk[0][1] = mif_b_clk[0];
assign mif_b_mif_a_clk[0][2] = mif_b_clk[0];
assign mif_b_mif_a_clk[1][0] = mif_b_clk[1];
assign mif_b_mif_a_clk[1][1] = mif_b_clk[1];
assign mif_b_mif_a_clk[1][2] = mif_b_clk[1];
assign mif_b_mif_a_rstn[0][0] = mif_b_rstn[0];
assign mif_b_mif_a_rstn[0][1] = mif_b_rstn[0];
assign mif_b_mif_a_rstn[0][2] = mif_b_rstn[0];
assign mif_b_mif_a_rstn[1][0] = mif_b_rstn[1];
assign mif_b_mif_a_rstn[1][1] = mif_b_rstn[1];
assign mif_b_mif_a_rstn[1][2] = mif_b_rstn[1];

//------------------------------------------------------------------------------
// Method process: mif_aa_methProcA (test_sc_vector_mif5.cpp:31:5) 

always_comb 
begin : mif_aa_methProcA     // test_sc_vector_mif5.cpp:31:5
    mif_b_mif_aa_resp[0] = 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_aa_threadProc (test_sc_vector_mif5.cpp:35:5) 

// Thread-local variables
logic [31:0] mif_b_mif_aa_resp_next[2];

// Next-state combinational logic
always_comb begin : mif_aa_threadProc_comb     // test_sc_vector_mif5.cpp:35:5
    mif_aa_threadProc_func;
end
function void mif_aa_threadProc_func;
    mif_b_mif_aa_resp_next[0] = mif_b_mif_aa_resp[0];
    mif_b_mif_aa_resp_next[0] = mif_b_mif_aa_resp[0] + 1;
endfunction

// Synchronous register update
always_ff @(posedge mif_b_mif_aa_clk[0] or negedge mif_b_mif_aa_rstn[0]) 
begin : mif_aa_threadProc_ff
    if ( ~mif_b_mif_aa_rstn[0] ) begin
        mif_b_mif_aa_resp[0] <= 0;
    end
    else begin
        mif_b_mif_aa_resp[0] <= mif_b_mif_aa_resp_next[0];
    end
end

//------------------------------------------------------------------------------
// Method process: mif_a_methProcA (test_sc_vector_mif5.cpp:31:5) 

always_comb 
begin : mif_a_methProcA     // test_sc_vector_mif5.cpp:31:5
    mif_b_mif_a_resp[0][0] = 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_a_threadProc (test_sc_vector_mif5.cpp:35:5) 

// Thread-local variables
logic [31:0] mif_b_mif_a_resp_next[2][3];

// Next-state combinational logic
always_comb begin : mif_a_threadProc_comb     // test_sc_vector_mif5.cpp:35:5
    mif_a_threadProc_func;
end
function void mif_a_threadProc_func;
    mif_b_mif_a_resp_next[0][0] = mif_b_mif_a_resp[0][0];
    mif_b_mif_a_resp_next[0][0] = mif_b_mif_a_resp[0][0] + 1;
endfunction

// Synchronous register update
always_ff @(posedge mif_b_mif_a_clk[0][0] or negedge mif_b_mif_a_rstn[0][0]) 
begin : mif_a_threadProc_ff
    if ( ~mif_b_mif_a_rstn[0][0] ) begin
        mif_b_mif_a_resp[0][0] <= 0;
    end
    else begin
        mif_b_mif_a_resp[0][0] <= mif_b_mif_a_resp_next[0][0];
    end
end

//------------------------------------------------------------------------------
// Method process: mif_a_methProcA0 (test_sc_vector_mif5.cpp:31:5) 

always_comb 
begin : mif_a_methProcA0     // test_sc_vector_mif5.cpp:31:5
    mif_b_mif_a_resp[0][1] = 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_a_threadProc0 (test_sc_vector_mif5.cpp:35:5) 

// Next-state combinational logic
always_comb begin : mif_a_threadProc0_comb     // test_sc_vector_mif5.cpp:35:5
    mif_a_threadProc0_func;
end
function void mif_a_threadProc0_func;
    mif_b_mif_a_resp_next[0][1] = mif_b_mif_a_resp[0][1];
    mif_b_mif_a_resp_next[0][1] = mif_b_mif_a_resp[0][1] + 1;
endfunction

// Synchronous register update
always_ff @(posedge mif_b_mif_a_clk[0][1] or negedge mif_b_mif_a_rstn[0][1]) 
begin : mif_a_threadProc0_ff
    if ( ~mif_b_mif_a_rstn[0][1] ) begin
        mif_b_mif_a_resp[0][1] <= 0;
    end
    else begin
        mif_b_mif_a_resp[0][1] <= mif_b_mif_a_resp_next[0][1];
    end
end

//------------------------------------------------------------------------------
// Method process: mif_a_methProcA1 (test_sc_vector_mif5.cpp:31:5) 

always_comb 
begin : mif_a_methProcA1     // test_sc_vector_mif5.cpp:31:5
    mif_b_mif_a_resp[0][2] = 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_a_threadProc1 (test_sc_vector_mif5.cpp:35:5) 

// Next-state combinational logic
always_comb begin : mif_a_threadProc1_comb     // test_sc_vector_mif5.cpp:35:5
    mif_a_threadProc1_func;
end
function void mif_a_threadProc1_func;
    mif_b_mif_a_resp_next[0][2] = mif_b_mif_a_resp[0][2];
    mif_b_mif_a_resp_next[0][2] = mif_b_mif_a_resp[0][2] + 1;
endfunction

// Synchronous register update
always_ff @(posedge mif_b_mif_a_clk[0][2] or negedge mif_b_mif_a_rstn[0][2]) 
begin : mif_a_threadProc1_ff
    if ( ~mif_b_mif_a_rstn[0][2] ) begin
        mif_b_mif_a_resp[0][2] <= 0;
    end
    else begin
        mif_b_mif_a_resp[0][2] <= mif_b_mif_a_resp_next[0][2];
    end
end

//------------------------------------------------------------------------------
// Method process: mif_b_methProcB (test_sc_vector_mif5.cpp:81:5) 

always_comb 
begin : mif_b_methProcB     // test_sc_vector_mif5.cpp:81:5
    integer j;
    integer unsigned TMP_0;
    integer unsigned TMP_1;
    mif_b_result[0] = mif_b_mif_aa_resp[0] + mif_b_mif_a_resp[0][0];
    j = mif_b_mif_aa_resp[0] + mif_b_mif_a_resp[0][0];
    if (mif_b_req[0])
    begin
        // Call getData() begin
        TMP_0 = mif_b_mif_aa_resp[0];
        // Call getData() end
        mif_b_result[0] = TMP_0 % 3;
        // Call getData() begin
        TMP_1 = mif_b_mif_a_resp[0][j];
        // Call getData() end
        mif_b_result[0] = TMP_1 % 3;
    end
end

//------------------------------------------------------------------------------
// Method process: mif_aa_methProcA0 (test_sc_vector_mif5.cpp:31:5) 

always_comb 
begin : mif_aa_methProcA0     // test_sc_vector_mif5.cpp:31:5
    mif_b_mif_aa_resp[1] = 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_aa_threadProc0 (test_sc_vector_mif5.cpp:35:5) 

// Next-state combinational logic
always_comb begin : mif_aa_threadProc0_comb     // test_sc_vector_mif5.cpp:35:5
    mif_aa_threadProc0_func;
end
function void mif_aa_threadProc0_func;
    mif_b_mif_aa_resp_next[1] = mif_b_mif_aa_resp[1];
    mif_b_mif_aa_resp_next[1] = mif_b_mif_aa_resp[1] + 1;
endfunction

// Synchronous register update
always_ff @(posedge mif_b_mif_aa_clk[1] or negedge mif_b_mif_aa_rstn[1]) 
begin : mif_aa_threadProc0_ff
    if ( ~mif_b_mif_aa_rstn[1] ) begin
        mif_b_mif_aa_resp[1] <= 0;
    end
    else begin
        mif_b_mif_aa_resp[1] <= mif_b_mif_aa_resp_next[1];
    end
end

//------------------------------------------------------------------------------
// Method process: mif_a_methProcA2 (test_sc_vector_mif5.cpp:31:5) 

always_comb 
begin : mif_a_methProcA2     // test_sc_vector_mif5.cpp:31:5
    mif_b_mif_a_resp[1][0] = 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_a_threadProc2 (test_sc_vector_mif5.cpp:35:5) 

// Next-state combinational logic
always_comb begin : mif_a_threadProc2_comb     // test_sc_vector_mif5.cpp:35:5
    mif_a_threadProc2_func;
end
function void mif_a_threadProc2_func;
    mif_b_mif_a_resp_next[1][0] = mif_b_mif_a_resp[1][0];
    mif_b_mif_a_resp_next[1][0] = mif_b_mif_a_resp[1][0] + 1;
endfunction

// Synchronous register update
always_ff @(posedge mif_b_mif_a_clk[1][0] or negedge mif_b_mif_a_rstn[1][0]) 
begin : mif_a_threadProc2_ff
    if ( ~mif_b_mif_a_rstn[1][0] ) begin
        mif_b_mif_a_resp[1][0] <= 0;
    end
    else begin
        mif_b_mif_a_resp[1][0] <= mif_b_mif_a_resp_next[1][0];
    end
end

//------------------------------------------------------------------------------
// Method process: mif_a_methProcA3 (test_sc_vector_mif5.cpp:31:5) 

always_comb 
begin : mif_a_methProcA3     // test_sc_vector_mif5.cpp:31:5
    mif_b_mif_a_resp[1][1] = 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_a_threadProc3 (test_sc_vector_mif5.cpp:35:5) 

// Next-state combinational logic
always_comb begin : mif_a_threadProc3_comb     // test_sc_vector_mif5.cpp:35:5
    mif_a_threadProc3_func;
end
function void mif_a_threadProc3_func;
    mif_b_mif_a_resp_next[1][1] = mif_b_mif_a_resp[1][1];
    mif_b_mif_a_resp_next[1][1] = mif_b_mif_a_resp[1][1] + 1;
endfunction

// Synchronous register update
always_ff @(posedge mif_b_mif_a_clk[1][1] or negedge mif_b_mif_a_rstn[1][1]) 
begin : mif_a_threadProc3_ff
    if ( ~mif_b_mif_a_rstn[1][1] ) begin
        mif_b_mif_a_resp[1][1] <= 0;
    end
    else begin
        mif_b_mif_a_resp[1][1] <= mif_b_mif_a_resp_next[1][1];
    end
end

//------------------------------------------------------------------------------
// Method process: mif_a_methProcA4 (test_sc_vector_mif5.cpp:31:5) 

always_comb 
begin : mif_a_methProcA4     // test_sc_vector_mif5.cpp:31:5
    mif_b_mif_a_resp[1][2] = 1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: mif_a_threadProc4 (test_sc_vector_mif5.cpp:35:5) 

// Next-state combinational logic
always_comb begin : mif_a_threadProc4_comb     // test_sc_vector_mif5.cpp:35:5
    mif_a_threadProc4_func;
end
function void mif_a_threadProc4_func;
    mif_b_mif_a_resp_next[1][2] = mif_b_mif_a_resp[1][2];
    mif_b_mif_a_resp_next[1][2] = mif_b_mif_a_resp[1][2] + 1;
endfunction

// Synchronous register update
always_ff @(posedge mif_b_mif_a_clk[1][2] or negedge mif_b_mif_a_rstn[1][2]) 
begin : mif_a_threadProc4_ff
    if ( ~mif_b_mif_a_rstn[1][2] ) begin
        mif_b_mif_a_resp[1][2] <= 0;
    end
    else begin
        mif_b_mif_a_resp[1][2] <= mif_b_mif_a_resp_next[1][2];
    end
end

//------------------------------------------------------------------------------
// Method process: mif_b_methProcB0 (test_sc_vector_mif5.cpp:81:5) 

always_comb 
begin : mif_b_methProcB0     // test_sc_vector_mif5.cpp:81:5
    integer j;
    integer unsigned TMP_0;
    integer unsigned TMP_1;
    mif_b_result[1] = mif_b_mif_aa_resp[1] + mif_b_mif_a_resp[1][0];
    j = mif_b_mif_aa_resp[1] + mif_b_mif_a_resp[1][0];
    if (mif_b_req[1])
    begin
        // Call getData() begin
        TMP_0 = mif_b_mif_aa_resp[1];
        // Call getData() end
        mif_b_result[1] = TMP_0 % 3;
        // Call getData() begin
        TMP_1 = mif_b_mif_a_resp[1][j];
        // Call getData() end
        mif_b_result[1] = TMP_1 % 3;
    end
end

//------------------------------------------------------------------------------
// Method process: mainMeth (test_sc_vector_mif5.cpp:128:6) 

always_comb 
begin : mainMeth     // test_sc_vector_mif5.cpp:128:6
    integer unsigned l;
    integer unsigned TMP_0;
    integer unsigned TMP_1;
    // Call getRes() begin
    TMP_0 = mif_b_result[s] + mif_b_mif_aa_resp[s] + mif_b_mif_a_mm[s][0] + mif_b_mif_a_resp[s][1];
    // Call getRes() end
    l = TMP_0;
    // Call getData() begin
    TMP_1 = mif_b_mif_aa_resp[s];
    // Call getData() end
    l = TMP_1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: mainThread (test_sc_vector_mif5.cpp:134:5) 

// Next-state combinational logic
always_comb begin : mainThread_comb     // test_sc_vector_mif5.cpp:134:5
    mainThread_func;
end
function void mainThread_func;
    integer unsigned l;
    integer unsigned TMP_0;
    l = mif_b_mif_aa_resp[s];
    l = mif_b_mif_a_resp[s][0];
    l = mif_b_mif_a_resp[s + 1][s + 2];
    // Call getRes() begin
    TMP_0 = mif_b_result[s] + mif_b_mif_aa_resp[s] + mif_b_mif_a_mm[s][0] + mif_b_mif_a_resp[s][1];
    // Call getRes() end
    l = TMP_0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : mainThread_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

endmodule

