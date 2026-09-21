package Show_Depends_Contracts is

   type T is new Integer;

   X, Y, Z : T := 0;

   procedure Swap (X, Y : in out T) with
     Depends => (X => Y,
                 --  X depends on the initial value of Y
                 Y => X);
                 --  Y depends on the initial value of X

   function Get_Value_Of_X return T with
     Depends => (Get_Value_Of_X'Result => X);
                 --  result depends on the initial value of X

   procedure Set_X_To_Y_Plus_Z with
     Depends => (X => (Y, Z));
                 --  X depends on the initial values of Y and Z

   procedure Set_X_To_X_Plus_Y with
     Depends => (X =>+ Y);
             --  X depends on Y and X's initial value

   procedure Do_Nothing (X : T) with
     Depends => (null => X);
                 --  no output is affected by X

   procedure Set_X_To_Zero with
     Depends => (X => null);
                 --  X depends on no input

end Show_Depends_Contracts;