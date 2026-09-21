with Simple.System_A; use Simple.System_A;
with Simple.System_B; use Simple.System_B;

package Simple.System_AB is

   type AB is private;

   procedure Activate (E : in out AB);

   function Is_Active (E : AB) return Boolean;

   function Value (E : AB) return Float;

   function Check (E : AB) return Boolean;

   procedure Finalize (E : in out AB);

private

   type AB is record
      SA : A;
      SB : B;
   end record;

end Simple.System_AB;