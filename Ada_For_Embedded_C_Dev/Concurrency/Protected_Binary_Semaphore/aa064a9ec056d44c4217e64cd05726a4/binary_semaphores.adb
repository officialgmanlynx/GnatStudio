package body Binary_Semaphores is

   protected body Binary_Semaphore is
      entry Wait when Signaled is
      begin
         Signaled := False;
      end Wait;

      procedure Signal is
      begin
         Signaled := True;
      end Signal;
   end Binary_Semaphore;

end Binary_Semaphores;