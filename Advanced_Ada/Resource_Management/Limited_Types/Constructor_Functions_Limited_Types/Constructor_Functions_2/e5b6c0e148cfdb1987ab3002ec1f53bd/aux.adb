package body Aux is
   function Gen_Singleton_Set
     (Element : OS.Element_Type)
      return OS.Set
   is
   begin
      return S : OS.Set := OS.Empty_Set do
         S.Insert (Element);
      end return;
   end Gen_Singleton_Set;
end Aux;