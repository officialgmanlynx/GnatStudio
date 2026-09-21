with Ada.Text_IO; use Ada.Text_IO;

package body Normalized_Fixed_Point_Types is

   function "+" (L, R : TQ31)
                 return TQ31 is
   begin
      Put_Line
        ("=> Overriding '+'");
      return TQ31 (TQ63 (L) + TQ63 (R));
   end "+";

   function "*" (L, R : TQ31)
                 return TQ31 is
   begin
      Put_Line
        ("=> Custom "
         & "non-overriding '*'");
      return TQ31 (TQ63 (L) * TQ63 (R));
   end "*";

end Normalized_Fixed_Point_Types;