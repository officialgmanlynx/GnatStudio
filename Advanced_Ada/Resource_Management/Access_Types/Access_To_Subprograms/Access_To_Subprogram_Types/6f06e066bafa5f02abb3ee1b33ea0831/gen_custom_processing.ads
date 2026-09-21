generic
   type T is private;

   --
   --  Declaring formal access-to-subprogram
   --  type:
   --
   type T_Processing is
     access procedure (Element : in out T);

   --
   --  Declaring formal access-to-subprogram
   --  parameter:
   --
   Proc : T_Processing;

   with function Image_T (Element : T)
                          return String;
package Gen_Custom_Processing is

   type Rec is private;

   procedure Init (R     : in out Rec;
                   Value :        T);

   procedure Process (R : in out Rec);

   procedure Show (R : Rec);

private

   type Rec is record
      Comp : T;
   end record;

end Gen_Custom_Processing;