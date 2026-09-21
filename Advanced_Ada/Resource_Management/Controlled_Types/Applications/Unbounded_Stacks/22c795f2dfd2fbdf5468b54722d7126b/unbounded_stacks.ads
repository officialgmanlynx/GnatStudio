with Ada.Finalization;

generic
   Default_Chunk_Size : Positive := 5;
   type Element is private;
package Unbounded_Stacks is

   Stack_Underflow : exception;

   type Unbounded_Stack is private;

   procedure Push (S : in out Unbounded_Stack;
                   E :        Element);

   function Pop (S : in out Unbounded_Stack)
                 return Element;

   function Is_Empty (S : Unbounded_Stack)
                      return Boolean;

private

   type Element_Array is
     array (Positive range <>) of
       Element;

   type Element_Array_Access is
     access Element_Array;

   type Unbounded_Stack is new
     Ada.Finalization.Controlled with
      record
         Chunk_Size : Positive
           := Default_Chunk_Size;
         Data       : Element_Array_Access;
         Top        : Natural := 0;
      end record;

   procedure Initialize
     (S : in out Unbounded_Stack);

   procedure Adjust
     (S : in out Unbounded_Stack);

   procedure Finalize
     (S : in out Unbounded_Stack);

end Unbounded_Stacks;