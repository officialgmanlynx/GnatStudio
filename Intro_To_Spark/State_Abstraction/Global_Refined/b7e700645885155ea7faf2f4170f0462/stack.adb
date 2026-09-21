package body Stack with
  Refined_State => (The_Stack => (Content, Top))
is
   Max : constant := 100;

   type Element_Array is array (1 .. Max) of Element;

   Content : Element_Array := (others => 0);
   Top     : Natural range 0 .. Max := 0;

   procedure Pop (E : out Element) with
     Refined_Global  => (Input  => Content,
                         In_Out => Top),
     Refined_Depends => (Top => Top,
                         E   => (Content, Top))
   is
   begin
      E   := Content (Top);
      Top := Top - 1;
   end Pop;

   procedure Push (E : Element) with
     Refined_Global  => (In_Out => (Content, Top)),
     Refined_Depends => (Content =>+ (Content, Top, E),
                         Top     => Top) is
   begin
     Top := Top + 1;
     Content (Top) := E;
   end Push;

end Stack;