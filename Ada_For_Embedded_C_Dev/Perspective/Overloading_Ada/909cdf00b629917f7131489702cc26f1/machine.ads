package Machine is
   type Status is (Off, On);
   type Code is new Integer range 0 .. 3;
   type Threshold is new Float range 0.0 .. 10.0;

   function Get (S : Status) return Code;
   function Get (S : Status) return Threshold;

end Machine;