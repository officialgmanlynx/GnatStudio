with Ada.Text_IO; use Ada.Text_IO;

procedure Real_Integer_Literals is
   Integer_Literal : constant := 365;
   Real_Literal    : constant := 365.2564;
begin
   Put_Line ("Integer Literal: "
             & Integer_Literal'Image);
   Put_Line ("Real Literal:    "
             & Real_Literal'Image);
end Real_Integer_Literals;