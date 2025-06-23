
module scr1_tb_log_cmd();

always_ff @(posedge scr1_top_tb_ahb.i_top.i_imem_ahb.clk) begin

    if (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_resp == 2'b01) begin

        // valid jal data
        if (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[6 : 0] == 7'b1101111) begin
            // csr_mepc and csr_mstatus
            $display("0x341  MEPC = %h,  0x300  MSTATUS = %h", scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mepc[31 : 0], scr1_top_tb_ahb.i_top.i_core_top.i_pipe_top.i_pipe_csr.csr_mstatus[31 : 0]);
        end
    end
end

endmodule