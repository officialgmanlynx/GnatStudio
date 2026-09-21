pragma Ada_2022;

procedure Show_Other_Names is

   type Integer_Access is
     access Integer;

   type Integer_Array is array
     (Positive range <>) of Integer;

   type New_Integer is new
     Integer;

   function Zero
     return New_Integer is
       (0);

   subtype Sub_Integer is
     Integer;

   type Rec is record
      Val : Integer := 0;
   end record;

   type ABC_Enum is
     ('A', 'B', 'C');

   IA  : Integer_Access := new Integer;
   Arr : Integer_Array (1 .. 5) :=
           (others => 0);
   R   : Rec;
   NI  : New_Integer;
   SI  : Sub_Integer;
   E   : ABC_Enum := 'A';
begin
   R.Val := IA.all;
   --       ^^^^^^
   --  explicit dereference

   R.Val := Arr (1);
   --       ^^^^^^^
   --    indexed component

   Arr (1 .. 2) := Arr (3 .. 4);
   --              ^^^^^^^^^^^^
   --                  slice

   Arr (1 .. 2) := (others => R.Val);
   --                         ^^^^^
   --              selected component

   R.Val := Arr'Size;
   --       ^^^^^^^^
   --  attribute reference

   NI := New_Integer (IA.all);
   --    ^^^^^^^^^^^^^^^^^^^^
   --      type conversion

   NI := Zero;
   --    ^^^^
   --  function call

   E  := 'A';
   --    ^^^
   --  character literal

   IA.all := Sub_Integer (R.Val);
   --        ^^^^^^^^^^^^^^^^^^^
   --        qualified expression

   R.Val := @ + 1;
   --       ^
   --  target name
   --
   --  equivalent to:
   --     R.Val := R.Val + 1;

end Show_Other_Names;