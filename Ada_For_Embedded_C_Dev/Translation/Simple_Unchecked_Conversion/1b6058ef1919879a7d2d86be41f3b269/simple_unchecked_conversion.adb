with Ada.Text_IO;              use Ada.Text_IO;
with Ada.Unchecked_Conversion;

procedure Simple_Unchecked_Conversion is
   type State is (Off, State_1, State_2)
     with Size => Integer'Size;

   for State use (Off => 0, State_1 => 32, State_2 => 64);

   function As_Integer is new Ada.Unchecked_Conversion (Source => State,
                                                        Target => Integer);

   I : Integer;
begin
   I := As_Integer (State_2);
   Put_Line ("I = " & Integer'Image (I));
end Simple_Unchecked_Conversion;