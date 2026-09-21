package My_Ints is

   type My_Int_1 is range 1 .. 10;

   function Odd (Arg : My_Int_1)
                 return Boolean;

   type My_Int_2 is new My_Int_1;

end My_Ints;