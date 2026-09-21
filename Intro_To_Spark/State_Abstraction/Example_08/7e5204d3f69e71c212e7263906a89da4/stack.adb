package body Stack with
  Refined_State => (The_Stack => (Top, Content))
is

   procedure Push (E : Element) is
   begin
      if Top >= Max then
         return;
      end if;
      Top             := Top + 1;
      Content (Top) := E;
   end Push;

end Stack;