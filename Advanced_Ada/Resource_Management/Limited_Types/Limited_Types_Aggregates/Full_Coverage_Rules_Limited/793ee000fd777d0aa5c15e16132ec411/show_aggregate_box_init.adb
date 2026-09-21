with Ada.Strings.Unbounded;
use  Ada.Strings.Unbounded;

with Persons; use Persons;

procedure Show_Aggregate_Box_Init is
   X : aliased Limited_Person :=
         (Self      => <>,
          Name      =>
            To_Unbounded_String ("John Doe"),
          Age       => 25,
          Shoe_Size => 10);
begin
   null;
end Show_Aggregate_Box_Init;