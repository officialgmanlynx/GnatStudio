package Workers is

   task type Worker is
      entry Start (Id : Positive);
      entry Stop;
   end Worker;

   type Worker_Access is access Worker;

   type Worker_Array is
     array (Positive range <>) of Worker_Access;

end Workers;