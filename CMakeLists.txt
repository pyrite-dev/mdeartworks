cmake_minimum_required(VERSION 3.25)
project(
	mdeartworks
)

file(
	GLOB
	ICONS
	icons/*.png
)

file(
	GLOB
	WALLPAPERS
	wallpapers/*.png
)

include(GNUInstallDirs)
install(
	FILES ${ICONS}
	DESTINATION ${CMAKE_INSTALL_DATADIR}/mde/icons
)
install(
	FILES ${WALLPAPERS}
	DESTINATION ${CMAKE_INSTALL_DATADIR}/mde/wallpapers
)
