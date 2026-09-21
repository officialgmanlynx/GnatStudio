with Simple_Recs; use Simple_Recs;

procedure Use_Rec_In_Subprogram is
   R1, R2 : Rec;
begin
   R1.I := 1;
   R2   := R1;
end Use_Rec_In_Subprogram;