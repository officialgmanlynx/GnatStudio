generic
   type Element is private;
package Data_Processing is

   type Data_Container (Last : Positive) is
     private;

   Data_Container_Full : exception;

   procedure Append (D : in out Data_Container;
                     E :        Element);

   type Process_Element is
     not null access procedure (E : Element);

   procedure Iterate
     (D    : Data_Container;
      Proc : Process_Element);

private

   type Data_Container_Storage is
     array (Positive range <>) of Element;

   type Data_Container (Last : Positive) is
   record
      S    : Data_Container_Storage (1 .. Last);
      Curr : Natural := 0;
   end record;

end Data_Processing;