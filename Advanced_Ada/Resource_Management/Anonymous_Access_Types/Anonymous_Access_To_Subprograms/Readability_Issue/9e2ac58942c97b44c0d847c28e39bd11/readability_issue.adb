with Readability_Issue.Functions;
use  Readability_Issue.Functions;

package body Readability_Issue is

   function F
     return access
       function (A : Integer)
                 return access
                   function (B : Float)
                       return Integer is
     (Select_Conversion'Access);

end Readability_Issue;