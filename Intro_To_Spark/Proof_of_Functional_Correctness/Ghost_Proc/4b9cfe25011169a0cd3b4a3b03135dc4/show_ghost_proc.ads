package Show_Ghost_Proc is

   type Nat_Array is array (Integer range <>) of Natural;

   A : Nat_Array (1 .. 100) with Ghost;

   procedure Increase_A with
     Ghost,
     Pre => (for all I in A'Range => A (I) < Natural'Last);

end Show_Ghost_Proc;