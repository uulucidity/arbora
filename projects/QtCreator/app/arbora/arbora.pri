########################################################################
# Copyright (c) 1988-2025 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: arbora.pri
#
# Author: $author$
#   Date: 7/5/2025
#
# generic QtCreator project .pri file for framework arbora executable arbora
########################################################################

########################################################################
# arbora

# arbora_exe TARGET
#
arbora_exe_TARGET = arbora

# arbora_exe INCLUDEPATH
#
arbora_exe_INCLUDEPATH += \
$${arbora_INCLUDEPATH} \

# arbora_exe DEFINES
#
arbora_exe_DEFINES += \
$${arbora_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# arbora_exe OBJECTIVE_HEADERS
#
#arbora_exe_OBJECTIVE_HEADERS += \
#$${ARBORA_SRC}/xos/app/console/arbora/main.hh \

# arbora_exe OBJECTIVE_SOURCES
#
#arbora_exe_OBJECTIVE_SOURCES += \
#$${ARBORA_SRC}/xos/app/console/arbora/main.mm \

########################################################################
# arbora_exe HEADERS
#
arbora_exe_HEADERS += \
$${ARBORA_SRC}/xos/base/string.hpp \
$${ARBORA_SRC}/xos/base/timezone.hpp \
$${ARBORA_SRC}/xos/base/time.hpp \
$${ARBORA_SRC}/xos/base/date.hpp \
$${ARBORA_SRC}/xos/base/event.hpp \
\
$${ARBORA_SRC}/xos/tree/range.hpp \
$${ARBORA_SRC}/xos/tree/leaves.hpp \
$${ARBORA_SRC}/xos/tree/leaf.hpp \
$${ARBORA_SRC}/xos/tree/branches.hpp \
$${ARBORA_SRC}/xos/tree/branch.hpp \
$${ARBORA_SRC}/xos/tree/nodes.hpp \
$${ARBORA_SRC}/xos/tree/node.hpp \
$${ARBORA_SRC}/xos/tree/find.hpp \
$${ARBORA_SRC}/xos/tree/search.hpp \
\
$${ARBORA_SRC}/xos/fs/path_separator.hpp \
$${ARBORA_SRC}/xos/fs/path.hpp \
$${ARBORA_SRC}/xos/fs/entry/string.hpp \
$${ARBORA_SRC}/xos/fs/entry/size.hpp \
$${ARBORA_SRC}/xos/fs/entry/time.hpp \
$${ARBORA_SRC}/xos/fs/entry/type.hpp \
$${ARBORA_SRC}/xos/fs/entry/extend.hpp \
$${ARBORA_SRC}/xos/fs/directory/entry.hpp \
$${ARBORA_SRC}/xos/fs/directory/path.hpp \
$${ARBORA_SRC}/xos/fs/os/os.hpp \
$${ARBORA_SRC}/xos/fs/posix/entry/size.hpp \
$${ARBORA_SRC}/xos/fs/posix/entry/time.hpp \
$${ARBORA_SRC}/xos/fs/posix/entry/type.hpp \
$${ARBORA_SRC}/xos/fs/posix/entry/stat.hpp \
$${ARBORA_SRC}/xos/fs/posix/entry/utimbuf.hpp \
$${ARBORA_SRC}/xos/fs/posix/entry.hpp \
$${ARBORA_SRC}/xos/fs/posix/directory/dirent.hpp \
$${ARBORA_SRC}/xos/fs/posix/directory/entry.hpp \
$${ARBORA_SRC}/xos/fs/posix/directory/path.hpp \
$${ARBORA_SRC}/xos/fs/apple/osx/entry.hpp \
$${ARBORA_SRC}/xos/fs/apple/osx/directory/path.hpp \
$${ARBORA_SRC}/xos/fs/apple/osx/directory/entry.hpp \
$${ARBORA_SRC}/xos/fs/os/entry.hpp \
$${ARBORA_SRC}/xos/fs/os/directory/entry.hpp \
$${ARBORA_SRC}/xos/fs/os/directory/path.hpp \
$${ARBORA_SRC}/xos/fs/tree/node.hpp \
$${ARBORA_SRC}/xos/fs/tree/leaf.hpp \
$${ARBORA_SRC}/xos/fs/tree/branch.hpp \
$${ARBORA_SRC}/xos/fs/tree/searcher/events.hpp \
$${ARBORA_SRC}/xos/fs/tree/searcher.hpp \
\
$${ARBORA_SRC}/xos/app/console/framework/version/main_opt.hpp \
$${ARBORA_SRC}/xos/app/console/framework/version/main.hpp \
$${ARBORA_SRC}/xos/app/console/arbora/version/main_opt.hpp \
$${ARBORA_SRC}/xos/app/console/arbora/version/main.hpp \
$${ARBORA_SRC}/xos/app/console/arbora/main_opt.hpp \
$${ARBORA_SRC}/xos/app/console/arbora/main.hpp \

# arbora_exe SOURCES
#
arbora_exe_SOURCES += \
$${ARBORA_SRC}/xos/base/event.hpp \
\
$${ARBORA_SRC}/xos/tree/range.cpp \
$${ARBORA_SRC}/xos/tree/leaves.cpp \
$${ARBORA_SRC}/xos/tree/branches.cpp \
$${ARBORA_SRC}/xos/tree/nodes.cpp \
$${ARBORA_SRC}/xos/tree/find.cpp \
$${ARBORA_SRC}/xos/tree/search.cpp \
\
$${ARBORA_SRC}/xos/fs/tree/leaf.cpp \
$${ARBORA_SRC}/xos/fs/tree/branch.cpp \
$${ARBORA_SRC}/xos/fs/tree/node.cpp \
$${ARBORA_SRC}/xos/fs/tree/searcher/events.cpp \
$${ARBORA_SRC}/xos/fs/tree/searcher.cpp \
$${ARBORA_SRC}/xos/fs/path_separator.cpp \
$${ARBORA_SRC}/xos/fs/entry/string.cpp \
$${ARBORA_SRC}/xos/fs/entry/size.cpp \
$${ARBORA_SRC}/xos/fs/entry/time.cpp \
$${ARBORA_SRC}/xos/fs/entry/type.cpp \
$${ARBORA_SRC}/xos/fs/entry/extend.cpp \
$${ARBORA_SRC}/xos/fs/os/os.cpp \
$${ARBORA_SRC}/xos/fs/os/entry.cpp \
$${ARBORA_SRC}/xos/fs/os/directory/path.cpp \
\
$${ARBORA_SRC}/xos/app/console/arbora/main_opt.cpp \
$${ARBORA_SRC}/xos/app/console/arbora/main.cpp \

########################################################################
# arbora_exe FRAMEWORKS
#
arbora_exe_FRAMEWORKS += \
$${arbora_FRAMEWORKS} \

# arbora_exe LIBS
#
arbora_exe_LIBS += \
$${arbora_LIBS} \

########################################################################
# NO Qt
QT -= gui core
