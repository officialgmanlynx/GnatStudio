package P is

   type List is array (Integer range <>) of Character;

   Data  : List (1 .. 100);
   Index : Integer := Data'First;

   procedure Read (V : out Character);

end P;