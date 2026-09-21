with Stack; use Stack;

procedure Use_Stack (E : Element) with
  Pre => not Is_Empty
is
   F : Element := Peek;
begin
   Push (E);
   pragma Assert (Peek = E or Peek = F);
end Use_Stack;