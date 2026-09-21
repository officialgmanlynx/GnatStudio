with Ada.Finalization;

package CT_Finalize_Exception is

   type T is tagged private;

   procedure Dummy (E : T);

   procedure Reset_Counter;

private

   type T is new
     Ada.Finalization.Controlled
       with null record;

   overriding
   procedure Initialize (E : in out T);

   overriding
   procedure Adjust (E : in out T);

   overriding
   procedure Finalize (E : in out T);

end CT_Finalize_Exception;