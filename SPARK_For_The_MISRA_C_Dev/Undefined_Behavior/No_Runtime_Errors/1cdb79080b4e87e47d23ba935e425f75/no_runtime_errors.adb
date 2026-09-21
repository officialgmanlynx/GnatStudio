package body No_Runtime_Errors is

   procedure Update (A    : in out Nat_Array;
                     I, J : Index_Range;
                     P, Q : Positive) is
   begin
      A (I + J) := P / Q;
   end Update;

end No_Runtime_Errors;