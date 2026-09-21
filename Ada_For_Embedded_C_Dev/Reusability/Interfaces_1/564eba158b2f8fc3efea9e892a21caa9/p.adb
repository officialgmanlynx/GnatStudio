with Ada.Text_IO; use Ada.Text_IO;

package body P is

   procedure Display (D : Small_Display_Type) is
      pragma Unreferenced (D);
   begin
      Put_Line ("Using Small_Display_Type");
   end Display;

   procedure Display (D : Big_Display_Type) is
      pragma Unreferenced (D);
   begin
      Put_Line ("Using Big_Display_Type");
   end Display;

end P;