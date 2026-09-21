with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.UTF_Encoding;
use  Ada.Strings.UTF_Encoding;

with Ada.Strings.UTF_Encoding.Wide_Wide_Strings;
use  Ada.Strings.UTF_Encoding.Wide_Wide_Strings;

with Generate_UTF_8_File;
with Put_Line_UTF_8_Characters;

procedure Show_UTF_8 is

   File_Name_In  : constant String :=
                     "utf-8_test.txt";
   File_Name_Out : constant String :=
                     "utf-8_copy.txt";

   procedure Read_Write_UTF_8_File
     (Input_File_Name,
     Output_File_Name : String)
   is
      F_In, F_Out : File_Type;
   begin
      Open (F_In, In_File, Input_File_Name);
      Create (F_Out, Out_File, Output_File_Name);

      while not End_Of_File (F_In) loop
         declare
            S : constant Wide_Wide_String :=
                  Decode (Get_Line (F_In));
         begin
            Put_Line_UTF_8_Characters (S);
            Put_Line (F_Out, Encode (S));
         end;
      end loop;

      Close (F_In);
      Close (F_Out);
   end Read_Write_UTF_8_File;

begin
   Generate_UTF_8_File (File_Name_In);

   Read_Write_UTF_8_File
     (Input_File_Name  => File_Name_In,
      Output_File_Name => File_Name_Out);
end Show_UTF_8;