
module scr1_tb_log_cmd();

always_ff @(posedge scr1_top_tb_ahb.i_top.i_imem_ahb.clk) begin

    if (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_resp == 2'b01) begin

        // valid data from ahb router
        if (scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[6 : 0] == 7'b1101111) begin
            // detect and command
            $display("rd = %h, imm = %h", scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[11 : 7], scr1_top_tb_ahb.i_top.i_imem_ahb.imem_rdata[31 : 25]);
        end
    end
end

endmodule