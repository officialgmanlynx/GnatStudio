package Stack with
  Abstract_State => The_Stack
is
   pragma Unevaluated_Use_Of_Old (Allow);

   type Stack_Model is private;

   type Element is new Integer;
   type Element_Array is array (Positive range <>) of Element;
   Max : constant Natural := 100;
   subtype Length_Type is Natural range 0 .. Max;

   function Peek      return Element with Pre => not Is_Empty;
   function Is_Full   return Boolean;
   function Is_Empty  return Boolean;
   function Get_Stack return Stack_Model;

   procedure Push (E : Element) with
     Post => not Is_Empty and
       (if Is_Full'Old then Get_Stack = Get_Stack'Old else Peek = E);

private

   type Stack_Model is record
      Top     : Length_Type := 0;
      Content : Element_Array (1 .. Max) := (others => 0);
   end record;

end Stack;