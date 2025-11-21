cmake_minimum_required(VERSION 3.25)
project(
	mdeartworks
)

file(
	GLOB
	ICONS_SCALABLE
	icons/scalable/*.svg
)
file(
	GLOB
	ICONS_128
	icons/128x128/*.png
)
file(
	GLOB
	ICONS_64
	icons/64x64/*.png
)
file(
	GLOB
	ICONS_32
	icons/32x32/*.png
)
file(
	GLOB
	ICONS_16
	icons/16x16/*.png
)

file(
	GLOB
	WALLPAPERS
	wallpapers/*.png
)

include(GNUInstallDirs)
install(
	FILES ${ICONS_SCALABLE}
	DESTINATION ${CMAKE_INSTALL_DATADIR}/mde/icons/scalable
)
install(
	FILES ${ICONS_128}
	DESTINATION ${CMAKE_INSTALL_DATADIR}/mde/icons/128x128
)
install(
	FILES ${ICONS_64}
	DESTINATION ${CMAKE_INSTALL_DATADIR}/mde/icons/64x64
)
install(
	FILES ${ICONS_32}
	DESTINATION ${CMAKE_INSTALL_DATADIR}/mde/icons/32x32
)
install(
	FILES ${ICONS_16}
	DESTINATION ${CMAKE_INSTALL_DATADIR}/mde/icons/16x16
)
install(
	FILES ${WALLPAPERS}
	DESTINATION ${CMAKE_INSTALL_DATADIR}/mde/wallpapers
)
