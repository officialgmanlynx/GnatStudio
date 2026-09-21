with Ada.Text_IO; use Ada.Text_IO;

package body Workers is

   task body Worker is
      Id : Positive;
   begin
      accept Start (Id : Positive) do
         Worker.Id := Id;
      end Start;
      Put_Line ("Started Worker #"
                & Id'Image);

      accept Stop;

      Put_Line ("Stopped Worker #"
                & Id'Image);
   end Worker;

end Workers;