with Ada.Text_IO;
with Ada.Text_IO.Complex_IO;

procedure Show_Any_Complex
  (Msg : String;
   Val : Complex_Types.Complex)
is
   package Complex_Float_Types_IO is new
     Ada.Text_IO.Complex_IO (Complex_Types);
   use Complex_Float_Types_IO;

   use Ada.Text_IO;
begin
   Put (Msg & " ");
   Put (Val);
   New_Line;
end Show_Any_Complex;