with Ada.Finalization;

package CT_Finalize_Exception is

   type T is new
     Ada.Finalization.Controlled
   with null record;

   overriding
   procedure Initialize (E : in out T);

   overriding
   procedure Adjust (E : in out T);

   overriding
   procedure Finalize (E : in out T);

   procedure Dummy (E : T);

   procedure Reset_Counter;

end CT_Finalize_Exception;