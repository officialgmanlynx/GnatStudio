with Ada.Text_IO;      use Ada.Text_IO;

with Tagged_Put_Image; use Tagged_Put_Image;

procedure Show_Tagged_Put_Image is
   Obj_T         : T;
   Obj_T_Child_1 : T_Child_1;
   Obj_T_Child_2 : T_Child_2;
   Obj_T_Child_3 : T_Child_3;
begin
   Put_Line ("T'Image :         "
             & Obj_T'Image);
   Put_Line ("--------------------");
   Put_Line ("T_Child_1'Image : "
             & Obj_T_Child_1'Image);
   Put_Line ("--------------------");
   Put_Line ("T_Child_2'Image : "
             & Obj_T_Child_2'Image);
   Put_Line ("--------------------");
   Put_Line ("T_Child_3'Image : "
             & Obj_T_Child_3'Image);
   Put_Line ("--------------------");
   Put_Line ("T'Class'Image :   "
             & T'Class (Obj_T_Child_1)'Image);
end Show_Tagged_Put_Image;