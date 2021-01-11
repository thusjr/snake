library verilog;
use verilog.vl_types.all;
entity dcfifo is
    generic(
        lpm_width       : integer := 1;
        lpm_widthu      : integer := 1;
        lpm_numwords    : integer := 2;
        delay_rdusedw   : integer := 1;
        delay_wrusedw   : integer := 1;
        rdsync_delaypipe: integer := 0;
        wrsync_delaypipe: integer := 0;
        intended_device_family: string  := "Stratix";
        lpm_showahead   : string  := "OFF";
        underflow_checking: string  := "ON";
        overflow_checking: string  := "ON";
        clocks_are_synchronized: string  := "FALSE";
        use_eab         : string  := "ON";
        add_ram_output_register: string  := "OFF";
        lpm_hint        : string  := "USE_EAB=ON";
        lpm_type        : string  := "dcfifo";
        add_usedw_msb_bit: string  := "OFF";
        read_aclr_synch : string  := "OFF";
        write_aclr_synch: string  := "OFF";
        enable_ecc      : string  := "FALSE";
        add_width       : integer := 1;
        ram_block_type  : string  := "AUTO"
    );
    port(
        data            : in     vl_logic_vector;
        rdclk           : in     vl_logic;
        wrclk           : in     vl_logic;
        aclr            : in     vl_logic;
        rdreq           : in     vl_logic;
        wrreq           : in     vl_logic;
        eccstatus       : out    vl_logic_vector(1 downto 0);
        rdfull          : out    vl_logic;
        wrfull          : out    vl_logic;
        rdempty         : out    vl_logic;
        wrempty         : out    vl_logic;
        rdusedw         : out    vl_logic_vector;
        wrusedw         : out    vl_logic_vector;
        q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_width : constant is 1;
    attribute mti_svvh_generic_type of lpm_widthu : constant is 1;
    attribute mti_svvh_generic_type of lpm_numwords : constant is 1;
    attribute mti_svvh_generic_type of delay_rdusedw : constant is 1;
    attribute mti_svvh_generic_type of delay_wrusedw : constant is 1;
    attribute mti_svvh_generic_type of rdsync_delaypipe : constant is 1;
    attribute mti_svvh_generic_type of wrsync_delaypipe : constant is 1;
    attribute mti_svvh_generic_type of intended_device_family : constant is 1;
    attribute mti_svvh_generic_type of lpm_showahead : constant is 1;
    attribute mti_svvh_generic_type of underflow_checking : constant is 1;
    attribute mti_svvh_generic_type of overflow_checking : constant is 1;
    attribute mti_svvh_generic_type of clocks_are_synchronized : constant is 1;
    attribute mti_svvh_generic_type of use_eab : constant is 1;
    attribute mti_svvh_generic_type of add_ram_output_register : constant is 1;
    attribute mti_svvh_generic_type of lpm_hint : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of add_usedw_msb_bit : constant is 1;
    attribute mti_svvh_generic_type of read_aclr_synch : constant is 1;
    attribute mti_svvh_generic_type of write_aclr_synch : constant is 1;
    attribute mti_svvh_generic_type of enable_ecc : constant is 1;
    attribute mti_svvh_generic_type of add_width : constant is 1;
    attribute mti_svvh_generic_type of ram_block_type : constant is 1;
end dcfifo;
