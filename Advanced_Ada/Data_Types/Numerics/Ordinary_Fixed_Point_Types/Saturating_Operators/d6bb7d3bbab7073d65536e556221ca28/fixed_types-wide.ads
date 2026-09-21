private package Fixed_Types.Wide is

   --  Wide range: "+" and "-" have
   --  different worst cases, and each
   --  contributes one of Wide_Sample's
   --  two bounds. Since Sample'Last
   --  always equals -Sample'First -
   --  Sample'Small, "-"'s extremes
   --  always beat "+"'s by exactly one
   --  Sample'Small.

   --  The smallest possible result is
   --  the smallest sum; the smallest
   --  difference doesn't reach as far.
   Wide_First : constant :=
     Sample'First + Sample'First;

   --  The largest possible result is
   --  the largest difference; the
   --  largest sum doesn't reach as far.
   Wide_Last : constant :=
     Sample'Last - Sample'First;

   type Wide_Sample is
     delta Sample'Small
     range Wide_First .. Wide_Last;

   --  Wide precision: Wide_Product has
   --  two jobs, so it needs two
   --  lower-bound values to compare.
   --
   --  Job 1: hold a raw Sample operand
   --  before multiplying.
   --  (Sample'First is that bound.)
   --
   --  Job 2: hold the product
   --  afterward. Min_Product is the
   --  most negative product two Sample
   --  values can give.
   Min_Product : constant :=
     Sample'First * Sample'Last;

   --  Most positive product.
   Max_Product : constant :=
     Sample'First * Sample'First;

   --  Wide_Product's resolution: double
   --  the fractional bits, so the
   --  product is held exactly, with no
   --  rounding.
   Wide_Delta : constant :=
     Sample'Small * Sample'Small;

   --  The true lower bound is the
   --  smaller of the two values. Which
   --  of the two is smaller depends on
   --  Sample's own bounds, so we derive
   --  it instead of assuming it:
   --
   --  - for a normalized type such as
   --    this one, Sample'First is
   --    always the smaller value;
   --
   --  - for a type with a wider integer
   --    part, such as a Q7.8 type
   --    ranging over -128.0 .. 128.0 -
   --    small, Min_Product is far
   --    smaller instead.
   Wide_Product_First : constant :=
     (if Sample'First < Min_Product
      then Sample'First
      else Min_Product);

   type Wide_Product is
     delta Wide_Delta
     range Wide_Product_First ..
           Max_Product;

end Fixed_Types.Wide;