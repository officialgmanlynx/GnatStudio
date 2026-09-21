with Ada.Strings.Unbounded;
use  Ada.Strings.Unbounded;

with Persons; use Persons;

procedure Show_Non_Aggregate_Init is
   X : Limited_Person;
begin
   X.Name := To_Unbounded_String ("John Doe");
   X.Age := 25;
end Show_Non_Aggregate_Init;