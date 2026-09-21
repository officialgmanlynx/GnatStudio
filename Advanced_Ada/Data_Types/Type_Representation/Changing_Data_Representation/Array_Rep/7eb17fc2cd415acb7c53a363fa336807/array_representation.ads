package Array_Representation is

   type Val is (A, B, C, D, E, F, G, H);

   type Arr is array (1 .. 16) of Val
     with Component_Size => 3;

end Array_Representation;