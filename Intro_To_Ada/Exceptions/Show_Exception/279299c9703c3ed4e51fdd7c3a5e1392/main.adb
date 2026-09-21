with Exceptions; use Exceptions;

procedure Main is
begin
   raise My_Except with "My exception message";
   --  Execution of current control flow
   --  abandoned; an exception of kind
   --  "My_Except" with associated string will
   --  bubble up until it is caught.
end Main;