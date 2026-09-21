with Ada.Text_IO;

procedure Ada_Numeric_Literals is
   Bin_136 : constant := 2#1000_1000#;
   Oct_136 : constant := 8#210#;
   Dec_136 : constant := 10#136#;
   Hex_136 : constant := 16#88#;
   pragma Assert (Bin_136 = 136);
   pragma Assert (Oct_136 = 136);
   pragma Assert (Dec_136 = 136);
   pragma Assert (Hex_136 = 136);

   use Ada.Text_IO;

begin
   Put_Line ("Bin_136 = "
             & Integer'Image (Bin_136));
   Put_Line ("Oct_136 = "
             & Integer'Image (Oct_136));
   Put_Line ("Dec_136 = "
             & Integer'Image (Dec_136));
   Put_Line ("Hex_136 = "
             & Integer'Image (Hex_136));
end Ada_Numeric_Literals;