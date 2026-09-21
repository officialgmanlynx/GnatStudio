with P; use P;

procedure Dispatching_Example is
   T2         :          T_New;
   T_Dispatch : constant T'Class := T2;
begin
   T_Dispatch.Show;
end Dispatching_Example;