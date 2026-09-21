with Unconstrained_Types; use Unconstrained_Types;

procedure Using_Unconstrained_Type is

   subtype Integer_Array_5 is
     Integer_Array (1 .. 5);

   A1 : Integer_Array_5;
   A2 : Integer_Array (1 .. 5);

   subtype Simple_Record_Ext is
     Simple_Record (Extended => True);

   R1 : Simple_Record_Ext;
   R2 : Simple_Record (Extended => True);

begin
   null;
end Using_Unconstrained_Type;