typedef struct {
    int v;
    char s[3];
} rec;

void to_r (void *bits, int len, rec *r);

void display_r (rec *r);
