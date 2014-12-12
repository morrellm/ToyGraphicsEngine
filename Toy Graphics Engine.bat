@echo off
SET rootDir="C:\Users\Mitchell\Documents\C Projects\Toy Graphics Engine"
SET nl=echo.
SET output="bin/Toy Graphics Engine.exe"
SET input="Toy Graphics Engine.c"

cd %rootDir%

IF EXIST %output% (
rm %output% 
)
gcc %input% -Wall -o %output%  -IC:/GTK+/include/gtk-3.0 -IC:/GTK+/include/cairo -IC:/GTK+/include/pango-1.0 -IC:/GTK+/include/atk-1.0 -IC:/GTK+/include/cairo -IC:/GTK+/include/pixman-1 -IC:/GTK+/include -IC:/GTK+/include/freetype2 -IC:/GTK+/include/libpng1 -IC:/GTK+/include/gdk-pixbuf-2.0 -IC:/GTK+/include/libpng15 -IC:/GTK+/include/glib-2.0 -IC:/GTK+/lib/glib-2.0/include -LC:/GTK+/lib -lgtk-3 -lgdk-3 -lgdi32 -limm32 -lshell32 -lole32 -Wl,-luuid -lpangocairo-1.0 -lpangoft2-1.0 -lfreetype -lfontconfig -lpangowin32-1.0 -lgdi32 -lpango-1.0 -lm -latk-1.0 -lcairo-gobject -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lgobject-2.0 -lglib-2.0 -lintl
echo PROGRAM START --------------------------
IF EXIST %output%  (
%output% 
)
echo PROGRAM END ----------------------------
%nl%
ECHO Run Finished...
PAUSE