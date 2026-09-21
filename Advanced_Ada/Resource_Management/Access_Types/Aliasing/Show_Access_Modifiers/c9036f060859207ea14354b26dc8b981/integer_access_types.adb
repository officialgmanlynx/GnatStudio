with Ada.Text_IO;          use Ada.Text_IO;

package body Integer_Access_Types is

   I_Var : aliased          Integer :=  0;
   Fact  : aliased constant Integer := 42;

   Dyn_Ptr     : constant Integer_Access
                   := new Integer'(30);
   I_Var_Ptr   : constant Integer_Access_All
                   := I_Var'Access;
   I_Var_C_Ptr : constant Integer_Access_Const
                   := I_Var'Access;
   Fact_Ptr    : constant Integer_Access_Const
                   := Fact'Access;

   procedure Show is
   begin
      Put_Line ("Dyn_Ptr:     "
                & Integer'Image (Dyn_Ptr.all));
      Put_Line ("I_Var_Ptr:   "
                & Integer'Image (I_Var_Ptr.all));
      Put_Line ("I_Var_C_Ptr: "
                & Integer'Image
                    (I_Var_C_Ptr.all));
      Put_Line ("Fact_Ptr:    "
                & Integer'Image (Fact_Ptr.all));
   end Show;

end Integer_Access_Types;