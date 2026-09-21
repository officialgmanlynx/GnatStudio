with Ada.Text_IO; use Ada.Text_IO;

with Ada.Unchecked_Deallocation;

package body Unbounded_Stacks is

   --
   --  LOCAL SUBPROGRAMS
   --

   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Element_Array,
        Name   => Element_Array_Access);

   function Is_Full (S : Unbounded_Stack)
                     return Boolean is
   begin
      return S.Top = S.Data'Last;
   end Is_Full;

   procedure Reallocate_Data
     (To         : in out Element_Array_Access;
      From       :        Element_Array_Access;
      Max_Last   :        Positive;
      Valid_Last :        Positive) is
   begin
      To := new Element_Array (1 .. Max_Last);

      for I in 1 .. Valid_Last loop
         To (I) := From (I);
      end loop;
   end Reallocate_Data;

   procedure Increase_Size
     (S : in out Unbounded_Stack)
   is
      Old_Data : Element_Array_Access := S.Data;
      Old_Last : constant Positive
                 := Old_Data'Last;
      New_Last : constant Positive
                 := Old_Data'Last + S.Chunk_Size;
   begin
      Put_Line ("Increasing Unbounded_Stack "
                & "(1 .. "
                & Old_Last'Image
                & ") to (1 .. "
                & New_Last'Image
                & ")");

      Reallocate_Data
        (To         => S.Data,
         From       => Old_Data,
         Max_Last   => New_Last,
         Valid_Last => S.Top);

      Free (Old_Data);
   end Increase_Size;

   --
   --  SUBPROGRAMS
   --

   procedure Push (S : in out Unbounded_Stack;
                   E :        Element) is
   begin
      if Is_Full (S) then
         Increase_Size (S);
      end if;

      S.Top := S.Top + 1;
      S.Data (S.Top) := E;
   end Push;

   function Pop (S : in out Unbounded_Stack)
                 return Element is
   begin
      return E : Element do
         if Is_Empty (S) then
            raise Stack_Underflow;
         end if;

         E := S.Data (S.Top);
         S.Top := S.Top - 1;
      end return;
   end Pop;

   function Is_Empty (S : Unbounded_Stack)
                      return Boolean is
   begin
      return S.Top = 0;
   end Is_Empty;

   --
   --  PRIVATE SUBPROGRAMS
   --

   procedure Initialize
     (S : in out Unbounded_Stack)
   is
      Last : constant Positive
             := S.Chunk_Size;
   begin
      Put_Line ("Initializing Unbounded_Stack "
                & "(1 .. "
                & Last'Image
                & ")");
      S.Data := new Element_Array
                      (1 .. S.Chunk_Size);
   end Initialize;

   procedure Allocate_Duplicate_Data
     (S : in out Unbounded_Stack)
   is
      Last : constant Positive
             := S.Data'Last;
   begin
      Put_Line ("Duplicating data for new "
                & "Unbounded_Stack (1 .. "
                & Last'Image
                & ")");

      Reallocate_Data
        (To         => S.Data,
         From       => S.Data,
         Max_Last   => Last,
         Valid_Last => S.Top);
   end Allocate_Duplicate_Data;

   procedure Adjust
     (S : in out Unbounded_Stack)
   is
   begin
      Put_Line ("Adjusting Unbounded_Stack...");
      Allocate_Duplicate_Data (S);
   end Adjust;

   procedure Finalize
     (S : in out Unbounded_Stack)
   is
      Last : constant Positive
             := S.Data'Last;
   begin
      Put_Line ("Finalizing Unbounded_Stack "
                & "(1 .. "
                & Last'Image
                & ")");
      if S.Data /= null then
        Free (S.Data);
      end if;
   end Finalize;

end Unbounded_Stacks;