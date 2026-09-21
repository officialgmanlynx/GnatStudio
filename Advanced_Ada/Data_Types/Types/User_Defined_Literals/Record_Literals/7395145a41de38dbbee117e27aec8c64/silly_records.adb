package body Silly_Records is

   function To_Silly (S : Wide_Wide_String)
                      return Silly
   is
   begin
      if S = "Magic" then
         return (X => 42, Y => 42.0);
      else
         return (X => 0, Y => 0.0);
      end if;
   end To_Silly;

end Silly_Records;