procedure Show_Modularity is

   procedure Increment (X : in out Integer) is
   begin
      X := X + 1;
      --  info: overflow check proved, in call inlined at...
   end Increment;

   X : Integer;
begin
   X := Integer'Last - 2;
   Increment (X);
   X := X + 1;
   --  info: overflow check proved
end Show_Modularity;