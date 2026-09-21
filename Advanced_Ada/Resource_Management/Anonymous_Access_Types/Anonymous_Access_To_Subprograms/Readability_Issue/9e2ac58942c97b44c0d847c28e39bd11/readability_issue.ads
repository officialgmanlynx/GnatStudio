package Readability_Issue is

   function F
     return access
       function (A : Integer)
                 return access
                   function (B : Float)
                             return Integer;

end Readability_Issue;