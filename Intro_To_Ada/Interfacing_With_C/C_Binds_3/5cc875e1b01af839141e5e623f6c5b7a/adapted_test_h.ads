with System;

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package adapted_test_h is

   type Test is new System.Address;

   function Create return Test;
   pragma Import (C, Create, "test_create");

   procedure Destroy (T : Test);
   pragma Import (C, Destroy, "test_destroy");

   procedure Reset (T : Test);
   pragma Import (C, Reset, "test_reset");

   procedure Set_Name (T    : Test;
                       Name : Interfaces.C.Strings.chars_ptr);  -- ./test.h:11
   pragma Import (C, Set_Name, "test_set_name");

   procedure Set_Address (T       : Test;
                          Address : Interfaces.C.Strings.chars_ptr);
   pragma Import (C, Set_Address, "test_set_address");

   procedure Display (T : Test);  -- ./test.h:15
   pragma Import (C, Display, "test_display");

end adapted_test_h;