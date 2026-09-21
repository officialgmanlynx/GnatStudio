with Ada.Finalization;

package Subs is

   type Sub_1 is tagged private;

   type Sub_2 is tagged private;

private

   type Sub_1 is new
     Ada.Finalization.Controlled
       with null record;

   overriding
   procedure Finalize (E : in out Sub_1);

   type Sub_2 is new
     Ada.Finalization.Controlled
       with null record;

   overriding
   procedure Finalize (E : in out Sub_2);

end Subs;