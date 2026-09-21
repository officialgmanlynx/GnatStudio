package P is

   type List is array (Integer range <>) of Character;

   Data : List (1 .. 100);
   Index : Integer := 1;

   procedure Read (V : out Character)
     with Pre => Index in Data'Range;

end P;