with Ada.Finalization;
with Ada.Unchecked_Deallocation;

package P is
   type T1 is new
     Ada.Finalization.Controlled with null record;
   procedure Finalize (X : in out T1);

   type T2 is new
     Ada.Finalization.Controlled with null record;
   procedure Finalize (X : in out T2);

   X1 : T1;

   type T2_Ref is access T2;
   procedure Free is new
     Ada.Unchecked_Deallocation (T2, T2_Ref);
end P;