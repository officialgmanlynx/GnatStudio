#include "system_a.h"
#include "system_b.h"

typedef struct {
    A a;
    B b;
} AB;

void AB_activate (AB *ab);

int AB_is_active (AB *ab);

float AB_value (AB *ab);

int AB_check (AB *ab);

void AB_deactivate (AB *ab);
