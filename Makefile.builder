ifeq ($(PACKAGE_SET),vm)
WIN_COMPILER = msbuild
WIN_SLN_DIR = vs2017
WIN_SOURCE_SUBDIRS = .
WIN_OUTPUT_LIBS = bin
WIN_OUTPUT_BIN = bin
WIN_BUILD_DEPS = core-vchan-xen windows-utils core-qubesdb
WIN_PREBUILD_CMD = set_version.bat && powershell -executionpolicy bypass -File set_version.ps1 < nul
WIN_PACKAGE_CMD = xcopy /y *.wxs bin\\$(DDK_ARCH)
WIN_CROSS_PACKAGE_CMD = cp *.wxs bin/$(DDK_ARCH)
endif
