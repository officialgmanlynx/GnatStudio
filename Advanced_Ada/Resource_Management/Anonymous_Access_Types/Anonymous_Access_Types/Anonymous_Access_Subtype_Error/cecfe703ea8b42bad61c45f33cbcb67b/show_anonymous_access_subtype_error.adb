procedure Show_Anonymous_Access_Subtype_Error is
   subtype Integer_1_10 is Integer range 1 .. 10;

   I_Var : aliased Integer;
   A     : access Integer := I_Var'Access;
   B     : access Integer_1_10;
begin
   A := I_Var'Access;

   B := A;
   --  ^ ERROR: subtype doesn't match!

   B := I_Var'Access;
   --  ^ ERROR: subtype doesn't match!
end Show_Anonymous_Access_Subtype_Error;