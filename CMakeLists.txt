cmake_minimum_required(VERSION 3.25)
project(
	mdeartworks
)

file(
	GLOB
	ICONS
	icons/*.png
)

include(GNUInstallDirs)
install(
	FILES ${ICONS}
	DESTINATION ${CMAKE_INSTALL_DATADIR}/mde/icons
)
