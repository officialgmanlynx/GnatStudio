pragma Profile (Ravenscar);

with My_Tasks; use My_Tasks;

procedure Main is
   Tab : array (0 .. 3) of My_Task ('W');
begin
   null;
end Main;