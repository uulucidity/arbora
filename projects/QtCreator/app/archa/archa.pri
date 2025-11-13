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
#   File: archa.pri
#
# Author: $author$
#   Date: 7/5/2025
#
# generic QtCreator project .pri file for framework arbora executable archa
########################################################################

########################################################################
# archa

# archa TARGET
#
archa_TARGET = archa

# archa INCLUDEPATH
#
archa_INCLUDEPATH += \
$${arbora_INCLUDEPATH} \

# archa DEFINES
#
archa_DEFINES += \
$${arbora_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# archa OBJECTIVE_HEADERS
#
#archa_OBJECTIVE_HEADERS += \
#$${ARBORA_SRC}/xos/app/console/archa/main.hh \

# archa OBJECTIVE_SOURCES
#
#archa_OBJECTIVE_SOURCES += \
#$${ARBORA_SRC}/xos/app/console/archa/main.mm \

########################################################################
# archa HEADERS
#
archa_HEADERS += \
$${ARBORA_SRC}/xos/fs/entry/implement.hpp \
$${ARBORA_SRC}/xos/fs/entry/extend.hpp \
\
$${ARBORA_SRC}/xos/fs/entry/comparor/implement.hpp \
$${ARBORA_SRC}/xos/fs/entry/comparor/extend.hpp \
$${ARBORA_SRC}/xos/fs/entry/modified/comparor.hpp \
$${ARBORA_SRC}/xos/fs/entry/content/comparor.hpp \
\
$${ARBORA_SRC}/xos/app/console/archa/node.hpp \
$${ARBORA_SRC}/xos/app/console/archa/leaf.hpp \
$${ARBORA_SRC}/xos/app/console/archa/branch.hpp \
$${ARBORA_SRC}/xos/app/console/archa/find.hpp \
\
$${ARBORA_SRC}/xos/app/console/archa/base/main_opt.hpp \
$${ARBORA_SRC}/xos/app/console/archa/base/main.hpp \

# archa SOURCES
#
archa_SOURCES += \
$${ARBORA_SRC}/xos/fs/entry/implement.cpp \
$${ARBORA_SRC}/xos/fs/entry/extend.cpp \
$${ARBORA_SRC}/xos/fs/entry/content/comparor.cpp \
\
$${ARBORA_SRC}/xos/app/console/archa/node.cpp \
$${ARBORA_SRC}/xos/app/console/archa/leaf.cpp \
$${ARBORA_SRC}/xos/app/console/archa/branch.cpp \
$${ARBORA_SRC}/xos/app/console/archa/find.cpp \
\
$${ARBORA_SRC}/xos/app/console/archa/base/main_opt.cpp \
$${ARBORA_SRC}/xos/app/console/archa/base/main.cpp \

########################################################################
# archa FRAMEWORKS
#
archa_FRAMEWORKS += \
$${arbora_FRAMEWORKS} \

# archa LIBS
#
archa_LIBS += \
$${arbora_LIBS} \

########################################################################
# NO Qt
QT -= gui core
