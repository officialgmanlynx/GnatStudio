package Show_Universal_Real_Integer is

   Pi     : constant := 3.1415926535;
   --                   ^^^^^^^^^^^^
   --               universal real type

   Two_Pi : constant := Pi * 2.0;
   --                   ^^^^^^^^
   --                 operation on
   --              universal real type

   N      : constant := 10;
   --                   ^^
   --           universal integer type

   N_10   : constant := N * 10;
   --                   ^^^^^^
   --                operation on
   --           universal integer type

end Show_Universal_Real_Integer;