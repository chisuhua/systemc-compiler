//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rst;
logic signed [31:0] s;
logic signed [31:0] r1;
logic signed [31:0] r2;
logic signed [31:0] r3;
logic signed [31:0] r4;

//------------------------------------------------------------------------------
// Clocked THREAD: thread1 (test_init_reset_local_var.cpp:37:5) 

// Thread-local variables
logic signed [31:0] r1_next;
logic signed [31:0] k;
logic signed [31:0] k_next;

// Next-state combinational logic
always_comb begin : thread1_comb     // test_init_reset_local_var.cpp:37:5
    thread1_func;
end
function void thread1_func;
    integer l;
    k_next = k;
    r1_next = r1;
    l = k_next;
    r1_next = l;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : thread1_ff
    if ( ~rst ) begin
        integer n;
        integer m;
        integer i;
        integer j;
        n = 0;
        m = 0;
        i = 0;
        m = 41;
        r1 <= m + n;
        k <= 42;
        i = 42;
        j = i + k + n + 1;
        r1 <= j;
    end
    else begin
        r1 <= r1_next;
        k <= k_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_array1 (test_init_reset_local_var.cpp:61:5) 

// Thread-local variables
logic signed [31:0] r2_next;
logic signed [31:0] am[3];
logic signed [31:0] am_next[3];

// Next-state combinational logic
always_comb begin : thread_array1_comb     // test_init_reset_local_var.cpp:61:5
    thread_array1_func;
end
function void thread_array1_func;
    integer l[3];
    am_next = am;
    r2_next = r2;
    l[1] = am_next[0];
    r2_next = l[1];
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : thread_array1_ff
    if ( ~rst ) begin
        integer at[2];
        integer aa[3];
        logic signed [15:0] ab[3];
        integer ac[3];
        aa[0] = 0; aa[1] = 0; aa[2] = 0;
        ac[0] = 0; ac[1] = 0; ac[2] = 0;
        at[0] = 42; at[1] = 43;
        ab[0] = 0; ab[1] = 0; ab[2] = 0;
        r2 <= at[1] + aa[0];
        r2 <= ab[1] + ac[1] + at[1] + aa[0];
    end
    else begin
        r2 <= r2_next;
        am <= am_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_record1 (test_init_reset_local_var.cpp:93:5) 

// Thread-local variables
logic [3:0] recarr_x[3];
logic signed [31:0] r3_next;
logic [3:0] rec_x;
logic [3:0] rec_x_next;

// Next-state combinational logic
always_comb begin : thread_record1_comb     // test_init_reset_local_var.cpp:93:5
    thread_record1_func;
end
function void thread_record1_func;
    logic recarr_b[3];
    integer rec__a;
    logic rec__b;
    logic [3:0] rec__x;
    r3_next = r3;
    rec_x_next = rec_x;
    rec__x = 0;
    r3_next = rec_x_next + rec__x;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : thread_record1_ff
    if ( ~rst ) begin
        integer rec_a;
        logic rec_b;
        integer recarr_a[3];
        logic recarr_b[3];
        rec_a = 0;
        rec_b = 0;
        recarr_a[0] = 0; recarr_a[1] = 0; recarr_a[2] = 0;
        recarr_b[0] = 0; recarr_b[1] = 0; recarr_b[2] = 0;
        rec_x <= 0;
        if (|s)
        begin
            r3 <= recarr_x[1] + rec_x;
            recarr_a[1] = 1;
        end else begin
            r3 <= 0;
        end
    end
    else begin
        r3 <= r3_next;
        rec_x <= rec_x_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_fcall1 (test_init_reset_local_var.cpp:129:5) 

// Thread-local variables
logic signed [31:0] r4_next;

// Next-state combinational logic
always_comb begin : thread_fcall1_comb     // test_init_reset_local_var.cpp:129:5
    thread_fcall1_func;
end
function void thread_fcall1_func;
    integer i;
    r4_next = r4;
    i = 42;    // Call of h()
    r4_next = 0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : thread_fcall1_ff
    if ( ~rst ) begin
        integer i;
        i = 2;    // Call of g()
        i = 3;    // Call of g()
        i = 45;    // Call of g()
        r4 <= i;
    end
    else begin
        r4 <= r4_next;
    end
end

endmodule

