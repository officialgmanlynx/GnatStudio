package Data_Processing is

   type Data_Container is
     array (Positive range <>) of Float;

   type Log_Procedure is
     access procedure (D : Data_Container);

   procedure Process
     (D        : in out Data_Container;
      Log_Proc :        Log_Procedure := null);

end Data_Processing;