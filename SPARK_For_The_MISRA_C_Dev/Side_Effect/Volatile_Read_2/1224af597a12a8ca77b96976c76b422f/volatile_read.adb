package body Volatile_Read is
   procedure P (Y : out Integer) is
      X1 : constant Integer := X;
      X2 : constant Integer := X;
   begin
      Y := X1 - X2;
   end P;
end Volatile_Read;