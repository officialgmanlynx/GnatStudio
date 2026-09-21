with P; use P;

procedure Show_Rumplestiltskin_Constructor is

   function Make_Rumplestiltskin return T is
   begin
       return Make_T (Name => "Rumplestiltskin");
   end Make_Rumplestiltskin;

   Rumplestiltskin_Is_My_Name : constant T :=
     Make_Rumplestiltskin;
begin
   null;
end Show_Rumplestiltskin_Constructor;