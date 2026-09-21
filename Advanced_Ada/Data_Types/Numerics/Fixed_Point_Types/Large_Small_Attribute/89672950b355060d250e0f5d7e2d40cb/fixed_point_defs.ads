package Fixed_Point_Defs is
   S     : constant := 32;
   Exp   : constant := 128;
   D     : constant := 2.0 ** (-S + Exp + 1);

   type Fixed is delta D
     range -1.0 * 2.0 ** Exp ..
            1.0 * 2.0 ** Exp - D;

   pragma Assert (Fixed'Size = S);
end Fixed_Point_Defs;