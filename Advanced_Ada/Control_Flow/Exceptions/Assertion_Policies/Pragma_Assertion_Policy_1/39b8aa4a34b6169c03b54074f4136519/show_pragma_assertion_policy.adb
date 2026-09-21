procedure Show_Pragma_Assertion_Policy is
   I : constant Integer := 11;

   pragma Assertion_Policy (Assert => Ignore);
begin
   pragma Assert (I = 10);
end Show_Pragma_Assertion_Policy;