package body Show_Local_Ghost is

   procedure P (X : in out T) is
      X_Init : constant T := X with Ghost;
   begin
      if Condition (X) then
         X := X + 1;
         pragma Assert (F (X, X_Init));
      else
         X := X * 2;
         pragma Assert (F (X, X_Init));
      end if;
   end P;

end Show_Local_Ghost;