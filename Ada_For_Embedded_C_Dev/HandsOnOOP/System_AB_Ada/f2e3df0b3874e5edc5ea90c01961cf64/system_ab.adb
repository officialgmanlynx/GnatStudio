package body System_AB is

   procedure AB_Activate (E : in out AB) is
   begin
      A_Activate (E.SA);
      B_Activate (E.SB);
   end AB_Activate;

   function AB_Is_Active (E : AB) return Boolean is
   begin
      return A_Is_Active (E.SA) and B_Is_Active (E.SB);
   end AB_Is_Active;

   function AB_Value (E : AB) return Float is
   begin
      return (A_Value (E.SA) + B_Value (E.SB)) / 2.0;
   end AB_Value;

   function AB_Check (E : AB) return Boolean is
      Threshold : constant := 0.1;
   begin
      return abs (A_Value (E.SA) - B_Value (E.SB)) < Threshold;
   end AB_Check;

   procedure AB_Deactivate (E : in out AB) is
   begin
      A_Deactivate (E.SA);
      B_Deactivate (E.SB);
   end AB_Deactivate;

end System_AB;