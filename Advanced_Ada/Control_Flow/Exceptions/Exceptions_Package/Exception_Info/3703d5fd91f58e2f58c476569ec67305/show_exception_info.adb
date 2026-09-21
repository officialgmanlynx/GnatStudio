with Ada.Text_IO;    use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

procedure Show_Exception_Info is

   Custom_Exception : exception;

   procedure Nested is
   begin
      raise Custom_Exception
        with "We got a problem";
   end Nested;

begin
   Nested;

exception
   when E : others =>
      Put_Line ("Exception info: "
                & Exception_Information (E));
      Put_Line ("Exception name: "
                & Exception_Name (E));
      Put_Line ("Exception msg:  "
                & Exception_Message (E));
end Show_Exception_Info;