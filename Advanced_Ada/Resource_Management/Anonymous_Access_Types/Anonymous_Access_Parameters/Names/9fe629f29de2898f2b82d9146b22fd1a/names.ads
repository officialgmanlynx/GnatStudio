package Names is

   function Init (S1, S2 : String)
                  return access String;

   procedure Show (N : access constant String);

private

   function Init (S1, S2 : String)
                  return access String is
     (new String'(S1 & "-" & S2));

end Names;