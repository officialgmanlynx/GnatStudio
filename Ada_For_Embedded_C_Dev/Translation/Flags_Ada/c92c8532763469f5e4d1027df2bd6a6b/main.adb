procedure Main is
   type Values is (Flag_1, Flag_2, Flag_3, Flag_4);
   type Value_Array is array (Values) of Boolean
     with Pack;

   Value : Value_Array :=
      (Flag_2 => True,
       Flag_4 => True,
       others => False);
begin
   null;
end Main;