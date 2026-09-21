with Ada.Finalization;

package CT_Initialize_Exception is

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

end CT_Initialize_Exception;