package Vault is
   type Data is private;
   function Get (X : Data) return Integer;
   procedure Set (X : out Data; Value : Integer);
private
   type Data is record
      Val : Integer;
   end record;
end Vault;