pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package test_h is

   func_cnt : aliased int;  -- ./test.h:3
   pragma Import (C, func_cnt, "func_cnt");

   function my_func (arg1 : int) return int;  -- ./test.h:5
   pragma Import (C, my_func, "my_func");

end test_h;