with Ada.Text_IO; use Ada.Text_IO;

procedure Show (Name : String;
                V    : access Integer) is
begin
   Put_Line (Name & ".all: "
             & Integer'Image (V.all));
end Show;