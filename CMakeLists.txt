cmake_minimum_required(VERSION 3.25)
project(
	mdeartworks
)

include(GNUInstallDirs)
install(
	DIRECTORY icons/
	DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/icons/mde
)
install(
	DIRECTORY wallpapers/
	DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/wallpapers/mde
	FILES_MATCHING
		PATTERN "*.png"
		PATTERN "*.jpg"
)
