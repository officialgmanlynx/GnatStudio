package Work_Registry is

   type Work_Id is tagged limited private;

   type Work_Handler is
     access protected procedure (T : Work_Id);

   subtype Valid_Work_Handler is
     not null Work_Handler;

   type Work_Handlers is
     array (Positive range <>) of Work_Handler;

   protected type Work_Handler_Registry
     (Last : Positive)
   is

      procedure Register (T : Valid_Work_Handler);

      procedure Reset;

      procedure Process_All;

   private

      D    : Work_Handlers (1 .. Last);
      Curr : Natural := 0;

   end Work_Handler_Registry;

private

   type Work_Id is tagged limited null record;

end Work_Registry;