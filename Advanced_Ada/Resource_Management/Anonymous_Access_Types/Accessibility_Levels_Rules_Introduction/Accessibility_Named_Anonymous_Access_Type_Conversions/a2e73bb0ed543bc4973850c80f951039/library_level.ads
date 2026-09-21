package Library_Level is

   type L0_Integer_Access is
     access all Integer;

   L0_Var : aliased Integer;

   L0_IA  : L0_Integer_Access;
   L0_AO  : access Integer;

end Library_Level;