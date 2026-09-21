with Recs;        use Recs;

procedure Show_Object_Declaration is
   A : T (L | M => 5);
   --     ^^^^^
   --  multiple selector names
begin
   null;
end Show_Object_Declaration;