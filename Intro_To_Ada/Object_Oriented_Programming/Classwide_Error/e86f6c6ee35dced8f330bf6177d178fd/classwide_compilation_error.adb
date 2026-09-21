with P; use P;

procedure Classwide_Compilation_Error is
   T_Arr  : array (1 .. 2) of T'Class;
   --                         ^
   --               Compilation Error!
begin
   for I in T_Arr'Range loop
      T_Arr (I).Show;
   end loop;
end Classwide_Compilation_Error;