package body Machine_2 is

   function Get (I : Input) return Status is
   begin
      if I >= 0.0 and I < 3.0 then
         return Off;
      elsif I >= 3.0 and I < 6.5 then
         return Waiting;
      else
         return On;
      end if;
   end Get;

   function "=" (Left : Input; Right : Status) return Boolean is
   begin
      return Get (Left) = Right;
   end "=";

end Machine_2;