with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Dangling_Reference is

   type Integer_Access is
     access all Integer;

   I_Var_1 : aliased Integer := 22;

   A1    : Integer_Access;
begin
   A1 := I_Var_1'Access;
   Put_Line ("A1.all: "
             & Integer'Image (A1.all));

   Put_Line ("Inner_Block will start now!");

   Inner_Block : declare
      --
      --  I_Var_2 only exists in Inner_Block
      --
      I_Var_2 : aliased Integer := 42;

      --
      --  A2 only exists in Inner_Block
      --
      A2      : Integer_Access;
   begin
      A2 := I_Var_1'Access;
      Put_Line ("A2.all: "
                & Integer'Image (A2.all));

      A1 := I_Var_2'Access;
      --   PROBLEM: A1 and Integer_Access type
      --            have longer lifetime than
      --            I_Var_2

      Put_Line ("A1.all: "
                & Integer'Image (A1.all));

      A2 := I_Var_2'Access;
      --   PROBLEM: A2 has the same lifetime as
      --            I_Var_2, but Integer_Access
      --            type has a longer lifetime.

      Put_Line ("A2.all: "
                & Integer'Image (A2.all));
   end Inner_Block;

   Put_Line ("Inner_Block has ended!");
   Put_Line ("A1.all: "
             & Integer'Image (A1.all));

end Show_Dangling_Reference;