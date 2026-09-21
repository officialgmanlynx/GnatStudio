package body Volatile_Read is
   procedure P (Y : out Integer) is
   begin
      Y := X - X;  --  ERROR
   end P;
end Volatile_Read;