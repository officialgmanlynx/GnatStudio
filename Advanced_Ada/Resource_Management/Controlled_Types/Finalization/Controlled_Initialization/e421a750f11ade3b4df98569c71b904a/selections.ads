with Ada.Finalization;

package Selections is

   type Selection is private;

   type Selection_1 (S : access Selection) is
     tagged private;

   type Selection_2 (S : access Selection) is
     tagged private;

private

   type Selection is null record;

   type Selection_1 (S : access Selection) is new
     Ada.Finalization.Controlled
       with null record;

   overriding
   procedure Finalize
      (E : in out Selection_1);

   type Selection_2 (S : access Selection) is new
     Ada.Finalization.Controlled
       with null record;

   overriding
   procedure Finalize
     (E : in out Selection_2);

end Selections;