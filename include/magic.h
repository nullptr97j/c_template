#pragma once

#include <stdint.h>
#include <stddef.h>
#include <inttypes.h>
#include <stdio.h>

typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef size_t usize;

#define println(msg) printf("%s\n", msg)

#define print(msg, v) _Generic((v), \
    i8:   printf("%s: %" PRId8 "\n", msg, v), \
    i16:  printf("%s: %" PRId16 "\n", msg, v), \
    i32:  printf("%s: %" PRId32 "\n", msg, v), \
    i64:  printf("%s: %" PRId64 "\n", msg, v), \
    u8:   printf("%s: %" PRIu8 "\n", msg, v), \
    u16:  printf("%s: %" PRIu16 "\n", msg, v), \
    u32:  printf("%s: %" PRIu32 "\n", msg, v), \
    u64:  printf("%s: %" PRIu64 "\n", msg, v), \
    const char*: printf("%s: %s\n", msg, v), \
    float: printf("%s: %f\n", msg, v), \
    double: printf("%s: %f\n", msg, v), \
    default: printf("%s: (unknown type)\n", msg) \
)

#define print_val(v) print( #v, v )