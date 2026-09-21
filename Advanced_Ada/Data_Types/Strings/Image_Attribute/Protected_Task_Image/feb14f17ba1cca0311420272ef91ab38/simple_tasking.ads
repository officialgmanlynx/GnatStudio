package Simple_Tasking is

   protected type Protected_Float (I : Integer) is

   private
      V : Float := Float (I);
   end Protected_Float;

   protected type Protected_Null is
   private
   end Protected_Null;

   task type T is
      entry Start;
   end T;

end Simple_Tasking;