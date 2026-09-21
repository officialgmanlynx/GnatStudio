package Show_Map is

   type Nat_Array is array (Positive range <>) of Natural;

   function F (V : Natural) return Natural is
     (if V /= Natural'Last then V + 1 else V);

   procedure Map (A : in out Nat_Array);

end Show_Map;