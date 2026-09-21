with Ada.Text_IO;    use Ada.Text_IO;

with Simple_Records; use Simple_Records;

procedure Show_Tagged_Image is
   R       : constant Rec       := Init;
   R_Class : constant Rec'Class := Rec'(Init);
   R_C     : constant Rec_Child := Init;
begin
   Put_Line ("R:       " & R'Image);
   Put_Line ("R_Class: " & R_Class'Image);
   Put_Line ("R_A:     " & R_C'Image);
end Show_Tagged_Image;