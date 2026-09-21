limited private with Info;

package A is

   type T1 is private;

private

   type T1 is record
      V : Integer := Info.Zero_Const;
      W : Integer := Info.Zero_Func;
   end record;

end A;