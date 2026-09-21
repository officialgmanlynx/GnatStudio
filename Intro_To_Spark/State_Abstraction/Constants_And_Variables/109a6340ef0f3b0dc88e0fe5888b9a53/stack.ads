package Stack with
  Abstract_State => The_Stack
is
   type Element is new Integer;

   procedure Pop  (E : out Element);
   procedure Push (E : Element);
end Stack;