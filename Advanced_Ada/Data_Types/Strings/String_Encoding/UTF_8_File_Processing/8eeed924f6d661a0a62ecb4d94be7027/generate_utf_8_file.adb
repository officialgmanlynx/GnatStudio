with Ada.Wide_Wide_Text_IO;
use  Ada.Wide_Wide_Text_IO;

procedure Generate_UTF_8_File
  (Output_File_Name : String)
is
   F : File_Type;
begin
   Create (F, Out_File, Output_File_Name);
   Put_Line (F, "♥♫");
   Put_Line (F, "مرحبا يا عالم");
   Close (F);
end Generate_UTF_8_File;