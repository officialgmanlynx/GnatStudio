package Stack with
  Abstract_State => The_Stack
is
   type Element is new Integer;

   procedure Pop  (E : out Element);
   procedure Push (E : Element);

private

   Max : constant := 100;

   type Element_Array is array (1 .. Max) of Element;

   Content : Element_Array          with Part_Of => The_Stack;
   Top     : Natural range 0 .. Max with Part_Of => The_Stack;

end Stack;