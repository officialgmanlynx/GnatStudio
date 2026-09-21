with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Enumeration_Image is

   type Months is
     (January, February, March, April,
      May, June, July, August, September,
      October, November, December);

   M : constant Months := January;
begin
   Put_Line ("Month: "
             & Months'Image (M));
end Show_Enumeration_Image;