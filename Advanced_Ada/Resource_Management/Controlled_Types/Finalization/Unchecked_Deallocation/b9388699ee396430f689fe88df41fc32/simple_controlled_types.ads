with Ada.Finalization;
with Ada.Unchecked_Deallocation;

package Simple_Controlled_Types is

   type T is tagged private;

   procedure Dummy (E : T);

   type T_Access is access T;

   procedure Free (A : in out T_Access);

private

   type T is new
     Ada.Finalization.Controlled
       with null record;

   overriding
   procedure Finalize (E : in out T);

   procedure Free_T_Access is
     new Ada.Unchecked_Deallocation
       (Object => T,
        Name   => T_Access);

   procedure Free (A : in out T_Access)
     renames Free_T_Access;

end Simple_Controlled_Types;