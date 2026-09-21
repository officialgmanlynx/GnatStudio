with Persons; use Persons;

procedure Show_Person is

   function Local_Init return Person is
      S : aliased String := "John";
   begin
      return (Name => S'Access, Age => 30);
      --      ^^^^^^^^^^^^^^^^
      --      ERROR: dangling reference!
   end Local_Init;

   P : Person := Local_Init;
begin
   Show (P);
end Show_Person;