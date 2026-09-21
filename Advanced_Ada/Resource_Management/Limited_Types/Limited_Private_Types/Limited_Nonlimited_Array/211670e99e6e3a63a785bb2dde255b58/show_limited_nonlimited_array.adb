with Limited_Nonlimited_Arrays;
use  Limited_Nonlimited_Arrays;

procedure Show_Limited_Nonlimited_Array is
   A3 : Limited_Private_Array (1 .. 2) :=
          (others => Init);
   A4 : Limited_Private_Array (1 .. 2);
begin
   --  ERROR: this assignment is illegal because
   --  Limited_Private_Array is limited, as
   --  its component is limited at this point.
   A4 := A3;
end Show_Limited_Nonlimited_Array;