package Names is

   type Name is access String;

   procedure Lower_And_Show (N : in out Name);

end Names;