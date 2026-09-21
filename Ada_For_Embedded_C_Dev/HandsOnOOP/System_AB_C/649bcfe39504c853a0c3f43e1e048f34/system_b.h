typedef struct {
    float val;
    int   active;
} B;

void B_activate (B *b);

int B_is_active (B *b);

float B_value (B *b);

void B_deactivate (B *b);
