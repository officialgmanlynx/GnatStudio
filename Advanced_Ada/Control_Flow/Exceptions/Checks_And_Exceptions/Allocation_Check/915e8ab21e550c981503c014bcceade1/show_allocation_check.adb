with P; use P;

procedure Show_Allocation_Check is
   X2 : T2_Ref := new T2;
begin
   Free (X2);
end Show_Allocation_Check;