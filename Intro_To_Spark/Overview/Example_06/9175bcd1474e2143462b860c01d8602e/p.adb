package body P
  with SPARK_Mode => On
is
   procedure Store (D : in out Dictionary; W : String) is
      First_Letter : constant Letter := W (W'First);
   begin
      D (First_Letter).Ptr := new String'(W);
   end Store;
end P;