procedure Much_Ado_About_Little (X, Y, Z : Integer; Success : out Boolean) is

   procedure Ok is
   begin
      Success := True;
   end Ok;

   procedure NOk is
   begin
      Success := False;
   end NOk;

begin
   Success := False;

   for K in Y .. Z loop
      if K < X and not Success then
         Ok;
      end if;
   end loop;

   if X > Y then
      Ok;
   else
      NOk;
   end if;

   if Z > Y then
      NOk;
      return;
   else
      Ok;
      return;
   end if;

   if Success then
      Success := not Success;
   end if;
end Much_Ado_About_Little;