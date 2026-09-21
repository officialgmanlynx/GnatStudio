package Static_Expressions is

   Pi     : constant := 3.1415926535;
   --                   ^^^^^^^^^^^^
   --               universal real type

   Two_Pi : constant := 2 * Pi;
   --                   ^
   --              universal integer type
   --
   --                       Pi
   --                       ^^
   --                 universal real type
   --
   --      => result: universal real type

end Static_Expressions;