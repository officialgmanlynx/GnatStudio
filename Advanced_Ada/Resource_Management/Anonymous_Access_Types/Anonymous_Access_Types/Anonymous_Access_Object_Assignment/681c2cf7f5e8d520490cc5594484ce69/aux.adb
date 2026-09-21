with Ada.Text_IO; use Ada.Text_IO;

package body Aux is

   procedure Show (Name : String;
                   V    : Integer_Access) is
   begin
      Put_Line (Name & ".all: "
                & Integer'Image (V.all));
   end Show;

end Aux;