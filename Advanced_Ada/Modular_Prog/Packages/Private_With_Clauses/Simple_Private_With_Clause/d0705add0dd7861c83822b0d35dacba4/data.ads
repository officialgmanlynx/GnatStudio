private with P;

package Data is

   type T2 is private;

private

   --  Information from P is
   --  visible here
   type T2 is new P.T;

end Data;