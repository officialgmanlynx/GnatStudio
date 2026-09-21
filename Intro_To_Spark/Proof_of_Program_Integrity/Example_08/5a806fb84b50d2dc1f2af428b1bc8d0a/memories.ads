package Memories is

   type Chunk is array (Integer range <>) of Integer
     with Predicate => Chunk'Length >= 10;

   function Is_Too_Coarse (V : Integer) return Boolean;

   procedure Treat_Value (V : out Integer);

end Memories;