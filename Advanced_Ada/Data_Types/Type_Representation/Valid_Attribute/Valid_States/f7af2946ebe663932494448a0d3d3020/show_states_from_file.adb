with States;           use States;
with Create_Test_File;

procedure Show_States_From_File is
   File_Name : constant String := "data.bin";
begin
   Create_Test_File (File_Name);
   Read_Display_States (File_Name);
end Show_States_From_File;