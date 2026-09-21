procedure Show_Access_Check is

   type Integer_Access is
     access all Integer;

   type Safe_Integer_Access is
     not null access all Integer;

   AI  : Integer_Access;
   SAI : Safe_Integer_Access := new Integer;

begin
   SAI := Safe_Integer_Access (AI);
end Show_Access_Check;