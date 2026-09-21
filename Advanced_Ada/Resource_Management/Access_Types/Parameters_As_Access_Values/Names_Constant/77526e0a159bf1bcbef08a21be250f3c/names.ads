package Names is

   type Name is access String;

   type Constant_Name is access constant String;

   procedure Show (N : Constant_Name);

end Names;