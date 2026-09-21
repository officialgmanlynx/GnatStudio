typedef int (*process_one_callback) (int);

void process_values (int                  *values,
                     int                   len,
                     process_one_callback  process_one);
