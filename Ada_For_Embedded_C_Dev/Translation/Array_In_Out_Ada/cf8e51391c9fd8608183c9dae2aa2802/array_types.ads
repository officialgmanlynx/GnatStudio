package Array_Types is
   type Arr is array (Integer range <>) of Integer;

   procedure P (A : in out Integer; B : in out Arr);
end Array_Types;