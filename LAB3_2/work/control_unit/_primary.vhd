library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        ins             : in     vl_logic_vector(31 downto 0);
        cs_stall_check  : out    vl_logic;
        cs_mul_check    : out    vl_logic;
        cs_jump         : out    vl_logic;
        cs_jr           : out    vl_logic;
        cs_branch       : out    vl_logic;
        cs_branch_ctrl  : out    vl_logic_vector(2 downto 0);
        cs_zero_ext     : out    vl_logic;
        cs_alu_src      : out    vl_logic;
        cs_alu_op       : out    vl_logic_vector(3 downto 0);
        cs_alu_move_cond: out    vl_logic_vector(1 downto 0);
        cs_reg2sn       : out    vl_logic;
        cs_sht          : out    vl_logic;
        cs_shd          : out    vl_logic;
        cs_shp          : out    vl_logic;
        cs_result_sel   : out    vl_logic_vector(1 downto 0);
        cs_reg_dst      : out    vl_logic_vector(1 downto 0);
        cs_mul_regen    : out    vl_logic;
        cs_mul_start    : out    vl_logic;
        cs_mul_sign     : out    vl_logic;
        cs_mul_type     : out    vl_logic_vector(1 downto 0);
        cs_memwrite     : out    vl_logic;
        cs_memread      : out    vl_logic;
        cs_store_op     : out    vl_logic_vector(2 downto 0);
        cs_mhi_en       : out    vl_logic;
        cs_mlo_en       : out    vl_logic;
        cs_align_op     : out    vl_logic_vector(2 downto 0);
        cs_mulreg_sel   : out    vl_logic;
        cs_wbdata_sel   : out    vl_logic_vector(1 downto 0);
        cs_regwrite     : out    vl_logic;
        cs_cpwren       : out    vl_logic;
        cs_cprrsel      : out    vl_logic
    );
end control_unit;
