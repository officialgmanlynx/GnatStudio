with Persons; use Persons;

procedure Show_Person is
   S1 : String_Access := new String'("John");
   S2 : String_Access := new String'("Mark");
   P : Person := (Name => S1,
                  Age  => 30);
begin
   P := (Name => S1, Age => 31);
   --            ^^ OK: we didn't change the
   --                   discriminant.
   Show (P);

   --  We can just repeat the discriminant:
   P := (Name => P.Name, Age => 32);
   --            ^^^^^^ OK: we didn't change the
   --                       discriminant.
   Show (P);

   --  Of course, we can change the string itself:
   S1.all := "Mark";
   Show (P);

   P := (Name => S2, Age => 40);
   --            ^^ ERROR: we changed the
   --                      discriminant!
   Show (P);
end Show_Person;