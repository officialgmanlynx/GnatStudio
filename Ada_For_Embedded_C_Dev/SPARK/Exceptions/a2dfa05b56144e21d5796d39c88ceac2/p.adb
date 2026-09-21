procedure P is
begin
   Statements_That_Might_Raise_Exceptions;
exception
   when A =>
      Handle_A;
   when B =>
      Handle_B;
   when C =>
      Handle_C;
end P;