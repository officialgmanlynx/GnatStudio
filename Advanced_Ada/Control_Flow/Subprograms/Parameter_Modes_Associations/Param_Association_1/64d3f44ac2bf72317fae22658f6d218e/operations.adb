package body Operations is

   procedure Add (Left  : in out Integer;
                  Right :        Float := 1.0) is
   begin
      Left := Left + Integer (Right);
   end Add;

end Operations;