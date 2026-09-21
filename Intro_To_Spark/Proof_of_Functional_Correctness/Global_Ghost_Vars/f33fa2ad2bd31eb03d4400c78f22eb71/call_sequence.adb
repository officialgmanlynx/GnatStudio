package body Call_Sequence is

   procedure Access_A is
   begin
      --  ...
      Last_Accessed_Is_A := True;
   end Access_A;

   procedure Access_B is
   begin
      --  ...
      Last_Accessed_Is_A := False;
   end Access_B;

end Call_Sequence;