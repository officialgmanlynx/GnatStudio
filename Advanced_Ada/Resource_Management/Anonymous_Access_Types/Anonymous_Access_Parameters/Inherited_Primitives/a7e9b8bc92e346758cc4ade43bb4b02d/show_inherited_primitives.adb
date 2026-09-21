with Inherited_Primitives;
use  Inherited_Primitives;

procedure Show_Inherited_Primitives is
   Obj       : access T       := new T;
   Obj_Child : access T_Child := new T_Child;
begin
   Proc (Obj);
   Proc (Obj_Child);
   --    ^^^^^^^^^
   --    OK: Proc is inherited!
end Show_Inherited_Primitives;