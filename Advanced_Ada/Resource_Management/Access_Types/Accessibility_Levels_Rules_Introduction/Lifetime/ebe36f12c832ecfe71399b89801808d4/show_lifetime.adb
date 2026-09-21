with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Lifetime is
   I_Var_1 : Integer := 22;
begin

   Inner_Block : declare
      I_Var_2 : Integer := 42;
   begin
      Put_Line ("I_Var_1: "
                & Integer'Image (I_Var_1));
      Put_Line ("I_Var_2: "
                & Integer'Image (I_Var_2));

      --  I_Var_2 will get out of scope
      --  when the block finishes.
   end Inner_Block;

   --  I_Var_2 is now out of scope...

   Put_Line ("I_Var_1: "
             & Integer'Image (I_Var_1));
   Put_Line ("I_Var_2: "
             & Integer'Image (I_Var_2));
   --                         ^^^^^^^
   --  ERROR: lifetime of I_Var_2 has ended!
end Show_Lifetime;