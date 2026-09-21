with Persons; use Persons;

procedure Show_Person is
   S : aliased String := "John";
   P : Person (S'Access);
   --          ^^^^^^^^ ERROR: cannot use local
   --                          object
   --
   --  We can, however, allocate the string via
   --  new:
   --
   --  S : Access_String := new String'("John");
   --  P : Person (S);
begin
   P.Age := 30;
   Show (P);
end Show_Person;