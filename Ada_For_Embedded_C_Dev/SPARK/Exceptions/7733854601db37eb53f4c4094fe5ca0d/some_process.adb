with Ada.Text_IO; use Ada.Text_IO;
with Arrays;      use Arrays;

procedure Some_Process is
   L : constant List (1 .. 100) := (others => 42);
begin
   Put_Line (Integer'Image (Value (L, 1, 10)));
exception
   when Constraint_Error =>
      Put_Line ("Constraint_Error caught in Some_Process");
      Put_Line ("Some_Process completes normally");
end Some_Process;