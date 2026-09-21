with Ada.Text_IO; use Ada.Text_IO;

package body National_Date_Info is

   procedure Show (Nat_Date : National_Date) is
   begin
      Put_Line ("Country: "
                & Nat_Date.Country);
      Put_Line ("Year:    "
                & Integer'Image
                    (Nat_Date.Date.Year));
   end Show;

end National_Date_Info;