with Show_Ghost; use Show_Ghost;

procedure Use_Ghost is
   X : T := (True, True, False, False, True);
begin
   Do_Something (X);
end Use_Ghost;