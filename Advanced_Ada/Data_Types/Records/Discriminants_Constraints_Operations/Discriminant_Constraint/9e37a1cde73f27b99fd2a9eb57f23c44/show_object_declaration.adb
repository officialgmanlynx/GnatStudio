with Recs;        use Recs;

procedure Show_Object_Declaration is
   A : T (L => 5, M => 6);
   B : T (7, 8);
   C : T (7, M => 8);
begin
   null;
end Show_Object_Declaration;