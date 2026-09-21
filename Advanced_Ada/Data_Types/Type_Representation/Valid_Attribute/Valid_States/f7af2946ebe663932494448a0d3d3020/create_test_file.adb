with Ada.Sequential_IO;

procedure Create_Test_File (File_Name : String)
is
   package Integer_Sequential_IO is new
     Ada.Sequential_IO (Integer);
   use Integer_Sequential_IO;

   F : File_Type;
begin
   Create (F, Out_File, File_Name);
   Write (F,  1);
   Write (F,  2);
   Write (F,  4);
   Write (F,  3);
   Write (F,  2);
   Write (F,  10);
   Close (F);
end Create_Test_File;