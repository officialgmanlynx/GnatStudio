with Ada.Finalization;

with Subs;       use Subs;
with Selections; use Selections;

package Simple_Controlled_Types is

   type T (S1 : access Selection;
           S2 : access Selection) is
     tagged private;

   procedure Dummy (E : T);

private

   type T (S1 : access Selection;
           S2 : access Selection) is new
     Ada.Finalization.Controlled with
   record
      Sel_1 : Selection_1 (S1);
      Sel_2 : Selection_2 (S2);
      S_1   : Sub_1;
   end record;

   overriding
   procedure Finalize (E : in out T);

end Simple_Controlled_Types;