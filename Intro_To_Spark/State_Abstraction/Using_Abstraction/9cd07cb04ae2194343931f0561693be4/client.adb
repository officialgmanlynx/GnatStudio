with Increase;
procedure Client is
   X : Integer := 0;
begin
   while X <= 100 loop      --  The loop will terminate
      Increase (X);         --  Increase can be called safely
   end loop;
   pragma Assert (X = 101); --  Will this hold?
end Client;