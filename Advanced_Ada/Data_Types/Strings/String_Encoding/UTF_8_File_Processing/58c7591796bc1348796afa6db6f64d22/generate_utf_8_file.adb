with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

procedure Generate_UTF_8_File
  (Output_File_Name : String)
is
   F : File_Type;
begin
   Create (F, Out_File, Output_File_Name);
   Put_Line (F, UTF_8_String'("♥♫"));
   Put_Line
     (F,
      UTF_8_String'("مرحبا يا عالم"));
   Close (F);
end Generate_UTF_8_File;