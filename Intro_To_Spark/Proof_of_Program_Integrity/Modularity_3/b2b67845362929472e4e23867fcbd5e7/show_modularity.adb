procedure Show_Modularity is

   function Increment (X : Integer) return Integer is
     (X + 1)
     --  info: overflow check proved
     with Pre => X < Integer'Last;

   X : Integer;
begin
   X := Integer'Last - 2;
   X := Increment (X);
   X := X + 1;
   --  info: overflow check proved
end Show_Modularity;