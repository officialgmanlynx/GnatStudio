with Ada.Text_IO;

with Ada.Streams.Stream_IO;
use  Ada.Streams.Stream_IO;

with Ada.Exceptions;
use  Ada.Exceptions;

procedure Exception_Occurrence_Stream is

   Custom_Exception : exception;

   S : Stream_Access;

   procedure Nested_1 is
   begin
      raise Custom_Exception
        with "We got a problem";
   exception
      when E : others =>
         Exception_Occurrence'Write (S, E);
   end Nested_1;

   procedure Nested_2 is
   begin
      raise Constraint_Error
        with "Constraint is not correct";
   exception
      when E : others =>
         Exception_Occurrence'Write (S, E);
   end Nested_2;

   F         : File_Type;
   File_Name : constant String :=
                 "exceptions_file.bin";
begin
   Create (F, Out_File, File_Name);
   S := Stream (F);

   Nested_1;
   Nested_2;

   Close (F);

   Read_Exceptions : declare
      E : Exception_Occurrence;
   begin
      Open (F, In_File, File_Name);
      S := Stream (F);

      while not End_Of_File (F) loop
         Exception_Occurrence'Read (S, E);

         Ada.Text_IO.Put_Line
           (Exception_Information (E));
      end loop;
      Close (F);
   end Read_Exceptions;

end Exception_Occurrence_Stream;