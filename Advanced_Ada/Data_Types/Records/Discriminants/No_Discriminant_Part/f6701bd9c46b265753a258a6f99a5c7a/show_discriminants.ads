package Show_Discriminants is

   type T_No_Discr is private;
   --            ^^^
   --   no discriminant part

private

   type T_No_Discr is null record;

end Show_Discriminants;