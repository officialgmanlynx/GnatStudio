package body Q
  with SPARK_Mode => On
is
   procedure Store (D : in out Dictionary; W : String)  is
      First_Letter : constant Letter := W (W'First);
   begin
      D (First_Letter) := New_String_Access (W);
   end Store;
end Q;