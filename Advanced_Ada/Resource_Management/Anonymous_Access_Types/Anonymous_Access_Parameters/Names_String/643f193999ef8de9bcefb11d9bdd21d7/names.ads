package Names is

   function Init (S1, S2 : String)
                  return String;

   procedure Show (N : String);

private

   function Init (S1, S2 : String)
                  return String is
     (S1 & "-" & S2);

end Names;