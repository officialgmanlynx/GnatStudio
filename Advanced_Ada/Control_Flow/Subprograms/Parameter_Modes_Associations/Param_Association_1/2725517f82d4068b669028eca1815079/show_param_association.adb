with Operations; use Operations;

procedure Show_Param_Association is
   A : Integer := 5;
begin
   Add (A);
   --  ERROR: cannot decide which
   --         procedure to take
end Show_Param_Association;