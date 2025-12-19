#!/bin/sh
# change lib path

install_name_tool -id libfluidsynth.dylib libfluidsynth.dylib

install_name_tool -change /usr/local/opt/glib/lib/libgthread-2.0.0.dylib @loader_path/libgthread-2.0.0.dylib libfluidsynth.dylib
install_name_tool -change /opt/local/lib/libgthread-2.0.0.dylib @loader_path/libgthread-2.0.0.dylib libfluidsynth.dylib

install_name_tool -change /opt/local/lib/libglib-2.0.0.dylib @loader_path/libglib-2.0.0.dylib libfluidsynth.dylib
install_name_tool -change /usr/local/opt/glib/lib/libglib-2.0.0.dylib @loader_path/libglib-2.0.0.dylib libfluidsynth.dylib

install_name_tool -change /opt/local/lib/libintl.8.dylib @loader_path/libintl.8.dylib libfluidsynth.dylib
install_name_tool -change /usr/local/opt/gettext/lib/libintl.8.dylib @loader_path/libintl.8.dylib libfluidsynth.dylib

install_name_tool -change /opt/local/lib/libreadline.8.dylib @loader_path/libreadline.8.dylib libfluidsynth.dylib

install_name_tool -change /usr/local/opt/portaudio/lib/libportaudio.2.dylib @loader_path/libportaudio.2.dylib libfluidsynth.dylib
install_name_tool -change /usr/local/opt/pulseaudio/lib/libpulse-simple.0.dylib @loader_path/libpulse-simple.0.dylib libfluidsynth.dylib
install_name_tool -change /usr/local/opt/pulseaudio/lib/libpulse.0.dylib @loader_path/libpulse.0.dylib libfluidsynth.dylib

install_name_tool -change /usr/local/opt/libsndfile/lib/libsndfile.1.dylib @loader_path/libsndfile.1.dylib libfluidsynth.dylib
install_name_tool -change /opt/local/lib/libsndfile.1.dylib @loader_path/libsndfile.1.dylib libfluidsynth.dylib

install_name_tool -change libinstpatch-1.0.2.dylib @loader_path/libinstpatch-1.0.2.dylib libfluidsynth.dylib
install_name_tool -change /usr/local/opt/glib/lib/libgobject-2.0.0.dylib @loader_path/libgobject-2.0.0.dylib libfluidsynth.dylib

install_name_tool -id libFLAC.8.dylib libFLAC.8.dylib
install_name_tool -change /opt/local/lib/libogg.0.dylib @loader_path/libogg.0.dylib libFLAC.8.dylib

install_name_tool -id libogg.0.dylib libogg.0.dylib

install_name_tool -id libsndfile.1.dylib libsndfile.1.dylib
install_name_tool -change /opt/local/lib/libFLAC.8.dylib @loader_path/libFLAC.8.dylib libsndfile.1.dylib
install_name_tool -change /opt/local/lib/libogg.0.dylib @loader_path/libogg.0.dylib libsndfile.1.dylib
install_name_tool -change /opt/local/lib/libvorbis.0.dylib @loader_path/libvorbis.0.dylib libsndfile.1.dylib
install_name_tool -change /opt/local/lib/libvorbisenc.2.dylib @loader_path/libvorbisenc.2.dylib libsndfile.1.dylib

install_name_tool -id libvorbis.0.dylib libvorbis.0.dylib
install_name_tool -change /opt/local/lib/libogg.0.dylib @loader_path/libogg.0.dylib libvorbis.0.dylib

install_name_tool -id libvorbisenc.2.dylib libvorbisenc.2.dylib
install_name_tool -change /opt/local/lib/libvorbis.0.dylib @loader_path/libvorbis.0.dylib libvorbisenc.2.dylib
install_name_tool -change /opt/local/lib/libogg.0.dylib @loader_path/libogg.0.dylib libvorbisenc.2.dylib

