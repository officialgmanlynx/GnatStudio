package Show_Standard_Derivation is

   type Score is new Integer
     range 0 .. 10;
   --  Type Score is derived from
   --  the Integer type.

   type Real_Score is new Float
     range 0.0 .. 10.0;
   --  Type Real_Score is derived from
   --  the Float type.

end Show_Standard_Derivation;