package Ops is
   function Div_Op (A, B : Integer)
                    return Integer is
     (A / B);

   function Rem_Op (A, B : Integer)
                    return Integer is
     (A rem B);

   function Mod_Op (A, B : Integer)
                    return Integer is
     (A mod B);
end Ops;