import timespec_get
import os

var a = timespec_get()
sleep 70
var b = timespec_get()
echo b.nsec - a.nsec