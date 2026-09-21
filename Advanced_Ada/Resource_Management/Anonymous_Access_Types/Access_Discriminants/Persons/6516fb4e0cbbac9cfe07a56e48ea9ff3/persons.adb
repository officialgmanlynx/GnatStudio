with Ada.Text_IO; use Ada.Text_IO;

package body Persons is

   procedure Show (P : Person) is
   begin
      Put_Line ("Name = "
                & P.Name.all);
      Put_Line ("Age  = "
                & Integer'Image (P.Age));
   end Show;

end Persons;