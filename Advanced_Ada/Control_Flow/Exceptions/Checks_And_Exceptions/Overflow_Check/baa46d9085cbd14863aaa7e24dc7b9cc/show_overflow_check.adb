procedure Show_Overflow_Check is
   A, B : Integer;
begin
   A := Integer'Last;
   B := 1;

   A := A + B;
end Show_Overflow_Check;