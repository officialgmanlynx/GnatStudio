procedure Show_Top_Down_Overloading is

   package Types is
      type Sequence is null record;
      type Set is null record;

      function Empty return Sequence is
        ((others => <>));

      function Empty return Set is
        ((others => <>));

      procedure Print_Sequence (S : Sequence) is
        null;

      procedure Print_Set (S : Set) is
        null;
   end Types;

   use Types;

   X : Sequence;
begin
   --  Compiler selects function
   --  Empty return Sequence
   Print_Sequence (Empty);
end Show_Top_Down_Overloading;