package Counters is

   task Counter is
      entry Get (Result : out Integer);
      entry Increment;
      entry Decrement;
   end Counter;

end Counters;