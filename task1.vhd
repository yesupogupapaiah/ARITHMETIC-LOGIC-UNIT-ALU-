//vhdl code

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ALU Entity Declaration
entity ALU is
    Port (
        A          : in  STD_LOGIC_VECTOR(3 downto 0);  -- 4-bit input A
        B          : in  STD_LOGIC_VECTOR(3 downto 0);  -- 4-bit input B
        control    : in  STD_LOGIC_VECTOR(2 downto 0);  -- 3-bit control input
        result     : out STD_LOGIC_VECTOR(3 downto 0);  -- 4-bit result output
        carry_out  : out STD_LOGIC                     -- Carry output for addition and subtraction
    );
end ALU;

-- ALU Architecture Definition
architecture Behavioral of ALU is
begin
    process(A, B, control)
    begin
        case control is
            when "000" =>  -- Addition
                result <= A + B;
                carry_out <= '0';  -- For simplicity, not using carry for addition directly
            when "001" =>  -- Subtraction
                result <= A - B;
                carry_out <= '0';  -- Not using carry directly for subtraction
            when "010" =>  -- AND
                result <= A and B;
                carry_out <= '0';
            when "011" =>  -- OR
                result <= A or B;
                carry_out <= '0';
            when "100" =>  -- NOT (only A)
                result <= not A;
                carry_out <= '0';
            when others =>  -- Default case
                result <= "0000";
                carry_out <= '0';
        end case;
    end process;
end Behavioral;


          //test bench
          

          library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Testbench Entity for ALU
entity ALU_tb is
end ALU_tb;

-- Testbench Architecture
architecture Behavioral of ALU_tb is

    -- Component Declaration for ALU
    component ALU
        Port (
            A          : in  STD_LOGIC_VECTOR(3 downto 0);
            B          : in  STD_LOGIC_VECTOR(3 downto 0);
            control    : in  STD_LOGIC_VECTOR(2 downto 0);
            result     : out STD_LOGIC_VECTOR(3 downto 0);
            carry_out  : out STD_LOGIC
        );
    end component;

    -- Signals to connect to ALU inputs and outputs
    signal A          : STD_LOGIC_VECTOR(3 downto 0);
    signal B          : STD_LOGIC_VECTOR(3 downto 0);
    signal control    : STD_LOGIC_VECTOR(2 downto 0);
    signal result     : STD_LOGIC_VECTOR(3 downto 0);
    signal carry_out  : STD_LOGIC;

begin

    -- Instantiate the ALU component
    uut: ALU
        Port map (
            A => A,
            B => B,
            control => control,
            result => result,
            carry_out => carry_out
        );

    -- Stimulus process to apply input values
    process
    begin
        -- Test case 1: A = 3, B = 5, Control = 000 (A + B)
        A <= "0011"; B <= "0101"; control <= "000"; 
        wait for 10 ns;
        
        -- Test case 2: A = 9, B = 3, Control = 001 (A - B)
        A <= "1001"; B <= "0011"; control <= "001"; 
        wait for 10 ns;
        
        -- Test case 3: A = 13, B = 11, Control = 010 (A AND B)
        A <= "1101"; B <= "1011"; control <= "010"; 
        wait for 10 ns;
        
        -- Test case 4: A = 13, B = 11, Control = 011 (A OR B)
        A <= "1101"; B <= "1011"; control <= "011"; 
        wait for 10 ns;
        
        -- Test case 5: A = 13, B = 0, Control = 100 (NOT A)
        A <= "1101"; B <= "0000"; control <= "100"; 
        wait for 10 ns;

        -- End the simulation
        wait;
    end process;

end Behavioral;
