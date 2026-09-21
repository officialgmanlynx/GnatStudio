package Fixed_Point_Defs is
   S     : constant := 32;
   Exp   : constant := 15;
   D     : constant := 2.0 ** (-S + Exp + 1);

   type TQ15_31 is delta D
     range -1.0 * 2.0 ** Exp ..
            1.0 * 2.0 ** Exp - D;

   pragma Assert (TQ15_31'Size = S);
end Fixed_Point_Defs;