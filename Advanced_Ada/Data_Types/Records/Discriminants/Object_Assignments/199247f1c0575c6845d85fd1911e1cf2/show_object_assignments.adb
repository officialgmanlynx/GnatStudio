with Recs;        use Recs;

procedure Show_Object_Assignments is
   A1, A2 : T (5, 6);
   B      : T (7, 8);
begin
   A1 := A2;    --  OK
   B  := A1;    --  ERROR!
end Show_Object_Assignments;