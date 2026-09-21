procedure Main is

   package JSON is
      type JSON_Value is private
        with Integer_Literal => To_Value, String_Literal => To_Value;

      function To_Value (Text : String) return JSON_Value;
      function To_Value (Text : Wide_Wide_String) return JSON_Value;

      type JSON_Object is private
        with Aggregate => (Empty     => New_JSON_Object,
                           Add_Named => Insert);

      function New_JSON_Object return JSON_Object;

      procedure Insert
        (Self  : in out JSON_Object;
         Key   : Wide_Wide_String;
         Value : JSON_Value) is null;

      function From_Object (Self : JSON_Object) return JSON_Value;

      type JSON_Array is private
        with Aggregate => (Empty       => New_JSON_Array,
                           Add_Unnamed => Append);

      function New_JSON_Array return JSON_Array;

      procedure Append
        (Self  : in out JSON_Array;
         Value : JSON_Value) is null;

      function From_Array (Self : JSON_Array) return JSON_Value;

   private
      type JSON_Value is null record;
      type JSON_Object is null record;
      type JSON_Array is null record;

      function To_Value (Text : String) return JSON_Value is
        (null record);
      function To_Value (Text : Wide_Wide_String) return JSON_Value is
        (null record);
      function New_JSON_Object return JSON_Object is
        (null record);
      function New_JSON_Array return JSON_Array is
        (null record);
      function From_Object (Self : JSON_Object) return JSON_Value is
        (null record);
      function From_Array (Self : JSON_Array) return JSON_Value is
        (null record);
   end JSON;

   function "+" (X : JSON.JSON_Object) return JSON.JSON_Value
     renames JSON.From_Object;
   function "-" (X : JSON.JSON_Array) return JSON.JSON_Value
     renames JSON.From_Array;

   Offices : JSON.JSON_Array :=
     [+["name"   => "North American Office",
        "phones" => -[1_877_787_4628,
                      1_866_787_4232,
                      1_212_620_7300],
        "email"  => "info@adacore.com"],
      +["name"   => "European Office",
        "phones" => -[33_1_49_70_67_16,
                      33_1_49_70_05_52],
        "email"  => "info@adacore.com"]];
   -----------------------------------------------------------------
begin
   --  Equivalent old initialization code is too long to print it here
   null;
end Main;