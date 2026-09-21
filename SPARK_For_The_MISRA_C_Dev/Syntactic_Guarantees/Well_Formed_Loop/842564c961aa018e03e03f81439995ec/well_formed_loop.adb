procedure Well_Formed_Loop (C : Boolean) is
   Flag : Boolean := False;
begin
   for I in 0 .. 4 loop
      exit when not Flag;

      if C then
         Flag := True;
      end if;

      I := I + 3;  --  ERROR
   end loop;
end Well_Formed_Loop;