package Show_Runtime_Errors is

   type Nat_Array is array (Integer range <>) of Natural;
   --  The values in subtype Natural are 0 , 1, ... Integer'Last

   procedure Update (A : in out Nat_Array; I, J, P, Q : Integer);

end Show_Runtime_Errors;