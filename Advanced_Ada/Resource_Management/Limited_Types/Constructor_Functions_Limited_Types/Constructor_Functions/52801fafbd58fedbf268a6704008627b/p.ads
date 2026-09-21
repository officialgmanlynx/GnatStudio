with Ada.Strings.Unbounded;
use  Ada.Strings.Unbounded;

package P is
   task type Some_Task_Type;

   protected type Some_Protected_Type is
      --  dummy type
   end Some_Protected_Type;

   type T (<>) is limited private;
   function Make_T (Name : String) return T;
   --       ^^^^^^
   --  constructor function
private
   type T is limited
      record
         Name    : Unbounded_String;
         My_Task : Some_Task_Type;
         My_Prot : Some_Protected_Type;
      end record;
end P;