package Binary_Semaphores is

   protected type Binary_Semaphore is
      entry Wait;
      procedure Signal;
   private
      Signaled : Boolean := False;
   end Binary_Semaphore;

end Binary_Semaphores;