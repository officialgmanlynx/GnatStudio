with Ada.Finalization;

with Subs; use Subs;

package Simple_Controlled_Types is

   type T is tagged private;

   procedure Dummy (E : T);

private

   function Default_Init return Integer;

   type T is new
     Ada.Finalization.Controlled with
   record
      S1 : Sub_1;
      S2 : Sub_2;
      I  : Integer := Default_Init;
   end record;

   overriding
   procedure Initialize (E : in out T);

   overriding
   procedure Adjust (E : in out T);

   overriding
   procedure Finalize (E : in out T);

end Simple_Controlled_Types;