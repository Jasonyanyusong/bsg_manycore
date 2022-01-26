`include "bsg_vanilla_defines.vh"

module wb_pipeline
  import bsg_vanilla_pkg::*;
  (
    input clk_i
    , input reset_i

    , input wb_signals_s data_i
    , output wb_signals_s data_o
  );

  bsg_dff_reset #(
    .width_p(1)
    ,.reset_val_p(0)
  ) dff_write_rd (
    .clk_i(clk_i)
    ,.reset_i(reset_i)
    ,.data_i(data_i.write_rd)
    ,.data_o(data_o.write_rd)
  );

  bsg_dff_reset #(
    .width_p(1)
    ,.reset_val_p(0)
  ) dff_icache_miss (
    .clk_i(clk_i)
    ,.reset_i(reset_i)
    ,.data_i(data_i.icache_miss)
    ,.data_o(data_o.icache_miss)
  );

  bsg_dff_reset #(
    .width_p(1)
    ,.reset_val_p(0)
  ) dff_clear_sb (
    .clk_i(clk_i)
    ,.reset_i(reset_i)
    ,.data_i(data_i.clear_sb)
    ,.data_o(data_o.clear_sb)
  );



  wire data_en =  data_i.write_rd;  

  bsg_dff_reset_en #(
    .width_p(RV32_reg_addr_width_gp)
    ,.reset_val_p(0)
  ) dff_rd_addr (
    .clk_i(clk_i)
    ,.reset_i(reset_i)
    ,.en_i(data_en)
    ,.data_i(data_i.rd_addr)
    ,.data_o(data_o.rd_addr)
  );

  bsg_dff_en #( 
    .width_p(RV32_reg_data_width_gp)
  ) dff_rf_data (
    .clk_i(clk_i)
    ,.en_i(data_en)
    ,.data_i(data_i.rf_data)
    ,.data_o(data_o.rf_data)
  );


endmodule
