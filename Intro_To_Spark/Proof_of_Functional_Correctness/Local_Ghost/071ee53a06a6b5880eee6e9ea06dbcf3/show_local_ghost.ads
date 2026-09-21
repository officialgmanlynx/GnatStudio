package Show_Local_Ghost is

   type T is new Natural;

   function F (X, Y : T) return Boolean is (X > Y) with Ghost;

   function Condition (X : T) return Boolean is (X mod 2 = 0);

   procedure P (X : in out T) with
     Pre  => X < 1_000_000,
     Post => F (X, X'Old);

end Show_Local_Ghost;