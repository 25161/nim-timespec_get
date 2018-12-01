# timespec_get

Nanosecond-percision time using timespec_get of C11

Also, it should work on C++, but I don't know which version or what requirements it would have. I tested on C++ and it worked though.

### API:
```nim
type
  timespec* = tuple[sec: int64, nsec: int32]

proc timespec_get*(): timespec
# Returns timespec with seconds and nanoseconds since start of the epoch
```

### Example:
```nim
#test1.nim
import timespec_get
import os

echo timespec_get()
sleep 500
echo timespec_get()
```

### License
Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
