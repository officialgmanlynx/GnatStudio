with Internal_Exceptions;

package Test_Constraints is

   Ext_E : exception renames
             Internal_Exceptions.Int_E;

end Test_Constraints;