with Ada.Text_IO; use Ada.Text_IO;

with Add_Ten;
with Add_Twenty;

with All_Anonymous_Access_To_Subprogram;
use  All_Anonymous_Access_To_Subprogram;

procedure Show_Anonymous_Access_To_Subprograms is
   --
   --  Anonymous access-to-subprogram as
   --  an object:
   --
   P   : access procedure (I : in out Integer);

   --
   --  Array of anonymous access-to-subprogram
   --  components
   --
   PA  : constant
          Access_To_Procedure_Array (1 .. 2) :=
            (Add_Ten'Access,
             Add_Twenty'Access);

   --
   --  Anonymous array of anonymous
   --  access-to-subprogram components:
   --
   PAA : constant
          array (1 .. 2) of access
            procedure (I : in out Integer) :=
              (Add_Ten'Access,
               Add_Twenty'Access);

   --
   --  Record with anonymous
   --  access-to-subprogram components:
   --
   RA : constant Rec_Access_To_Procedure :=
          (AP => Add_Ten'Access);

   --
   --  Record with anonymous
   --  access-to-subprogram discriminant:
   --
   RD : Rec_Access_To_Procedure_Discriminant
          (AP => Add_Twenty'Access) :=
            (AP => Add_Twenty'Access, I => 0);

   --
   --  Generic procedure with formal anonymous
   --  access-to-subprogram:
   --
   procedure Process_Integer is new
     Gen_Process (T      => Integer,
                  Proc_T => Add_Twenty'Access);

   --
   --  Object (APP) of anonymous
   --  access-to-protected-subprogram:
   --
   PI  : Protected_Integer;
   APP : constant access protected procedure :=
           PI.Mult_Ten'Access;

   Some_Int : Integer := 0;
begin
   Put_Line ("Some_Int: " & Some_Int'Image);

   --
   --  Using object of
   --  anonymous access-to-subprogram type:
   --
   P := Add_Ten'Access;
   Proc (P);
   P (Some_Int);

   P := Add_Twenty'Access;
   Proc (P);
   P (Some_Int);

   Put_Line ("Some_Int: " & Some_Int'Image);

   --
   --  Using array with component of
   --  anonymous access-to-subprogram type:
   --
    Put_Line
      ("Calling procedure from PA array...");

   for I in PA'Range loop
      PA (I) (Some_Int);
      Put_Line ("Some_Int: " & Some_Int'Image);
   end loop;

   Put_Line ("Finished.");

   Put_Line
     ("Calling procedure from PAA array...");

   for I in PA'Range loop
      PAA (I) (Some_Int);
      Put_Line ("Some_Int: " & Some_Int'Image);
   end loop;

   Put_Line ("Finished.");

   Put_Line ("Some_Int: " & Some_Int'Image);

   --
   --  Using record with component of
   --  anonymous access-to-subprogram type:
   --
   RA.AP (Some_Int);
   Put_Line ("Some_Int: " & Some_Int'Image);

   --
   --  Using record with discriminant of
   --  anonymous access-to-subprogram type:
   --
   Process (RD);
   Put_Line ("RD.I: " & RD.I'Image);

   --
   --  Using procedure instantiated with
   --  formal anonymous access-to-subprogram:
   --
   Process_Integer (Some_Int);
   Put_Line ("Some_Int: " & Some_Int'Image);

   --
   --  Using object of anonymous
   --  access-to-protected-subprogram type:
   --
   APP.all;
end Show_Anonymous_Access_To_Subprograms;