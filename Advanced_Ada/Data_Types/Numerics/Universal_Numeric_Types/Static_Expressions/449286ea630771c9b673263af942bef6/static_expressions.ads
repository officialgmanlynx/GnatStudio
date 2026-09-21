package Static_Expressions is

   Two_Pi : constant := 2 * 3.1415926535;
   --                   ^
   --              universal integer type
   --
   --                       3.1415926535
   --                       ^^^^^^^^^^^^
   --                 universal real type
   --
   --      => result: universal real type

end Static_Expressions;