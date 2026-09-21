package P is

   function Max (A, B : Integer) return Integer is
     (declare
         Bigger_A : constant Boolean := (A >= B);
      begin
         (if Bigger_A then A else B));

end P;