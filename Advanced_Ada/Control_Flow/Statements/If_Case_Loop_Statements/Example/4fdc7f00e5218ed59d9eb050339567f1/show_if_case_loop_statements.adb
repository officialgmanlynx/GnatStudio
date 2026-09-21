procedure Show_If_Case_Loop_Statements is
   pragma Warnings (Off);

   Reset     : Boolean := False;
   Increment : Boolean := True;
   Val       : Integer := 0;
begin
   --
   --  If statement
   --
   if Reset then
      Val := 0;
   elsif Increment then
      Val := Val + 1;
   else
      Val := Val - 1;
   end if;

   --
   --  Loop statement
   --
   for I in 1 .. 5 loop
      Val := Val * 2 - I;
   end loop;

   --
   --  Case statement
   --
   case Val is
      when 0 .. 5 =>
         null;
      when others =>
         Val := 5;
   end case;

end Show_If_Case_Loop_Statements;