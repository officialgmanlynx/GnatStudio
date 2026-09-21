package body Show_Immutably_Limited_Types is

   task body TT is
   begin
     accept Start;
     accept Stop;
   end TT;

   protected body PT is
     function Value return Integer is
       (PT.A);
   end PT;

end Show_Immutably_Limited_Types;