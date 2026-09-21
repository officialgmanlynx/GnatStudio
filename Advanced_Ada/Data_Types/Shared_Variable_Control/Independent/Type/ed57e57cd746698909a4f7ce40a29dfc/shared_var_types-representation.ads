with System;

package Shared_Var_Types.Representation is

   type Rep_Flags is new Flags;

   for Rep_Flags use record
      F1 at 0 range 0 .. System.Storage_Unit - 1;
      F2 at 1 range 0 .. System.Storage_Unit - 1;
   end record;

end Shared_Var_Types.Representation;