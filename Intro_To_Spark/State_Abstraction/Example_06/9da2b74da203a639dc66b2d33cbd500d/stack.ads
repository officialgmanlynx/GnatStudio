package Stack with
  Abstract_State => The_Stack
is
   pragma Unevaluated_Use_Of_Old (Allow);

   type Element is new Integer;

   type Element_Array is array (Positive range <>) of Element;
   Max : constant Natural := 100;
   subtype Length_Type is Natural range 0 .. Max;

   procedure Push (E : Element) with
     Post =>
       not Is_Empty and
       (if Is_Full'Old then The_Stack = The_Stack'Old else Peek = E);

   function Peek     return Element with Pre => not Is_Empty;
   function Is_Full  return Boolean;
   function Is_Empty return Boolean;
end Stack;