with Ada.Text_IO; use Ada.Text_IO;

procedure Simple_Bitfield is
   type Bit_Field is array (Natural range <>) of Boolean with Pack;

   V : Integer := 0;
   B : Bit_Field (0 .. V'Size - 1)
     with Address => V'Address, Import, Volatile;
begin
   B (2) := True;
   Put_Line ("V = " & Integer'Image (V));
end Simple_Bitfield;