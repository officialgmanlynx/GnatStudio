with Ada.Text_IO; use Ada.Text_IO;

procedure Decimal_Based_Literals is

   package F_IO is new
     Ada.Text_IO.Float_IO (Float);

   --
   --  DECIMAL LITERALS
   --

   Dec_Integer  : constant := 365;

   Dec_Real     : constant := 365.2564;
   Dec_Real_Exp : constant := 0.365_256_4e3;

   --
   --  BASED LITERALS
   --

   Based_Integer     : constant := 16#16D#;
   Based_Integer_Exp : constant := 5#243#e1;

   Based_Real        : constant :=
     2#1_0110_1101.0100_0001_1010_0011_0111#;
   Based_Real_Exp    : constant :=
     7#1.031_153_643#e3;
begin
   F_IO.Default_Fore := 3;
   F_IO.Default_Aft  := 4;
   F_IO.Default_Exp  := 0;

   Put_Line ("Dec_Integer:       "
             & Dec_Integer'Image);

   Put ("Dec_Real:           ");
   F_IO.Put (Item => Dec_Real);
   New_Line;

   Put ("Dec_Real_Exp:       ");
   F_IO.Put (Item => Dec_Real_Exp);
   New_Line;

   Put_Line ("Based_Integer:     "
             & Based_Integer'Image);
   Put_Line ("Based_Integer_Exp: "
             & Based_Integer_Exp'Image);

   Put ("Based_Real:         ");
   F_IO.Put (Item => Based_Real);
   New_Line;

   Put ("Based_Real_Exp:     ");
   F_IO.Put (Item => Based_Real_Exp);
   New_Line;
end Decimal_Based_Literals;