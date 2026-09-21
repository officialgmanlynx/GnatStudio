package All_Anonymous_Access_To_Subprogram is

   --
   --  Anonymous access-to-subprogram as
   --  subprogram parameter:
   --
   procedure Proc
     (P : access procedure (I : in out Integer));

   --
   --  Anonymous access-to-subprogram in
   --  array type declaration:
   --
   type Access_To_Procedure_Array is
     array (Positive range <>) of
       access procedure (I : in out Integer);

   protected type Protected_Integer is

     procedure Mult_Ten;

     procedure Mult_Twenty;

   private
     I : Integer := 1;
   end Protected_Integer;

   --
   --  Anonymous access-to-subprogram as
   --  component of a record type.
   --
   type Rec_Access_To_Procedure is record
      AP  : access procedure (I : in out Integer);
   end record;

   --
   --  Anonymous access-to-subprogram as
   --  discriminant:
   --
   type Rec_Access_To_Procedure_Discriminant
          (AP : access procedure
                  (I : in out Integer)) is
   record
      I : Integer := 0;
   end record;

   procedure Process
     (R : in out
            Rec_Access_To_Procedure_Discriminant);

   generic
      type T is private;

      --
      --  Anonymous access-to-subprogram as
      --  formal parameter:
      --
      Proc_T : access procedure
                 (Element : in out T);
   procedure Gen_Process (Element : in out T);

end All_Anonymous_Access_To_Subprogram;