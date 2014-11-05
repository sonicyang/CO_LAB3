library verilog;
use verilog.vl_types.all;
entity hazard_det_unit is
    port(
        id_ins_rs       : in     vl_logic_vector(4 downto 0);
        id_ins_rt       : in     vl_logic_vector(4 downto 0);
        cs_stall_check  : in     vl_logic;
        cs_mul_check    : in     vl_logic;
        ex_memread      : in     vl_logic;
        ex_write_num    : in     vl_logic_vector(4 downto 0);
        ex_regwrite     : in     vl_logic;
        mul_stall       : in     vl_logic;
        hdu_stall       : out    vl_logic
    );
end hazard_det_unit;
