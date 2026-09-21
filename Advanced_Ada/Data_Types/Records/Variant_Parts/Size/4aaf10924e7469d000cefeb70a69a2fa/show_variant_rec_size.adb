with Ada.Text_IO;     use Ada.Text_IO;

with Variant_Records; use Variant_Records;

procedure Show_Variant_Rec_Size is
   SR_No_Ext : Simple_Record
                 (Extended => False);
   SR_Ext    : Simple_Record
                 (Extended => True);
   SR        : Simple_Record;
begin
   Put_Line ("SR_No_Ext'Size : "
             & SR_No_Ext'Size'Image
             & " bits");
   Put_Line ("SR_Ext'Size : "
             & SR_Ext'Size'Image
             & " bits");
   Put_Line ("SR'Size : "
             & SR'Size'Image
             & " bits");
end Show_Variant_Rec_Size;