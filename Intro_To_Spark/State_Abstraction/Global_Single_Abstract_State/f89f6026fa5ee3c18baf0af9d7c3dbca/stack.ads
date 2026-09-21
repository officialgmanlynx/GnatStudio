package Stack with
  Abstract_State => The_Stack
is
   type Element is new Integer;

   procedure Pop  (E : out Element) with
     Global  => (In_Out => The_Stack),
     Depends => ((The_Stack, E) => The_Stack);

end Stack;