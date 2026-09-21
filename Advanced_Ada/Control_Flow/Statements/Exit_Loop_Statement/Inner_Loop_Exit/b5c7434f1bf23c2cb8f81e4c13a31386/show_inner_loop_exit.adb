procedure Show_Inner_Loop_Exit is
   pragma Warnings (Off);

   Cond : Boolean := True;
begin

   Outer_Processing : loop

      Inner_Processing : loop
         exit Outer_Processing when Cond;
      end loop Inner_Processing;

   end loop Outer_Processing;

end Show_Inner_Loop_Exit;