with Ada.Text_IO; use Ada.Text_IO;

package body Counters is

   task body Counter is
      Value : Integer := 0;
   begin
      loop
         select
            accept Increment do
               Value := Value + 1;
            end Increment;
         or
            accept Decrement do
               Value := Value - 1;
            end Decrement;
         or
            accept Get (Result : out Integer) do
               Result := Value;
            end Get;
         or
            delay 5.0;
            Put_Line ("Exiting Counter task...");
            exit;
         end select;
      end loop;
   end Counter;

end Counters;