package body Simple.System_AB is

   procedure Activate (E : in out AB) is
   begin
      E.SA.Activate;
      E.SB.Activate;
   end Activate;

   function Is_Active (E : AB) return Boolean is
     (E.SA.Is_Active and E.SB.Is_Active);

   procedure Deactivate (E : in out AB) is
   begin
      E.SA.Deactivate;
      E.SB.Deactivate;
   end Deactivate;

   function Value (E : AB) return Float is
     ((E.SA.Value + E.SB.Value) / 2.0);

   function Check (E : AB) return Boolean is
      Threshold : constant := 0.1;
   begin
      return abs (E.SA.Value - E.SB.Value) < Threshold;
   end Check;

end Simple.System_AB;