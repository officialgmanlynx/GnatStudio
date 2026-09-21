with P; use P;
package Q
  with SPARK_Mode => On
is
   procedure Store (D : in out Dictionary; W : String);
end Q;