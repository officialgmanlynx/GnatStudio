with Ada.Unchecked_Deallocation;

with Simple.System_A; use Simple.System_A;
with Simple.System_B; use Simple.System_B;

package body Simple.System_AB is

   overriding procedure Initialize (E : in out AB) is
   begin
      E.S_Array := (new A, new B);
   end Initialize;

   overriding procedure Finalize   (E : in out AB) is
      procedure Free is
        new Ada.Unchecked_Deallocation (Sys_Base'Class, Sys_Base_Class_Access);
   begin
      for S of E.S_Array loop
         Free (S);
      end loop;
   end Finalize;

   procedure Activate (E : in out AB) is
   begin
      for S of E.S_Array loop
         S.Activate;
      end loop;
   end Activate;

   function Is_Active (E : AB) return Boolean is
     (for all S of E.S_Array => S.Is_Active);

   procedure Deactivate (E : in out AB) is
   begin
      for S of E.S_Array loop
         S.Deactivate;
      end loop;
   end Deactivate;

   function Value (E : AB) return Float is
     ((E.S_Array (1).Value + E.S_Array (2).Value) / 2.0);

   function Check (E : AB) return Boolean is
      Threshold : constant := 0.1;
   begin
      return abs (E.S_Array (1).Value - E.S_Array (2).Value) < Threshold;
   end Check;

end Simple.System_AB;