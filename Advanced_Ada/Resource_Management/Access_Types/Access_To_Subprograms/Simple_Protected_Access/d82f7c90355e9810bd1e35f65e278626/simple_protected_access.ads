package Simple_Protected_Access is

   type Access_Proc is
     access protected procedure;

   protected Obj is

      procedure Do_Something;

   end Obj;

   Acc : Access_Proc := Obj.Do_Something'Access;

end Simple_Protected_Access;