package Loggers is

   Logged_Failure : exception;

   procedure Log_And_Raise (Msg : String)
     with No_Return;

end Loggers;