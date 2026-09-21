with Ada.Text_IO; use Ada.Text_IO;

with Unbounded_Stacks;

procedure Show_Unbounded_Stack is

   package Unbounded_Integer_Stacks is new
     Unbounded_Stacks (Element => Integer);
   use Unbounded_Integer_Stacks;

   procedure Print_Pop_Stack
      (S    : in out Unbounded_Stack;
       Name :        String)
   is
      V : Integer;
   begin
      Put_Line ("STACK: " & Name);
      Put ("= ");
      while not Is_Empty (S) loop
         V := Pop (S);
         Put (V'Image & " ");
      end loop;
      New_Line;
   end Print_Pop_Stack;

   Stack   : Unbounded_Stack;
   Stack_2 : Unbounded_Stack;
begin
   for I in 1 .. 10 loop
      Push (Stack, I);
   end loop;

   Stack_2 := Stack;

   for I in 11 .. 20 loop
      Push (Stack, I);
   end loop;

   Print_Pop_Stack (Stack, "Stack");
   Print_Pop_Stack (Stack_2, "Stack_2");

end Show_Unbounded_Stack;