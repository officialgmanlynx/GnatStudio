with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Enumeration_Image is

   type Months is
     (January, February, March, April,
      May, June, July, August, September,
      October, November, December);

   M : constant Months := January;

   function Months_Image (M : Months)
                          return String is
   begin
      case M is
         when January   => return "JANUARY";
         when February  => return "FEBRUARY";
         when March     => return "MARCH";
         when April     => return "APRIL";
         when May       => return "MAY";
         when June      => return "JUNE";
         when July      => return "JULY";
         when August    => return "AUGUST";
         when September => return "SEPTEMBER";
         when October   => return "OCTOBER";
         when November  => return "NOVEMBER";
         when December  => return "DECEMBER";
      end case;
   end Months_Image;

begin
   Put_Line ("Month: "
             & Months_Image (M));
end Show_Enumeration_Image;