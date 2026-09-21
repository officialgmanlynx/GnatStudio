package P is

  type Status is (Ready, Waiting,
                  Processing, Done);
  type UInt_3 is range 0 .. 2 ** 3 - 1;

   type Simple_Reg is record
      S     : Status;
      Error : Boolean;
      V1    : UInt_3;
   end record;

   for Simple_Reg use record
      S     at 0 range 0 .. 1;
      --  Bit #2 and 3: reserved!
      Error at 0 range 4 .. 4;
      V1    at 0 range 5 .. 7;
   end record;

end P;