package Stacks is

   pragma Unevaluated_Use_Of_Old (Allow);

   type Stack is private;

   type Element is new Natural;
   type Element_Array is array (Positive range <>) of Element;
   Max : constant Natural := 100;

   function Get_Model (S : Stack) return Element_Array with Ghost;
   --  Returns an array as a model of a stack.

   procedure Push (S : in out Stack; E : Element) with
     Pre  => Get_Model (S)'Length < Max,
     Post => Get_Model (S) = Get_Model (S)'Old & E;

private

   subtype Length_Type is Natural range 0 .. Max;

   type Stack is record
      Top     : Length_Type := 0;
      Content : Element_Array (1 .. Max) := (others => 0);
   end record;

end Stacks;