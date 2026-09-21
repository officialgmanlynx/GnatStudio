package body Vault is
   function Get (X : Data) return Integer is (X.Val);
   procedure Set (X : out Data; Value : Integer) is
   begin
      X.Val := Value;
   end Set;
end Vault;