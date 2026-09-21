with P;     use P;
with P.Aux; use P.Aux;

procedure Show_Heap_Constructor is

   type T_Ref is access all T;

   Global : T_Ref;

   procedure Heap_Alloc is
      Local : T_Ref;
      To_Global : Boolean := True;
   begin
      Local := new T'(Make_Rumplestiltskin);
      if To_Global then
         Global := Local;
      end if;
   end Heap_Alloc;

begin
   null;
end Show_Heap_Constructor;