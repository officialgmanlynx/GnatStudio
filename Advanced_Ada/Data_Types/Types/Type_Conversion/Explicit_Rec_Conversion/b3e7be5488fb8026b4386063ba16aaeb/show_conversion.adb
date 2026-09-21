with Ada.Text_IO; use Ada.Text_IO;
with Custom_Defs; use Custom_Defs;

procedure Show_Conversion is
   T_3 : constant T3 := Init (0.5, 0.4, 0.6);
   T_1 :          T1 := Init (0.0);
   F   : Float;
begin
   --  Explicit conversion from
   --  T3 to Float type
   F := To_Float (T_3);

   Put_Line ("F : " & F'Image);

   --  Explicit conversion from
   --  T3 to T1 type
   T_1 := To_T1 (T_3);

   Put ("T_1 : ");
   Display (T_1);
end Show_Conversion;