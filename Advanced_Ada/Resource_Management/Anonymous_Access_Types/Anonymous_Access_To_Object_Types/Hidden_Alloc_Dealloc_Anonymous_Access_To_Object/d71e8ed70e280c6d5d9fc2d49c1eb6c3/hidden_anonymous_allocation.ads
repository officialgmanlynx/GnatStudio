generic
   type T is private;
package Hidden_Anonymous_Allocation is

   function New_T
     return not null access T;

   procedure Free (Obj : access T);

end Hidden_Anonymous_Allocation;