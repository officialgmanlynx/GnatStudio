package Call_Sequence is

   type T is new Integer;

   Last_Accessed_Is_A : Boolean := False with Ghost;

   procedure Access_A with
     Post => Last_Accessed_Is_A;

   procedure Access_B with
     Pre  => Last_Accessed_Is_A,
     Post => not Last_Accessed_Is_A;
   --  B can only be accessed after A

end Call_Sequence;