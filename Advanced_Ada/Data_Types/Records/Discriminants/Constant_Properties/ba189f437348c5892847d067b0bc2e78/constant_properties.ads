package Constant_Properties is

   type Rec is record
      C : constant Integer;
      --  ^^^^^^^^
      --  ERROR: record components
      --         cannot be constant.
      V :          Integer;
   end record;

end Constant_Properties;