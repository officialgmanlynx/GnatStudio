with System_A; use System_A;
with System_B; use System_B;

package System_AB is

   type AB is record
      SA : A;
      SB : B;
   end record;

   procedure AB_Activate (E : in out AB);

   function AB_Is_Active (E : AB) return Boolean;

   function AB_Value (E : AB) return Float;

   function AB_Check (E : AB) return Boolean;

   procedure AB_Deactivate (E : in out AB);

end System_AB;