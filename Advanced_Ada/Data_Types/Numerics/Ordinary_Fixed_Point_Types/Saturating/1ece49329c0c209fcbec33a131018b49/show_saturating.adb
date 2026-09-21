with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Saturating is

   D : constant := 2.0 ** (-15);

   --  Q15: normalized range,
   --  -1.0 .. 1.0 - small
   type Sample is
     delta D
     range -1.0 .. 1.0 - D;

   function Sat_Add (A, B : Sample)
                     return Sample is
   begin
      return A + B;
   exception
      when Constraint_Error =>
         return (if A >= 0.0
                 then Sample'Last
                 else Sample'First);
   end Sat_Add;

   function Sat_Sub (A, B : Sample)
                     return Sample is
   begin
      return A - B;
   exception
      when Constraint_Error =>
         return (if A >= 0.0
                 then Sample'Last
                 else Sample'First);
   end Sat_Sub;

   function Sat_Mul (A, B : Sample)
                     return Sample is
   begin
      return Sample (A * B);
   exception
      when Constraint_Error =>
         return (if (A >= 0.0) = (B >= 0.0)
                 then Sample'Last
                 else Sample'First);
   end Sat_Mul;

begin
   Put_Line ("0.5 + 0.75    = "
             & Sat_Add (0.5, 0.75)'Image);
   Put_Line ("(-1.0)*(-1.0) = "
             & Sat_Mul (-1.0, -1.0)'Image);
   Put_Line ("0.5 + 0.25    = "
             & Sat_Add (0.5, 0.25)'Image);
   Put_Line ("-0.5 - 0.75   = "
             & Sat_Sub (-0.5, 0.75)'Image);
end Show_Saturating;