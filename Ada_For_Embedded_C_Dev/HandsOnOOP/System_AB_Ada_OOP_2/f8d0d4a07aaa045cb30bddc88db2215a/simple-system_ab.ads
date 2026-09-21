with Ada.Finalization;

package Simple.System_AB is

   type AB is limited new Ada.Finalization.Limited_Controlled and
     Activation_IF and Value_Retrieval_IF with private;

   overriding procedure Activate (E : in out AB);
   overriding function Is_Active (E : AB) return Boolean;
   overriding procedure Deactivate (E : in out AB);

   overriding function Value (E : AB) return Float;

   not overriding function Check (E : AB) return Boolean;

private

   type Sys_Base_Class_Access is access Sys_Base'Class;
   type Sys_Base_Array is array (Positive range <>) of Sys_Base_Class_Access;

   type AB is limited new Ada.Finalization.Limited_Controlled and
     Activation_IF and Value_Retrieval_IF with record
      S_Array : Sys_Base_Array (1 .. 2);
   end record;

   overriding procedure Initialize (E : in out AB);
   overriding procedure Finalize   (E : in out AB);

end Simple.System_AB;