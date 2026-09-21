package Communication is

   type Com_Packet is record
      Key : Boolean;
      Id  : Character;
      Val : Integer range 100 .. 227;
   end record;

   for Com_Packet use record
      Key at 0 range 0 .. 0;
      Id  at 0 range 1 .. 8;
      Val at 0 range 9 .. 15;
   end record;

end Communication;