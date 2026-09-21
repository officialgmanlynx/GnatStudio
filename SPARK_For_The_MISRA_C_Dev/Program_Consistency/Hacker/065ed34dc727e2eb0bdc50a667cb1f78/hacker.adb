with Information_System;
with Vault;

procedure Hacker is
   V : Integer := Vault.Get (Information_System.Archive);
begin
   Vault.Set (Information_System.Archive, V + 1);
   Information_System.Archive.Val := 0;  --  ERROR
end Hacker;