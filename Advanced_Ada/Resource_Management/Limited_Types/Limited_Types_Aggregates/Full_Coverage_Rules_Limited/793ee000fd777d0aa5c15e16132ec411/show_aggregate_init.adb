with Ada.Strings.Unbounded;
use  Ada.Strings.Unbounded;
with Persons; use Persons;

procedure Show_Aggregate_Init is

   X : aliased Limited_Person :=
         (Self      => null, -- Wrong!
          Name      =>
            To_Unbounded_String ("John Doe"),
          Age       => 25,
          Shoe_Size => 10);
begin
   X.Self := X'Unchecked_Access;
end Show_Aggregate_Init;