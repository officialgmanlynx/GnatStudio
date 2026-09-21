private with P.Private_Child;

package P.Public_Child is

   type T2 is private;

private

   type T2 is new P.Private_Child.T;

end P.Public_Child;