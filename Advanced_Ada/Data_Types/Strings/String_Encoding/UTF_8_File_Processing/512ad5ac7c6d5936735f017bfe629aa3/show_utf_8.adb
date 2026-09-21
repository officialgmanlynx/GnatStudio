with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

with Ada.Strings.UTF_Encoding.Wide_Wide_Strings;
use  Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

with Generate_UTF_8_File;
with Put_Line_UTF_8_Characters;

procedure Show_UTF_8 is

   File_Name : constant String :=
                 "utf-8_test.txt";

   procedure Read_UTF_8_File
     (Input_File_Name : String)
   is
      F : File_Type;
   begin
      Open (F, In_File, Input_File_Name);

      while not End_Of_File (F) loop
         declare
            S_UTF8 : constant UTF_8_String
                       := Get_Line (F);
            S      : constant Wide_Wide_String
                       := Decode (S_UTF8);
         begin
            Put_Line_UTF_8_Characters (S);
         end;
      end loop;
      Close (F);
   end Read_UTF_8_File;

begin
   Generate_UTF_8_File (File_Name);
   Read_UTF_8_File (File_Name);
end Show_UTF_8;