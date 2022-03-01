# Lab 2: Anna Litovska

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![image](https://user-images.githubusercontent.com/99733524/156218042-354114a6-95f4-4297-a6ac-53f8ee3f501e.png)


   Less than:

   ![image](https://user-images.githubusercontent.com/99733524/156218278-127ee2a1-d4bf-44bf-a261-79fa2f1f7464.png)


2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![image](https://user-images.githubusercontent.com/99733524/156218429-721fad1a-5e11-4409-92b8-5ff79999302a.png)


### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **231581**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= 1000; -- 8
        s_a <= "0001";        -- 1
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = 1) and
                (s_B_equals_A  = 0) and
                (s_B_less_A    = 0))
        -- If false, then report an error
        report "Input combination COMPLETE_THIS_TEXT FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![image](https://user-images.githubusercontent.com/99733524/156216504-0a10a373-80ec-4a56-8df6-55be1f927d6f.png) --když zada



3. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/DF_V
