with Ada.Containers.Ordered_Sets;

package Aux is
   generic
      with package OS is new
        Ada.Containers.Ordered_Sets (<>);
   function Gen_Singleton_Set
     (Element : OS.Element_Type)
      return OS.Set;
end Aux;