procedure Show_Executable_Semantics
  with SPARK_Mode => On
is
   function Add (X, Y : Integer) return Integer is (X + Y)
     with Pre => X + Y in Integer;

   X : Integer;
begin
   X := Add (Integer'Last, 1);
end Show_Executable_Semantics;