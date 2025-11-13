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
# os specific QtCreator project file for framework arbora
########################################################################
# Depends: rostra;nadir;fila;crono;versa;cifra;bn;mp;rete;stara;talas;argo;libjson

UNAME = $$system(uname)

contains(UNAME,Darwin) {
DARWIN_VERSION = $$system(sw_vers -productVersion)
} else {
contains(UNAME,Linux) {
LINUX_VERSION = $$system(uname -r)
} else {
contains(UNAME,Windows) {
WINDOWS_VERSION = $$system(ver)
} else {
} # contains(UNAME,Windows)
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(UNAME,Darwin) {
DARWIN_VERSION_NUMBER = $$system(echo $${DARWIN_VERSION} | cut -d'.' -f1)
contains(DARWIN_VERSION_NUMBER,15) {
DARWIN_VERSION_NAME = Sequoia
} else {
contains(DARWIN_VERSION_NUMBER,14) {
DARWIN_VERSION_NAME = Sonoma
} else {
contains(DARWIN_VERSION_NUMBER,13) {
DARWIN_VERSION_NAME = Ventura
} else {
contains(DARWIN_VERSION_NUMBER,12) {
DARWIN_VERSION_NAME = Monterey
} else {
contains(DARWIN_VERSION_NUMBER,11) {
DARWIN_VERSION_NAME = Bigsur
} else {
contains(DARWIN_VERSION_NUMBER,10) {
DARWIN_VERSION_NAME = Sierra
} else {
DARWIN_VERSION_NAME = Mavricks
} # contains(DARWIN_VERSION,10)
} # contains(DARWIN_VERSION,11)
} # contains(DARWIN_VERSION,12)
} # contains(DARWIN_VERSION,13)
} # contains(DARWIN_VERSION,14)
} # contains(DARWIN_VERSION,15)
} # contains(UNAME,Darwin)

contains(UNAME,Darwin) {
ARBORA_OS = macosx
} else {
contains(UNAME,Linux) {
ARBORA_OS = linux
} else {
ARBORA_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,ARBORA_OS) {
ARBORA_BUILD = $${ARBORA_OS}
} else {
ARBORA_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,ARBORA_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(ARBORA_OS,macosx) {
contains(DARWIN_VERSION_NUMBER,15) {
#QMAKE_CXXFLAGS += -Werror -Wno-error=register
QMAKE_CXXFLAGS += -Wno-register
} else {
} # contains(DARWIN_VERSION_NUMBER,15)
contains(DARWIN_VERSION_NUMBER,14) {
QMAKE_CXXFLAGS += -Wno-dynamic-exception-spec
} else {
} # contains(DARWIN_VERSION_NUMBER,14)
contains(DARWIN_VERSION_NUMBER,11|12|13|14|15) {
QMAKE_CFLAGS += -Wno-implicit-function-declaration
} else {
} # contains(DARWIN_VERSION_NUMBER,11|12|13|14|15)
} else {
contains(ARBORA_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(ARBORA_OS,windows) {
} else {
} # contains(ARBORA_OS,windows)
} # contains(ARBORA_OS,linux)
} # contains(ARBORA_OS,macosx)

########################################################################
# rostra
ROSTRA_THIRDPARTY_PKG_MAKE_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${ROSTRA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PKG_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${ROSTRA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PKG_BLD = $${OTHER_BLD}/$${ROSTRA_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PRJ_BLD = $${OTHER_BLD}/$${ROSTRA_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_BLD}/lib
ROSTRA_LIB = $${ROSTRA_PKG_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_PRJ_BLD}/lib
#ROSTRA_LIB = $${ARBORA_LIB}
ROSTRA_LIB_NAME = $${ROSTRA_NAME}

# rostra LIBS
#
rostra_LIBS += \
-L$${ROSTRA_LIB}/lib$${ROSTRA_LIB_NAME} \
-l$${ROSTRA_LIB_NAME} \


########################################################################
# nadir
NADIR_THIRDPARTY_PKG_MAKE_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PKG_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PKG_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PRJ_BLD = $${OTHER_BLD}/$${NADIR_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_BLD}/lib
NADIR_LIB = $${NADIR_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_PRJ_BLD}/lib
#NADIR_LIB = $${ARBORA_LIB}
NADIR_LIB_NAME = $${NADIR_NAME}

# nadir LIBS
#
nadir_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_LIB_NAME} \
-l$${NADIR_LIB_NAME} \


########################################################################
# fila
FILA_THIRDPARTY_PKG_MAKE_BLD = $${FILA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
FILA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${FILA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
FILA_THIRDPARTY_PKG_BLD = $${FILA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
FILA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${FILA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
FILA_PKG_BLD = $${OTHER_BLD}/$${FILA_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
FILA_PRJ_BLD = $${OTHER_BLD}/$${FILA_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#FILA_LIB = $${FILA_THIRDPARTY_PKG_MAKE_BLD}/lib
#FILA_LIB = $${FILA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#FILA_LIB = $${FILA_THIRDPARTY_PKG_BLD}/lib
#FILA_LIB = $${FILA_THIRDPARTY_PRJ_BLD}/lib
FILA_LIB = $${FILA_PKG_BLD}/lib
#FILA_LIB = $${FILA_PRJ_BLD}/lib
#FILA_LIB = $${ARBORA_LIB}
FILA_LIB_NAME = $${FILA_NAME}

# fila LIBS
#
fila_LIBS += \
-L$${FILA_LIB}/lib$${FILA_LIB_NAME} \
-l$${FILA_LIB_NAME} \


########################################################################
# crono
CRONO_THIRDPARTY_PKG_MAKE_BLD = $${CRONO_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
CRONO_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${CRONO_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
CRONO_THIRDPARTY_PKG_BLD = $${CRONO_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
CRONO_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${CRONO_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
CRONO_PKG_BLD = $${OTHER_BLD}/$${CRONO_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
CRONO_PRJ_BLD = $${OTHER_BLD}/$${CRONO_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#CRONO_LIB = $${CRONO_THIRDPARTY_PKG_MAKE_BLD}/lib
#CRONO_LIB = $${CRONO_THIRDPARTY_PRJ_MAKE_BLD}/lib
#CRONO_LIB = $${CRONO_THIRDPARTY_PKG_BLD}/lib
#CRONO_LIB = $${CRONO_THIRDPARTY_PRJ_BLD}/lib
CRONO_LIB = $${CRONO_PKG_BLD}/lib
#CRONO_LIB = $${CRONO_PRJ_BLD}/lib
#CRONO_LIB = $${ARBORA_LIB}
CRONO_LIB_NAME = $${CRONO_NAME}

# crono LIBS
#
crono_LIBS += \
-L$${CRONO_LIB}/lib$${CRONO_LIB_NAME} \
-l$${CRONO_LIB_NAME} \


########################################################################
# versa
VERSA_THIRDPARTY_PKG_MAKE_BLD = $${VERSA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
VERSA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${VERSA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
VERSA_THIRDPARTY_PKG_BLD = $${VERSA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
VERSA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${VERSA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
VERSA_PKG_BLD = $${OTHER_BLD}/$${VERSA_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
VERSA_PRJ_BLD = $${OTHER_BLD}/$${VERSA_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#VERSA_LIB = $${VERSA_THIRDPARTY_PKG_MAKE_BLD}/lib
#VERSA_LIB = $${VERSA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#VERSA_LIB = $${VERSA_THIRDPARTY_PKG_BLD}/lib
#VERSA_LIB = $${VERSA_THIRDPARTY_PRJ_BLD}/lib
VERSA_LIB = $${VERSA_PKG_BLD}/lib
#VERSA_LIB = $${VERSA_PRJ_BLD}/lib
#VERSA_LIB = $${ARBORA_LIB}
VERSA_LIB_NAME = $${VERSA_NAME}

# versa LIBS
#
versa_LIBS += \
-L$${VERSA_LIB}/lib$${VERSA_LIB_NAME} \
-l$${VERSA_LIB_NAME} \


########################################################################
# cifra
CIFRA_THIRDPARTY_PKG_MAKE_BLD = $${CIFRA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
CIFRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${CIFRA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
CIFRA_THIRDPARTY_PKG_BLD = $${CIFRA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
CIFRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${CIFRA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
CIFRA_PKG_BLD = $${OTHER_BLD}/$${CIFRA_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
CIFRA_PRJ_BLD = $${OTHER_BLD}/$${CIFRA_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#CIFRA_LIB = $${CIFRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#CIFRA_LIB = $${CIFRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#CIFRA_LIB = $${CIFRA_THIRDPARTY_PKG_BLD}/lib
#CIFRA_LIB = $${CIFRA_THIRDPARTY_PRJ_BLD}/lib
CIFRA_LIB = $${CIFRA_PKG_BLD}/lib
#CIFRA_LIB = $${CIFRA_PRJ_BLD}/lib
#CIFRA_LIB = $${ARBORA_LIB}
CIFRA_LIB_NAME = $${CIFRA_NAME}

# cifra LIBS
#
cifra_LIBS += \
-L$${CIFRA_LIB}/lib$${CIFRA_LIB_NAME} \
-l$${CIFRA_LIB_NAME} \


########################################################################
# bn
BN_THIRDPARTY_PKG_MAKE_BLD = $${BN_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
BN_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${BN_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
BN_THIRDPARTY_PKG_BLD = $${BN_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
BN_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${BN_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
BN_PKG_BLD = $${OTHER_BLD}/$${BN_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
BN_PRJ_BLD = $${OTHER_BLD}/$${BN_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#BN_LIB = $${BN_THIRDPARTY_PKG_MAKE_BLD}/lib
#BN_LIB = $${BN_THIRDPARTY_PRJ_MAKE_BLD}/lib
#BN_LIB = $${BN_THIRDPARTY_PKG_BLD}/lib
#BN_LIB = $${BN_THIRDPARTY_PRJ_BLD}/lib
#BN_LIB = $${BN_PKG_BLD}/lib
#BN_LIB = $${BN_PRJ_BLD}/lib
#BN_LIB = $${TALAS_LIB}
BN_LIB = $${CIFRA_LIB}
BN_LIB_NAME = $${BN_NAME}

# bn LIBS
#
bn_LIBS += \
-L$${BN_LIB}/lib$${BN_LIB_NAME} \
-l$${BN_LIB_NAME} \


########################################################################
# mp
MP_THIRDPARTY_PKG_MAKE_BLD = $${MP_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
MP_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${MP_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
MP_THIRDPARTY_PKG_BLD = $${MP_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
MP_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${MP_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
MP_PKG_BLD = $${OTHER_BLD}/$${MP_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
MP_PRJ_BLD = $${OTHER_BLD}/$${MP_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#MP_LIB = $${MP_THIRDPARTY_PKG_MAKE_BLD}/lib
#MP_LIB = $${MP_THIRDPARTY_PRJ_MAKE_BLD}/lib
#MP_LIB = $${MP_THIRDPARTY_PKG_BLD}/lib
#MP_LIB = $${MP_THIRDPARTY_PRJ_BLD}/lib
#MP_LIB = $${MP_PKG_BLD}/lib
#MP_LIB = $${MP_PRJ_BLD}/lib
#MP_LIB = $${TALAS_LIB}
MP_LIB = $${CIFRA_LIB}
MP_LIB_NAME = $${MP_NAME}

# mp LIBS
#
mp_LIBS += \
-L$${MP_LIB}/lib$${MP_LIB_NAME}z \
-l$${MP_LIB_NAME}z \
-L$${MP_LIB}/lib$${MP_LIB_NAME}n \
-l$${MP_LIB_NAME}n \
-L$${MP_LIB}/lib$${MP_LIB_NAME} \
-l$${MP_LIB_NAME} \


########################################################################
# rete
RETE_THIRDPARTY_PKG_MAKE_BLD = $${RETE_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
RETE_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${RETE_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
RETE_THIRDPARTY_PKG_BLD = $${RETE_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
RETE_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${RETE_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
RETE_PKG_BLD = $${OTHER_BLD}/$${RETE_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
RETE_PRJ_BLD = $${OTHER_BLD}/$${RETE_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#RETE_LIB = $${RETE_THIRDPARTY_PKG_MAKE_BLD}/lib
#RETE_LIB = $${RETE_THIRDPARTY_PRJ_MAKE_BLD}/lib
#RETE_LIB = $${RETE_THIRDPARTY_PKG_BLD}/lib
#RETE_LIB = $${RETE_THIRDPARTY_PRJ_BLD}/lib
RETE_LIB = $${RETE_PKG_BLD}/lib
#RETE_LIB = $${RETE_PRJ_BLD}/lib
#RETE_LIB = $${ARBORA_LIB}
RETE_LIB_NAME = $${RETE_NAME}

# rete LIBS
#
rete_LIBS += \
-L$${RETE_LIB}/lib$${RETE_LIB_NAME} \
-l$${RETE_LIB_NAME} \


########################################################################
# stara
STARA_THIRDPARTY_PKG_MAKE_BLD = $${STARA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
STARA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${STARA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
STARA_THIRDPARTY_PKG_BLD = $${STARA_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
STARA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${STARA_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
STARA_PKG_BLD = $${OTHER_BLD}/$${STARA_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
STARA_PRJ_BLD = $${OTHER_BLD}/$${STARA_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#STARA_LIB = $${STARA_THIRDPARTY_PKG_MAKE_BLD}/lib
#STARA_LIB = $${STARA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#STARA_LIB = $${STARA_THIRDPARTY_PKG_BLD}/lib
#STARA_LIB = $${STARA_THIRDPARTY_PRJ_BLD}/lib
STARA_LIB = $${STARA_PKG_BLD}/lib
#STARA_LIB = $${STARA_PRJ_BLD}/lib
#STARA_LIB = $${ARBORA_LIB}
STARA_LIB_NAME = $${STARA_NAME}

# stara LIBS
#
stara_LIBS += \
-L$${STARA_LIB}/lib$${STARA_LIB_NAME} \
-l$${STARA_LIB_NAME} \


########################################################################
# talas
TALAS_THIRDPARTY_PKG_MAKE_BLD = $${TALAS_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
TALAS_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${TALAS_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
TALAS_THIRDPARTY_PKG_BLD = $${TALAS_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
TALAS_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${TALAS_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
TALAS_PKG_BLD = $${OTHER_BLD}/$${TALAS_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
TALAS_PRJ_BLD = $${OTHER_BLD}/$${TALAS_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#TALAS_LIB = $${TALAS_THIRDPARTY_PKG_MAKE_BLD}/lib
#TALAS_LIB = $${TALAS_THIRDPARTY_PRJ_MAKE_BLD}/lib
#TALAS_LIB = $${TALAS_THIRDPARTY_PKG_BLD}/lib
#TALAS_LIB = $${TALAS_THIRDPARTY_PRJ_BLD}/lib
TALAS_LIB = $${TALAS_PKG_BLD}/lib
#TALAS_LIB = $${TALAS_PRJ_BLD}/lib
#TALAS_LIB = $${ARBORA_LIB}
TALAS_LIB_NAME = $${TALAS_NAME}

# talas LIBS
#
talas_LIBS += \
-L$${TALAS_LIB}/lib$${TALAS_LIB_NAME} \
-l$${TALAS_LIB_NAME} \


########################################################################
# argo
ARGO_THIRDPARTY_PKG_MAKE_BLD = $${ARGO_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
ARGO_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${ARGO_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
ARGO_THIRDPARTY_PKG_BLD = $${ARGO_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
ARGO_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${ARGO_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
ARGO_PKG_BLD = $${OTHER_BLD}/$${ARGO_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
ARGO_PRJ_BLD = $${OTHER_BLD}/$${ARGO_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#ARGO_LIB = $${ARGO_THIRDPARTY_PKG_MAKE_BLD}/lib
#ARGO_LIB = $${ARGO_THIRDPARTY_PRJ_MAKE_BLD}/lib
#ARGO_LIB = $${ARGO_THIRDPARTY_PKG_BLD}/lib
#ARGO_LIB = $${ARGO_THIRDPARTY_PRJ_BLD}/lib
ARGO_LIB = $${ARGO_PKG_BLD}/lib
#ARGO_LIB = $${ARGO_PRJ_BLD}/lib
#ARGO_LIB = $${ARBORA_LIB}
ARGO_LIB_NAME = $${ARGO_NAME}

# argo LIBS
#
argo_LIBS += \
-L$${ARGO_LIB}/lib$${ARGO_LIB_NAME} \
-l$${ARGO_LIB_NAME} \


########################################################################
# libjson
LIBJSON_THIRDPARTY_PKG_MAKE_BLD = $${LIBJSON_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
LIBJSON_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${LIBJSON_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/$${BUILD_CONFIG}
LIBJSON_THIRDPARTY_PKG_BLD = $${LIBJSON_THIRDPARTY_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
LIBJSON_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${LIBJSON_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
LIBJSON_PKG_BLD = $${OTHER_BLD}/$${LIBJSON_PKG}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
LIBJSON_PRJ_BLD = $${OTHER_BLD}/$${LIBJSON_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
ARGO_LIBJSON_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${ARGO_LIBJSON_THIRDPARTY_PRJ}/build/$${ARBORA_BUILD}/QtCreator/$${BUILD_CONFIG}
#LIBJSON_LIB = $${LIBJSON_THIRDPARTY_PKG_MAKE_BLD}/lib
#LIBJSON_LIB = $${LIBJSON_THIRDPARTY_PRJ_MAKE_BLD}/lib
#LIBJSON_LIB = $${LIBJSON_THIRDPARTY_PKG_BLD}/lib
#LIBJSON_LIB = $${LIBJSON_THIRDPARTY_PRJ_BLD}/lib
#LIBJSON_LIB = $${LIBJSON_PKG_BLD}/lib
#LIBJSON_LIB = $${LIBJSON_PRJ_BLD}/lib
#LIBJSON_LIB = $${VERSA_LIB}
#LIBJSON_LIB_NAME = $${LIBJSON_NAME}
LIBJSON_LIB = $${ARGO_LIBJSON_THIRDPARTY_PRJ_BLD}/lib

# libjson LIBS
#
libjson_LIBS += \
-L$${LIBJSON_LIB}/lib$${LIBJSON_LIB_NAME} \
-l$${LIBJSON_LIB_NAME} \

########################################################################
# arbora

# arbora INCLUDEPATH
#
arbora_INCLUDEPATH += \

# arbora DEFINES
#
arbora_DEFINES += \

# arbora os LIBS
#
contains(ARBORA_OS,macosx|linux) {
arbora_os_LIBS += \
-lpthread \
-ldl
} else {
} # contains(ARBORA_OS,macosx|linux)

contains(ARBORA_OS,linux) {
arbora_os_LIBS += \
-lrt
} else {
} # contains(ARBORA_OS,linux)


# arbora base LIBS
#
arbora_base_LIBS += \
$${stara_LIBS} \
$${rete_LIBS} \
$${cifra_LIBS} \
$${versa_LIBS} \
$${crono_LIBS} \
$${fila_LIBS} \
$${nadir_LIBS} \
$${rostra_LIBS} \


# arbora LIBS
#
arbora_LIBS += \
$${arbora_base_LIBS} \
$${build_arbora_LIBS} \
$${arbora_os_LIBS} \

# arbora json LIBS
#
arbora_json_LIBS += \
$${libjson_LIBS} \
$${argo_LIBS} \
$${arbora_base_LIBS} \
$${build_arbora_LIBS} \
$${arbora_os_LIBS} \

# arbora talas LIBS
#
arbora_talas_LIBS += \
$${libjson_LIBS} \
$${argo_LIBS} \
$${talas_LIBS} \
$${mp_LIBS} \
$${bn_LIBS} \
$${arbora_base_LIBS} \
$${build_arbora_LIBS} \
$${arbora_os_LIBS} \

########################################################################
