package Show_Global_Contracts is

   X, Y, Z : Natural := 0;

   procedure Set_X_To_Y_Plus_Z with
     Global => (Input  => (Y, Z), --  reads values of Y and Z
                Output => X);     --  modifies value of X

   procedure Set_X_To_X_Plus_Y with
     Global => (Input  => Y,  --  reads value of Y
                In_Out => X); --  modifies value of X and
                              --  also reads its initial value

   function Get_Value_Of_X return Natural with
     Global => X;  -- reads the value of the global variable X

   procedure Incr_Parameter_X (X : in out Natural) with
     Global => null; -- do not reference any global variable

end Show_Global_Contracts;