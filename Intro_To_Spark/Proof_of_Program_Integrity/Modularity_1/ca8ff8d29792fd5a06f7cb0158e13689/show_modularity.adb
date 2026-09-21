procedure Show_Modularity is

   procedure Increment (X : in out Integer) with
     Pre => X < Integer'Last is
   begin
      X := X + 1;
      --  info: overflow check proved
   end Increment;

   X : Integer;
begin
   X := Integer'Last - 2;
   Increment (X);
   --  After the call, GNATprove no longer knows the value of X

   X := X + 1;
   --  medium: overflow check might fail
end Show_Modularity;