install_name_tool -id libgobject-2.0.0.dylib libgobject-2.0.0.dylib
install_name_tool -change /usr/local/Cellar/glib/2.66.2_1/lib/libglib-2.0.0.dylib @loader_path/libglib-2.0.0.dylib libgobject-2.0.0.dylib
install_name_tool -change /usr/local/opt/libffi/lib/libffi.7.dylib @loader_path/libffi.7.dylib libgobject-2.0.0.dylib

install_name_tool -id libgthread-2.0.0.dylib libgthread-2.0.0.dylib
install_name_tool -change /usr/local/Cellar/glib/2.66.2_1/lib/libglib-2.0.0.dylib @loader_path/libglib-2.0.0.dylib libgthread-2.0.0.dylib

install_name_tool -id libglib-2.0.0.dylib libglib-2.0.0.dylib
install_name_tool -change /usr/local/opt/pcre/lib/libpcre.1.dylib @loader_path/libpcre.1.dylib libglib-2.0.0.dylib
install_name_tool -change /usr/local/opt/gettext/lib/libintl.8.dylib @loader_path/libintl.8.dylib libglib-2.0.0.dylib

install_name_tool -id libintl.8.dylib libintl.8.dylib

install_name_tool -id libinstpatch-1.0.2.dylib libinstpatch-1.0.2.dylib
install_name_tool -change /usr/local/opt/glib/lib/libgobject-2.0.0.dylib @loader_path/libgobject-2.0.0.dylib libinstpatch-1.0.2.dylib
install_name_tool -change /usr/local/opt/glib/lib/libgthread-2.0.0.dylib @loader_path/libgthread-2.0.0.dylib libinstpatch-1.0.2.dylib
install_name_tool -change /usr/local/opt/glib/lib/libglib-2.0.0.dylib @loader_path/libglib-2.0.0.dylib libinstpatch-1.0.2.dylib
install_name_tool -change /usr/local/opt/gettext/lib/libintl.8.dylib @loader_path/libintl.8.dylib libinstpatch-1.0.2.dylib
install_name_tool -change /usr/local/opt/libsndfile/lib/libsndfile.1.dylib @loader_path/libsndfile.1.dylib libinstpatch-1.0.2.dylib

install_name_tool -id libgobject-2.0.0.dylib libgobject-2.0.0.dylib
install_name_tool -change /usr/local/Cellar/glib/2.66.2_1/lib/libglib-2.0.0.dylib @loader_path/libglib-2.0.0.dylib libgobject-2.0.0.dylib
install_name_tool -change /usr/local/opt/libffi/lib/libffi.7.dylib @loader_path/libffi.7.dylib libgobject-2.0.0.dylib

install_name_tool -id libffi.7.dylib libffi.7.dylib

install_name_tool -id libpulse-simple.0.dylib libpulse-simple.0.dylib
install_name_tool -change /usr/local/Cellar/pulseaudio/13.0_1/lib/libpulse.0.dylib @loader_path/libpulse.0.dylib libpulse-simple.0.dylib
install_name_tool -change /usr/local/Cellar/pulseaudio/13.0_1/lib/pulseaudio/libpulsecommon-13.0.dylib @loader_path/libpulsecommon-13.0.dylib libpulse-simple.0.dylib
install_name_tool -change /usr/local/opt/gdbm/lib/libgdbm.6.dylib @loader_path/libgdbm.6.dylib libpulse-simple.0.dylib

install_name_tool -id libpulse.0.dylib libpulse.0.dylib
install_name_tool -change /usr/local/Cellar/pulseaudio/13.0_1/lib/libpulse.0.dylib @loader_path/libpulse.0.dylib libpulse.0.dylib
install_name_tool -change /usr/local/Cellar/pulseaudio/13.0_1/lib/pulseaudio/libpulsecommon-13.0.dylib @loader_path/libpulsecommon-13.0.dylib libpulse.0.dylib
install_name_tool -change /usr/local/opt/gdbm/lib/libgdbm.6.dylib @loader_path/libgdbm.6.dylib libpulse-simple.0.dylib
