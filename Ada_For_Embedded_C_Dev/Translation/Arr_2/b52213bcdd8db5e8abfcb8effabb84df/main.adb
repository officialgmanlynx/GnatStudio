procedure Main is
   type Arr is array (Integer) of Integer;
   type Arr_A is access all Arr;

   function F return Arr_A;
   pragma Import (C, F);
begin
   null;
end Main;