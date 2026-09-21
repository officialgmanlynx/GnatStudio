with Ada.Text_IO;

procedure Main is

   My_Data : array (1 .. 5) of Float := [for J in 1 .. 5 => Float (J)];

   function To_Index (Value : Positive) return Positive is
   begin
      Ada.Text_IO.Put_Line ("To_Index is called.");
      return Value;
   end To_Index;

begin
   My_Data (To_Index (1)) := @ ** 2 - 3.0 * @;
   Ada.Text_IO.Put_Line (My_Data'Image);
end Main;