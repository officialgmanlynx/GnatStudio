with Ada.Text_IO; use Ada.Text_IO;

procedure Int_Array_Bitfield is
   type Bit_Field is array (Natural range <>) of Boolean with Pack;

   A : array (1 .. 2) of Integer := (others => 0);
   B : Bit_Field (0 .. A'Size - 1)
     with Address => A'Address, Import, Volatile;
begin
   B (2) := True;
   for I in A'Range loop
      Put_Line ("A (" & Integer'Image (I)
                & ")= " & Integer'Image (A (I)));
   end loop;
end Int_Array_Bitfield;