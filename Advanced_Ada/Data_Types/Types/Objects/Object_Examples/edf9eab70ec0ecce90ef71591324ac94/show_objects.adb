procedure Show_Objects is

   type New_Integer is new
     Integer;

   type Integer_Array is
     array (Positive range <>) of
       Integer;

   procedure Dummy (Obj : Integer)
     is null;
   --               ^^^
   --              object

   task type TT is
      entry Start (Id : Integer);
      --           ^^
      --         object
   end TT;

   task body TT is
   begin
      accept Start (Id : Integer) do
         null;
      end Start;
   end TT;

   function Add_One (V : Integer)
   --                ^
   --    view of an object
                     return Integer is
   begin
      return V + 1;
      --     ^^^^^
      --     object
   end Add_One;

   Arr : Integer_Array (1 .. 10);
   --  ^^^^^^^^^^^^^^^
   --  object

   NI  : New_Integer;
begin
   Arr (1 .. 3) := (others => 1);
   --  ^^^^^^^^
   --  object
   --              ^^^^^^^^^^^^^
   --                 object

   NI := New_Integer (Arr (1));
   --    ^^^^^^^^^^^^^^^^^^^^^
   --      object

   for I in Arr'Range loop
   --  ^
   --  object

      Arr (I) := Add_One (Arr (I));
      --                  ^^^^^^^
      --                  object
   end loop;
end Show_Objects;