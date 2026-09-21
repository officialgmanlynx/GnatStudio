procedure Outp is
   procedure Foo (A : out Integer) is
      B : Integer := A;
      --             ^ Warning on reference
      --               to uninitialized A
   begin
      A := B;
   end Foo;
begin
   null;
end Outp;