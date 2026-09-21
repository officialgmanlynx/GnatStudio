procedure Show_Continue is
   function Is_Further_Processing_Needed
     (Dummy : Integer)
      return Boolean
   is
   begin
      --  Dummy implementation
      return False;
   end Is_Further_Processing_Needed;

   A : constant array (1 .. 10) of Integer :=
     (others => 0);
begin
   for E of A loop

      --  Some stuff here...

      if not Is_Further_Processing_Needed (E) then
         goto Continue;
      end if;

      --  Do more stuff...

      <<Continue>>
   end loop;
end Show_Continue;