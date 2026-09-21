package body P is
   function Add_Max (A : Integer) return Integer is
   begin
      return A + Integer'Last;
   end Add_Max;
end P;