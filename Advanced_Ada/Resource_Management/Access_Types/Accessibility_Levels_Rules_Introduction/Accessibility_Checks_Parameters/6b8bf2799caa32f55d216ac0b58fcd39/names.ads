package Names is

   type Name is access all String;

   type Constant_Name is
     access constant String;

   procedure Show (N : Constant_Name);

end Names;