with Ada.Unchecked_Deallocation;

package Missing_Features is

   --  We cannot specify which pool will be used
   --  in the anonymous access-to-object
   --  allocation; the pool is selected by the
   --  compiler:
   IA : access Integer := new Integer;

   --
   --  All the features below aren't available
   --  for an anonymous access-to-object:
   --

   --  Having a specific storage pool associated
   --  with the access type:
   type String_Access is
     access String;
   --  Automatically creates
   --  String_Access'Storage_Pool

   type Integer_Access is
     access Integer
       with Storage_Pool =>
              String_Access'Storage_Pool;
   --       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   --         Using the pool from another
   --         access type.

   --  Specifying a deallocation function for the
   --  access type:
   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Integer,
        Name   => Integer_Access);

   --  Specifying a limited storage size for
   --  the access type:
   type Integer_Access_Store_128 is
      access Integer
        with Storage_Size => 128;

   --  Limiting the storage size for the
   --  access type to zero:
   type Integer_Access_Store_0 is
      access Integer
        with Storage_Size => 0;

end Missing_Features;