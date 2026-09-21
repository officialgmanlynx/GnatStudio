with Operations; use Operations;

procedure Show_Param_Association is
   A : Integer := 5;
begin
   --  Positional association
   Add (A, 2.0);

   --  Positional association
   --  (using default value)
   Add (A);

   --  Named association
   Add (Left  => A,
        Right => 2.0);

   --  Named association (inversed order)
   Add (Right => 2.0,
        Left  => A);

   --  Mixed positional / named association
   Add (A, Right => 2.0);
end Show_Param_Association;