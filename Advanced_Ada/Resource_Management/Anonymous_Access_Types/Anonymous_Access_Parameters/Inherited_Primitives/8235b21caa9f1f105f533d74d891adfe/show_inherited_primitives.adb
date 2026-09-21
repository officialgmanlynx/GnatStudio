with Inherited_Primitives;
use  Inherited_Primitives;

procedure Show_Inherited_Primitives is
   Obj       : T_Access       := new T;
   Obj_Child : T_Child_Access := new T_Child;
begin
   Proc (Obj);
   Proc (Obj_Child);
   --    ^^^^^^^^^
   --    ERROR: Proc is not inherited!
end Show_Inherited_Primitives;