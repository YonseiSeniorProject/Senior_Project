
`timescale 1ns / 1ps

module data_2_row_mem #(
    // SRAM address widths
    parameter ADDR_IN           = 20,           // 2^20 = 1,048,576 > 34x34x512 = 591,872 (HWC)
    parameter ADDR_W            = 18,           // 2^18 = 262,144 > 3x3x512x32 = 147,456 (KH, KW, IC, OC_tile)
    parameter ACT_PER_CORE      = 11,
    parameter WEIGHT_PER_CORE   = 9,
    parameter NUM_DENSE_CORE    = 8,
    parameter NUM_SPARSE_CORE   = 4,
    parameter INPUT_BW          = 8,            // 8bit Data comes from AXI interface
    parameter OUTPUT_BW         = 8             // 8bit Data goes to AXI interface (after Quantization)
)(
    input                       clk,
    input                       resetn,
    // ------------------------------------------------------------------------
    // Start & Done Signals
    // ------------------------------------------------------------------------
    input  wire start,          // Start signal for config_ctrlr operation
    output wire done,           // config_ctrlr operation finished
    // ------------------------------------------------------------------------
    // Configurable Data
    // ------------------------------------------------------------------------
    input  wire [9:0] TOTAL_IC,
    input  wire [5:0] OC,
    input  wire [5:0] IMG_H,
    input  wire [5:0] IMG_W,
    input  wire [2:0] K,
    // ------------------------------------------------------------------------
    // global input inputs & read
    // ------------------------------------------------------------------------
    input  wire signed [INPUT_BW-1:0]   input_mem_data,
    output wire [ADDR_IN-1:0]           input_mem_addr,
    output                              input_mem_en,
    // ------------------------------------------------------------------------
    // global weight inputs & read
    // ------------------------------------------------------------------------
    input  wire signed [INPUT_BW-1:0]   weight_mem_data,
    output wire [ADDR_W-1:0]            weight_mem_addr,
    output                              weight_mem_en,
    // ------------------------------------------------------------------------
    // act_row_mem outputs & write
    // ------------------------------------------------------------------------
    output wire signed [INPUT_BW-1:0]   act_row_mem_data,
    output wire [ACT_PER_CORE-1:0]      act_row_mem_addr,
    // ------------------------------------------------------------------------
    // weight_row_mem outputs & write
    // ------------------------------------------------------------------------
    output wire signed [INPUT_BW-1:0]       weight_row_mem_data,
    output wire [WEIGHT_PER_CORE-1:0]       weight_row_mem_addr,
    // ------------------------------------------------------------------------
    // done signal from cores
    // ------------------------------------------------------------------------
    input wire [NUM_DENSE_CORE-1:0]     which_dense_core_done,
    input wire [NUM_SPARSE_CORE-1:0]    which_sparse_core_done,
    // ------------------------------------------------------------------------
    // start signal to cores
    // ------------------------------------------------------------------------
    output wire [NUM_DENSE_CORE-1:0]        which_dense_core_start,
    output wire [NUM_SPARSE_CORE-1:0]       which_sparse_core_start
    );