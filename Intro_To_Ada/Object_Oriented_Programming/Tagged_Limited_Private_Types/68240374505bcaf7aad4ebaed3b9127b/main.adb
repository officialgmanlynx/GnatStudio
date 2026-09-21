with P; use P;

procedure Main is
   T1, T2 : T;
begin
   T1.Init;
   T2.Init;

   --  The following line doesn't work
   --  because type T is private:
   --
   --  T1.E := 0;

   --  The following line doesn't work
   --  because type T is limited:
   --
   --  T2 := T1;
end Main;