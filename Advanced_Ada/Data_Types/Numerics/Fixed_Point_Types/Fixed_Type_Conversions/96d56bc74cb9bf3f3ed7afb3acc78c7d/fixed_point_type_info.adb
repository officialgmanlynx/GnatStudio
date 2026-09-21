with Ada.Text_IO; use Ada.Text_IO;

package body Fixed_Point_Type_Info is

   procedure Gen_Show_Fixed_Type_Info
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
   end Gen_Show_Fixed_Type_Info;

   procedure Gen_Show_Decimal_Type_Info
     (T_Decimal_Name : String) is
   begin
      Put_Line ("The size           of "
                & T_Decimal_Name
                & " is "
                & T_Decimal'Size'Image
                & " bits");
      Put_Line ("The small          of "
                & T_Decimal_Name
                & " is "
                & T_Decimal'Small'Image);
      Put_Line ("The delta    value of "
                & T_Decimal_Name
                & " is "
                & T_Decimal'Delta'Image);
      Put_Line ("The minimum  value of "
                & T_Decimal_Name
                & " is "
                & T_Decimal'First'Image);
      Put_Line ("The maximum  value of "
                & T_Decimal_Name
                & " is "
                & T_Decimal'Last'Image);
      Put_Line ("-----------------------------");
   end Gen_Show_Decimal_Type_Info;

end Fixed_Point_Type_Info;