package Data_Processing is

   type Data_Container is
     array (Positive range <>) of Float;

   type Init_Function is
     not null access function return Float;

   procedure Process
     (D         : in out Data_Container;
      Init_Func :        Init_Function);

end Data_Processing;