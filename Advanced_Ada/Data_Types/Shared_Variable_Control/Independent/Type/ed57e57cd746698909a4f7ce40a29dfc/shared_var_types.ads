package Shared_Var_Types is

   type Independent_Boolean is new Boolean
     with Independent;

   type Flags is record
      F1 : Independent_Boolean;
      F2 : Independent_Boolean;
   end record;

end Shared_Var_Types;