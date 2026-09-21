package Machine_2 is
   type Status is (Off, Waiting, On);
   type Input is new Float range 0.0 .. 10.0;

   function Get (I : Input) return Status;

   function "=" (Left : Input; Right : Status) return Boolean;

end Machine_2;