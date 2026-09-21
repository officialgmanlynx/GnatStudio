package Names is

   type Name is access String;

   procedure Show (N : Name)
     with Post => N.all'Old = N.all;
   --             ^^^^^^^^^^^^^^^^^
   --     we promise that we won't change
   --     the object

end Names;