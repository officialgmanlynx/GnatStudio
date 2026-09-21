with Persons; use Persons;

procedure Show_Person is
   S : aliased String := "John";
   P : Person (S'Access);
begin
   P.Age := 30;
   Show (P);
end Show_Person;