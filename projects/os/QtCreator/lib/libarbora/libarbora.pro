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
#   File: libarbora.pro
#
# Author: $author$
#   Date: 7/5/2025
#
# os specific QtCreator project .pro file for framework arbora static library libarbora
########################################################################
# Depends: rostra;nadir;fila;crono;versa;cifra;bn;mp;rete;stara;talas;argo;libjson
#
# Debug: arbora/build/os/QtCreator/Debug/lib/libarbora
# Release: arbora/build/os/QtCreator/Release/lib/libarbora
# Profile: arbora/build/os/QtCreator/Profile/lib/libarbora
#
include(../../../../../build/QtCreator/arbora.pri)
include(../../../../QtCreator/arbora.pri)
include(../../arbora.pri)
include(../../../../QtCreator/lib/libarbora/libarbora.pri)

TARGET = $${libarbora_TARGET}
TEMPLATE = $${libarbora_TEMPLATE}
CONFIG += $${libarbora_CONFIG}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${libarbora_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${libarbora_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${libarbora_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${libarbora_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${libarbora_HEADERS} \
$${libarbora_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${libarbora_SOURCES} \

########################################################################
