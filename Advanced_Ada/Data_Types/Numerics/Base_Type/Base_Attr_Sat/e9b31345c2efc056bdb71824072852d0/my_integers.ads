package My_Integers is

   subtype One_To_Ten is Integer range 1 .. 10;

   function Sat_Add (V1, V2 : One_To_Ten'Base)
                     return One_To_Ten;

   function Sat_Sub (V1, V2 : One_To_Ten'Base)
                     return One_To_Ten;

end My_Integers;