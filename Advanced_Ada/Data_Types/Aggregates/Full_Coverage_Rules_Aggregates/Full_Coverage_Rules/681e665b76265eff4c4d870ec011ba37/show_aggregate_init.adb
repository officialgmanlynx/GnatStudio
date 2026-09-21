with Ada.Strings.Unbounded;
use  Ada.Strings.Unbounded;

with Persons; use Persons;

procedure Show_Aggregate_Init is

   X : constant Person :=
         (Name =>
            To_Unbounded_String ("John Doe"),
          Age  => 25);
begin
   null;
end Show_Aggregate_Init;