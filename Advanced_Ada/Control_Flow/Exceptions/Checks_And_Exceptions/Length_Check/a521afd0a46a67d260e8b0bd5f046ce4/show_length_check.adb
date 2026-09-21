procedure Show_Length_Check is

   type Integer_Array is
     array (Positive range <>) of Integer;

   procedure Assign (To   : out Integer_Array;
                     From :     Integer_Array) is
   begin
      To := From;
   end Assign;

   Arr_1 : Integer_Array (1 .. 10);
   Arr_2 : Integer_Array (1 .. 9) :=
             (others => 1);

begin
   Assign (Arr_1, Arr_2);
end Show_Length_Check;