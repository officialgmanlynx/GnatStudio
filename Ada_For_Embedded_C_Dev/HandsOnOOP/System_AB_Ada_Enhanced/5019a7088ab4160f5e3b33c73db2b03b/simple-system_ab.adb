package body Simple.System_AB is

   procedure Activate (E : in out AB) is
   begin
      Activate (E.SA);
      Activate (E.SB);
   end Activate;

   function Is_Active (E : AB) return Boolean is
      (Is_Active (E.SA) and Is_Active (E.SB));

   function Value (E : AB) return Float is
      ((Value (E.SA) + Value (E.SB)) / 2.0);

   function Check (E : AB) return Boolean is
      Threshold : constant := 0.1;
   begin
      return abs (Value (E.SA) - Value (E.SB)) < Threshold;
   end Check;

   procedure Finalize (E : in out AB) is
   begin
      Finalize (E.SA);
      Finalize (E.SB);
   end Finalize;

end Simple.System_AB;