package Show_Access_Type_Declaration is

   --
   --  Declaring access types:
   --

   --  Access-to-object type
   type Integer_Access is access Integer;

   --  Access-to-subprogram type
   type Init_Integer_Access is access
     function return Integer;

end Show_Access_Type_Declaration;