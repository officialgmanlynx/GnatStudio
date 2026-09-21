package Names is

   function Init (S1, S2 : String)
                  return access String;
   --             ^^^^^^^^^^^^^^^^^^^^
   --  Anonymous access type as the access
   --  result type.

   procedure Show (N : access constant String);
   --                  ^^^^^^^^^^^^^^^^^^^^^^
   --  Anonymous access type as a parameter type.

end Names;