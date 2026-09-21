with Machine_X; use Machine_X;

procedure Show_By_Copy_By_Ref_Params is
   A : Integer := 5;
begin
   Update_Value (A, A);
end Show_By_Copy_By_Ref_Params;