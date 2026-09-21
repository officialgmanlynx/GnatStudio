with Ada.Text_IO; use Ada.Text_IO;

package body All_Anonymous_Access_To_Subprogram is

   procedure Proc
     (P : access procedure (I : in out Integer))
   is
      I : Integer := 0;
   begin
      Put_Line
        ("Calling procedure for Proc...");
      P (I);
      Put_Line ("Finished.");
   end Proc;

   procedure Process
     (R : in out
            Rec_Access_To_Procedure_Discriminant)
   is
   begin
      Put_Line
        ("Calling procedure for"
         & " Rec_Access_To_Procedure_Discriminant"
         & " type...");
      R.AP (R.I);
      Put_Line ("Finished.");
   end Process;

   procedure Gen_Process (Element : in out T) is
   begin
      Put_Line
        ("Calling procedure for Gen_Process...");
      Proc_T (Element);
      Put_Line ("Finished.");
   end Gen_Process;

   protected body Protected_Integer is

      procedure Mult_Ten is
      begin
         I := I * 10;
      end Mult_Ten;

      procedure Mult_Twenty is
      begin
         I := I * 20;
      end Mult_Twenty;

   end Protected_Integer;

end All_Anonymous_Access_To_Subprogram;