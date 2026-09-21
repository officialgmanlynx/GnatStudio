package Readability_Issue.Functions is

   function To_Integer (V : Float)
                        return Integer is
     (Integer (V));

   function Select_Conversion
     (A : Integer)
      return access
        function (B : Float)
                  return Integer is
     (To_Integer'Access);

end Readability_Issue.Functions;