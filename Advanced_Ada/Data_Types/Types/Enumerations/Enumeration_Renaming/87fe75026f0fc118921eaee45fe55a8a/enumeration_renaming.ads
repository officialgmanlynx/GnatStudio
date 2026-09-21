with Enumeration_Example;

package Enumeration_Renaming is

   subtype Day is Enumeration_Example.Day;

   function Monday    return Day renames
     Enumeration_Example.Mon;
   function Tuesday   return Day renames
     Enumeration_Example.Tue;
   function Wednesday return Day renames
     Enumeration_Example.Wed;
   function Thursday  return Day renames
     Enumeration_Example.Thu;
   function Friday    return Day renames
     Enumeration_Example.Fri;
   function Saturday  return Day renames
     Enumeration_Example.Sat;
   function Sunday    return Day renames
     Enumeration_Example.Sun;

end Enumeration_Renaming;