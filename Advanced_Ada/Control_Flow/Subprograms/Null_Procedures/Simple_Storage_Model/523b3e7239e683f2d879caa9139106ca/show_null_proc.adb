with Ada.Text_IO;    use Ada.Text_IO;
with Simple_Storage; use Simple_Storage;

procedure Show_Null_Proc is
   S : Storage_Model;
begin
   Put_Line ("Setting 24...");
   Set (S, "24");
   Display (S);
end Show_Null_Proc;