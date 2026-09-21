with Ada.Text_IO; use Ada.Text_IO;

with Float_Data_Processing;
use  Float_Data_Processing;

procedure Show_Access_To_Subprograms is

   procedure Display (F : Float) is
   begin
      Put_Line ("F :" & Float'Image (F));
   end Display;

   D : Data_Container (5);
begin
    Append (D, 1.0);
    Append (D, 2.0);
    Append (D, 3.0);

    Iterate (D, Display'Access);
end Show_Access_To_Subprograms;