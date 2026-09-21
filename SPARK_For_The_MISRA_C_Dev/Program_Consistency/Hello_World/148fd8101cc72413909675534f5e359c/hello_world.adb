with Helper; use Helper;

procedure Hello_World is
begin
   Public_Put_Line ("hello, world!");
   Private_Put_Line ("hello, world!");  --  ERROR
   Body_Put_Line ("hello, world!");  --  ERROR
end Hello_World;