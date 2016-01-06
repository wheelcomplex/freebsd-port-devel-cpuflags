--- cpuflags.sh	2010-03-07 05:32:13.000000000 +0800
+++ cpuflags.sh.new	2016-01-07 02:53:02.778846000 +0800
@@ -37,7 +37,11 @@
 if [ -n "$1" ]; then
     CC=$1
 else
-    CC=gcc
+    if [ `uname -r| awk -F'\.' '{print $1}'` -ge 10 ]; then
+        CC=clang
+    else
+        CC=gcc
+    fi
 fi
 
 # Each UNAME subr_ file is expected to set AWK & SED, and to provide the
