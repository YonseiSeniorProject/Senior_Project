
`timescale 1ns / 1ps

module mac#(
    // SRAM address widths (enough to cover depth)
    parameter INPUT_BW          = 8,            // 8bit Data comes from AXI interface
    parameter PSUM_BW           = 32            // 8bit Data goes to AXI interface (after Quantization)
    )(
    input wire clk,
    input wire resetn,
    // ------------------------------------------------------------------------
    // Configurable Data
    // ------------------------------------------------------------------------
    input  wire start,
    input  wire [2:0] K,        // Max: 3
    input  wire [5:0] IMG_H,    // Tile_Size_oc_H = 32
    input  wire [5:0] IMG_W,    // Tile_Size_oc_W = 32
    input  wire [7:0] OC,       // Tile_Size_oc = 32
    input  wire [2:0] STRIDE,
    output wire done,
    // ------------------------------------------------------------------------
    // ia_row_mem outputs & write
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]   ia_row_mem_data,
    // ------------------------------------------------------------------------
    // weight_row_mem outputs & write
    // ------------------------------------------------------------------------
    input wire signed [INPUT_BW-1:0]       weight_row_mem_data,
    // ------------------------------------------------------------------------
    // psum from core 32bit x 32rows (2-D shape array like wire or reg ports is not supported in verilog)
    // ------------------------------------------------------------------------
    output wire [PSUM_BW-1:0] psum
    );
    
    endmodule