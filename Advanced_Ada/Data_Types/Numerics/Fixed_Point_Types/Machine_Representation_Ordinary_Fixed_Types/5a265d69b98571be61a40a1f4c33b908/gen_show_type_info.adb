with Ada.Text_IO; use Ada.Text_IO;

procedure Gen_Show_Type_Info
  (T_Fixed_Name : String) is
begin
   Put_Line ("The size           of "
             & T_Fixed_Name
             & " is "
             & T_Fixed'Size'Image
             & " bits");
   Put_Line ("The small          of "
             & T_Fixed_Name
             & " is "
             & T_Fixed'Small'Image);
   Put_Line ("The delta    value of "
             & T_Fixed_Name
             & " is "
             & T_Fixed'Delta'Image);
   Put_Line ("The minimum  value of "
             & T_Fixed_Name
             & " is "
             & T_Fixed'First'Image);
   Put_Line ("The maximum  value of "
             & T_Fixed_Name
             & " is "
             & T_Fixed'Last'Image);
   Put_Line ("-----------------------------");
end Gen_Show_Type_Info;