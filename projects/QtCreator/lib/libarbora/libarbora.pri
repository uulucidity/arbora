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
#   File: libarbora.pri
#
# Author: $author$
#   Date: 7/5/2025
#
# generic QtCreator project .pri file for framework arbora static library libarbora
########################################################################

########################################################################
# libarbora
XOS_LIB_ARBORA_VERSION_BUILD_DATE = 7/5/2025 #$$system(~/bin/utility/tdate)

# libarbora TARGET
#
libarbora_TARGET = arbora
libarbora_TEMPLATE = lib
libarbora_CONFIG += staticlib

# libarbora INCLUDEPATH
#
libarbora_INCLUDEPATH += \
$${arbora_INCLUDEPATH} \

# libarbora DEFINES
#
libarbora_DEFINES += \
$${arbora_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_LIB_ARBORA_VERSION_BUILD_DATE=$${XOS_LIB_ARBORA_VERSION_BUILD_DATE} \

########################################################################
# libarbora OBJECTIVE_HEADERS
#
#libarbora_OBJECTIVE_HEADERS += \
#$${ARBORA_SRC}/xos/lib/arbora/version.hh \

# libarbora OBJECTIVE_SOURCES
#
#libarbora_OBJECTIVE_SOURCES += \
#$${ARBORA_SRC}/xos/lib/arbora/version.mm \

########################################################################
# libarbora HEADERS
#
libarbora_HEADERS += \
$${ARBORA_SRC}/xos/lib/arbora/version.hpp \

# libarbora SOURCES
#
libarbora_SOURCES += \
$${ARBORA_SRC}/xos/lib/arbora/version.cpp \

########################################################################
