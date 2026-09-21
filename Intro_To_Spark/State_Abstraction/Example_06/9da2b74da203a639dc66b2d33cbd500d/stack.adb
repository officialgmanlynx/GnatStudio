package body Stack with
  Refined_State => (The_Stack => (Top, Content))
is
   Top     : Length_Type := 0;
   Content : Element_Array (1 .. Max) := (others => 0);

   procedure Push (E : Element) is
   begin
      Top           := Top + 1;
      Content (Top) := E;
   end Push;

   function  Peek     return Element is (Content (Top));
   function  Is_Full  return Boolean is (Top >= Max);
   function  Is_Empty return Boolean is (Top = 0);
end Stack;