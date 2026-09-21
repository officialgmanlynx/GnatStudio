with Ada.Text_IO; use Ada.Text_IO;

package body Custom_Defs is

   procedure Display (Obj : T1) is
   begin
      Put_Line ("(X => "
                & Obj.X'Image & ")");
   end Display;

   function To_Float (Obj : T3)
                      return Float is
     ((Obj.X + Obj.Y + Obj.Z) / 3.0);

   function To_T1 (Obj : T3)
                   return T1 is
     (Init (To_Float (Obj)));

   procedure Display (Obj : T3) is
   begin
      Put_Line ("(X => "    & Obj.X'Image
                & ", Y => " & Obj.Y'Image
                & ", Z => " & Obj.Z'Image
                & ")");
   end Display;

end Custom_Defs;