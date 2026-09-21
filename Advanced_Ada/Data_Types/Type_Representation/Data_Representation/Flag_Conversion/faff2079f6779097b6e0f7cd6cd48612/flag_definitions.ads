package Flag_Definitions is

   type Flags is
     array (Positive range <>) of Boolean;

   type Packed_Flags is
     array (Positive range <>) of Boolean
       with Pack;

   Default_Flags : constant Flags :=
     (True, True, False, True,
      False, False, True, True);

end Flag_Definitions;