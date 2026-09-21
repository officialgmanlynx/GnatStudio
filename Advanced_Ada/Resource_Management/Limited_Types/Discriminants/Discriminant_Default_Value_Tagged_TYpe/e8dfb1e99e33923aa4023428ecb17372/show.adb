with Recs; use Recs;

procedure Show is
   A : LTT;
   B : LTT := Init (10, 12);
begin
   Copy (From => B, To => A);
end Show;