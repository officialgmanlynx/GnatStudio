with Recs;        use Recs;

procedure Show_Object_Declaration is
   subtype T_5_6 is T (L => 5, M => 6);
   --                  ^^^^^^^^^^^^^^
   --  discriminant constraints for subtype

   A : T_5_6;
begin
   null;
end Show_Object_Declaration;