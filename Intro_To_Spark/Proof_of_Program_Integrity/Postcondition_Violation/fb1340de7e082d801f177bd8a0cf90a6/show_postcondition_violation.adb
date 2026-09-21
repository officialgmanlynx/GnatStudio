procedure Show_Postcondition_Violation is

   procedure Absolute (X : in out Integer) with
     Post => X >= 0 is
   begin
      if X > 0 then
         X := -X;
      end if;
   end Absolute;

   X : Integer;

begin
   X := 1;
   Absolute (X);
end Show_Postcondition_Violation;