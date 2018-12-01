# timespec_get
# Nanosecond-percision time using timespec_get of C11
{.emit: """
#ifdef __cplusplus
extern "C" {
#endif
#include <time.h>
#include <stdint.h>
#ifdef __cplusplus
}
#endif
""".}
type
  timespec* = tuple[sec: int64, nsec: int32]
proc timespec_get*(): timespec =
  ## Returns timespec with seconds and nanoseconds since start of the epoch
  {.emit:["""
  struct timespec spec;
  timespec_get(&spec, TIME_UTC);
  """,
  result.sec, " = (int64_t)spec.tv_sec;",
  result.nsec, " = (int32_t)spec.tv_nsec;"].}