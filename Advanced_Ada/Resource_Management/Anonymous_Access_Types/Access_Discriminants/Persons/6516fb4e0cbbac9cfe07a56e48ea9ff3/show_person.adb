with Persons; use Persons;

procedure Show_Person is
   S : aliased String := "John";
   P : Person (S'Access);
   --          ^^^^^^^^ OK

   --  Allocating the string via new and using it
   --  in P's declaration is OK as well, but we
   --  should manually deallocate it before S
   --  gets out of scope:
   --
   --  S : access String := new String'("John");
   --  P : Person (S);
begin
   P.Age := 30;
   Show (P);
end Show_Person;