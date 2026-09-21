package Workers is

   task type Worker is
      entry Start;
      entry Stop;
   end Worker;

end Workers;