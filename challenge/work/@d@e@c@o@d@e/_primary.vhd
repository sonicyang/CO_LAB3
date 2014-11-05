library verilog;
use verilog.vl_types.all;
entity DECODE is
    port(
        ins             : in     vl_logic_vector(31 downto 0);
        op              : out    vl_logic_vector(5 downto 0);
        Rs              : out    vl_logic_vector(4 downto 0);
        Rt              : out    vl_logic_vector(4 downto 0);
        Rd              : out    vl_logic_vector(4 downto 0);
        shamt           : out    vl_logic_vector(4 downto 0);
        func            : out    vl_logic_vector(5 downto 0);
        offset          : out    vl_logic_vector(15 downto 0)
    );
end DECODE;
