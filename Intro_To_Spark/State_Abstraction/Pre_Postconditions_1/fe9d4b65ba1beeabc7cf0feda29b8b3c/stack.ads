package Stack is
   type Element is new Integer;

   function Is_Empty return Boolean;
   function Is_Full  return Boolean;

   procedure Pop (E : out Element) with
     Pre  => not Is_Empty,
     Post => not Is_Full;

   procedure Push (E : Element) with
     Pre  => not Is_Full,
     Post => not Is_Empty;

end Stack;