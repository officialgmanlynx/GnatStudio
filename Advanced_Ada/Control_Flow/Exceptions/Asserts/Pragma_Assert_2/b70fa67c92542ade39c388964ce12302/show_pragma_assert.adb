procedure Show_Pragma_Assert is
   I : constant Integer := 11;

   pragma Assert (I = 10, "I is not 10");
begin
   null;
end Show_Pragma_Assert;