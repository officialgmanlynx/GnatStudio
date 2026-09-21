with Ada.Text_IO;  use Ada.Text_IO;

procedure Show_Out_Uninitialized_Warnings is

    procedure Local (A : in out Integer) is
    begin
       A := 1;
       raise Program_Error;
    end Local;

   B : Integer := 0;

begin
   Local (B);
exception
   when others =>
      Put_Line ("Value for B is"
                & Integer'Image (B));
end Show_Out_Uninitialized_Warnings;