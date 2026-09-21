with Ada.Exceptions; use Ada.Exceptions;

package Exception_Tests is

   Custom_Exception : exception;

   type All_Exception_Occur is
     array (Positive range <>) of
       Exception_Occurrence;

   procedure Test_Exceptions
     (All_Occur  : in out All_Exception_Occur;
      Last_Occur :    out Integer);

end Exception_Tests;