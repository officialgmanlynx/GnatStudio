with Ada.Text_IO; use Ada.Text_IO;

package body Workers is

    task body Worker  is
    begin
       Put_Line ("Task has started.");
       delay 1.0;
       Put_Line ("Task has finished.");
    end Worker;

end Workers;