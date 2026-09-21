package Arrays is

   type List is array (Natural range <>) of Integer;

   function Value (A : List; X, Y : Integer) return Integer;

end Arrays;