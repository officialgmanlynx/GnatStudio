package Show_Full_Access_Only_Types is

   type Nonatomic_Full_Access_Type is
     new Long_Float
       with Volatile, Full_Access_Only;

   type Atomic_Full_Access_Type is
     new Long_Float
       with Atomic, Full_Access_Only;

end Show_Full_Access_Only_Types;