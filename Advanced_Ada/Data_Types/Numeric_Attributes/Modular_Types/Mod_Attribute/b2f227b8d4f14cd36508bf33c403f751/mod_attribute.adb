package body Mod_Attribute is

   A_Signed_Integer : Integer := -1;

   function F return Formal_Modular is
   begin
      return Formal_Modular'Mod
               (A_Signed_Integer);
   end F;

end Mod_Attribute;