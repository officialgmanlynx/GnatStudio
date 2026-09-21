package Enumeration_Example is

   type Day is (Mon, Tue, Wed,
                Thu, Fri,
                Sat, Sun);

   function Monday    return Day renames Mon;
   function Tuesday   return Day renames Tue;
   function Wednesday return Day renames Wed;
   function Thursday  return Day renames Thu;
   function Friday    return Day renames Fri;
   function Saturday  return Day renames Sat;
   function Sunday    return Day renames Sun;

end Enumeration_Example;