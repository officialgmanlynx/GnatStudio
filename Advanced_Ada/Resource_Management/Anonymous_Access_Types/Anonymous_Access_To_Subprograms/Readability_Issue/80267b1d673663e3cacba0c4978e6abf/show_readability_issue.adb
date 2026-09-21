with Readability_Issue;
use  Readability_Issue;

procedure Show_Readability_Issue is
   F1 : access
          function (A : Integer)
                    return access
                      function (B : Float)
                                return Integer
        := F;
   F2 : access function (B : Float)
                         return Integer
        := F1 (2);
   I  : Integer := F2 (0.1);
begin
   I := F1 (2) (0.1);
end Show_Readability_Issue;