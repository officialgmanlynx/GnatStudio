package Stacks with SPARK_Mode is

   type Stack is private;

   Is_Full_E : exception;

   function  Peek (S : Stack) return Natural;
   function  Is_Full (S : Stack) return Boolean;
   procedure Push (S : in out Stack; E : Natural) with
     Pre  => not Is_Full (S),
     Post => Peek (S) = E;

private

   Max : constant := 10;

   type Stack_Array is array (1 .. Max) of Natural;

   type Stack is record
      Top     : Positive;
      Content : Stack_Array;
   end record;

   function Peek (S : Stack) return Natural is
     (if S.Top in S.Content'Range then S.Content (S.Top) else 0);
   function Is_Full (S : Stack) return Boolean is (S.Top >= Max);

end Stacks;