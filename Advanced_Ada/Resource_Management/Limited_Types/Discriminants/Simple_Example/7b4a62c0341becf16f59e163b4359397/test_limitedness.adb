with Simple_Recs; use Simple_Recs;

procedure Test_Limitedness is
   Dummy_1 : Rec (2);
   Dummy_2 : Rec (3);
begin
   Dummy_2 := Dummy_1;
   --  ^^^^^^^^^^^^^^
   --  ERRORS:
   --    1. Cannot assign objects of
   --       limited types.
   --    2. Cannot assign objects with
   --       different discriminants.
end Test_Limitedness;