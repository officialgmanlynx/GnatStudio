package Shared_Var_Types.Representation is

   type Rep_Flags is new Flags;

   for Rep_Flags use record
      F1 at 0 range 0 .. 0;
      F2 at 0 range 1 .. 1;
      --            ^  ERROR: start position of
      --                      F2 is wrong!
      --    ^          ERROR: F1 and F2 share the
      --                      same storage unit!
   end record;

end Shared_Var_Types.Representation;