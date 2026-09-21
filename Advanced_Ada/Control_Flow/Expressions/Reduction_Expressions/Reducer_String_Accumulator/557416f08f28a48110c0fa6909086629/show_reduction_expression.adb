with Ada.Text_IO; use Ada.Text_IO;

with Ada.Strings.Unbounded;
use  Ada.Strings.Unbounded;

procedure Show_Reduction_Expression is
   type Integer_Array is
     array (Positive range <>) of Integer;

   A : Integer_Array (1 .. 3);

   function Unbounded_String_List
     (Accumulator : Unbounded_String;
      Value       : Integer)
          return Unbounded_String is
   begin
      return Accumulator
             & ", " & Value'Image;
   end Unbounded_String_List;

begin
   A := [2, 3, 4];

   Put_Line ("A = "
             & A'Image);
   Put_Line ("L = "
             & To_String (A'Reduce
               (Unbounded_String_List,
                  To_Unbounded_String ("0"))));
end Show_Reduction_Expression;