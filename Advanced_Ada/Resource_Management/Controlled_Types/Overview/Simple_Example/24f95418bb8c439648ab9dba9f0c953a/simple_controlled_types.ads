with Ada.Finalization;

package Simple_Controlled_Types is

   type T is tagged private;

   procedure Dummy (E : T);

private

   type T is new
     Ada.Finalization.Controlled
       with null record;

   overriding
   procedure Initialize (E : in out T);

   overriding
   procedure Finalize (E : in out T);

end Simple_Controlled_Types;