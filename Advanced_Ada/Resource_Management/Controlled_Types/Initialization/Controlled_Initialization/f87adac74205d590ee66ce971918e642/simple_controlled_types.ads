with Ada.Finalization;

with Subs;       use Subs;
with Selections; use Selections;
with Workers;    use Workers;

package Simple_Controlled_Types is

   type T (S : access Selection) is
     tagged limited private;

   procedure Start_Work (E : T);
   procedure Stop_Work (E : T);

private

   function Default_Init return Integer;

   type T (S : access Selection) is new
     Ada.Finalization.Limited_Controlled with
   record
      W     : Worker;
      Sel_1 : Selection_1 (S);
      S1    : Sub_1;
      I     : Integer := Default_Init;
   end record;

   overriding
   procedure Initialize (E : in out T);

end Simple_Controlled_Types;