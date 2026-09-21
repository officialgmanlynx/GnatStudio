with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Aliased_Components is

   type Integer_Access is access all Integer;

   type Rec is record
      I_Var_1 :         Integer;
      I_Var_2 : aliased Integer;
   end record;

   type Integer_Array is
     array (Positive range <>) of aliased Integer;

   R   : Rec := (22, 24);
   Arr : Integer_Array (1 .. 3) := (others => 42);
   A   : Integer_Access;
begin
   --  A := R.I_Var_1'Access;
   --                 ^ ERROR: cannot access
   --                          non-aliased
   --                          component

   A := R.I_Var_2'Access;
   Put_Line ("A: " & Integer'Image (A.all));

   A := Arr (2)'Access;
   Put_Line ("A: " & Integer'Image (A.all));
end Show_Aliased_Components;