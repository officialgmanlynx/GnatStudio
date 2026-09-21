with Null_Recs; use Null_Recs;

procedure Show_Null_Rec is
   A, B : Null_Record;
begin
   B := A + A;
   A := A + B;
end Show_Null_Rec;