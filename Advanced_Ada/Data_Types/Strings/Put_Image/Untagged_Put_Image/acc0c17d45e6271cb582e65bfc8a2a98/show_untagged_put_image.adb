with Ada.Text_IO;        use Ada.Text_IO;

with Untagged_Put_Image; use Untagged_Put_Image;

procedure Show_Untagged_Put_Image is
   Obj_T           : T;
   Obj_T_Derived_1 : T_Derived_1;
   Obj_T_Derived_2 : T_Derived_2;
begin
   Put_Line ("T'Image :           "
             & Obj_T'Image);
   Put_Line ("T_Derived_1'Image : "
             & Obj_T_Derived_1'Image);
   Put_Line ("T_Derived_2'Image : "
             & Obj_T_Derived_2'Image);
end Show_Untagged_Put_Image;