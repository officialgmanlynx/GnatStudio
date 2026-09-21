procedure Show_Access_Check is

   type Integer_Access is access Integer;

   AI : Integer_Access;
begin
   AI.all := 10;
end Show_Access_Check;