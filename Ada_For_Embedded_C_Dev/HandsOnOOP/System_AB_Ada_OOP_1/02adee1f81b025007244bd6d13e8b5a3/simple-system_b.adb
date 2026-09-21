package body Simple.System_B is

   procedure Activate (E : in out B) is
   begin
      E.Val := 0.0;
      Sys_Base (E).Activate;
   end Activate;

   function Value (E : B) return Float is
     (E.Val);

end Simple.System_B;