# Lab 2: Anna Litovska

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![image](https://user-images.githubusercontent.com/99733524/156934989-c453b44c-5b17-4c33-b7f4-687ec1462066.png)


   Less than:

   ![image](https://user-images.githubusercontent.com/99733524/156935007-75357c5c-fea7-4993-9496-dbddcf0e2610.png)


2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

  ![image](https://user-images.githubusercontent.com/99733524/156935015-9d9abcf1-0059-4f3f-ba94-84ef9d61661f.png)



### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **231581**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "1000"; --8
        s_a <= "0001"; --1
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination COMPLETE_THIS_TEXT FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

![image](https://user-images.githubusercontent.com/99733524/156935151-a3f61d61-4934-4745-90af-cec5bd8e14e5.png)


3. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/DF_V
