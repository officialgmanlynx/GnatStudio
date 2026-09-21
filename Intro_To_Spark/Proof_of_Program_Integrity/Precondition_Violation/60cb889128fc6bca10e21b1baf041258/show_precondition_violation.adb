procedure Show_Precondition_Violation is

   procedure Increment (X : in out Integer) with
     Pre => X < Integer'Last  is
   begin
      X := X + 1;
   end Increment;

   X : Integer;

begin
   X := Integer'Last;
   Increment (X);
end Show_Precondition_Violation;