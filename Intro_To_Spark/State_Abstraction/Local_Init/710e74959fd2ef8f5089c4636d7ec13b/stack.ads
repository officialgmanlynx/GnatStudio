package Stack with
  Abstract_State => The_Stack,
  Initializes    => The_Stack
is
   type Element is new Integer;

   procedure Pop  (E : out Element);

end Stack;