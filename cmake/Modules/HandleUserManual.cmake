if(NO_USERMANUAL)
	message(STATUS "building without usermanual")
	add_definitions(-DNO_USERMANUAL)
else()
	if(USE_WEBENGINE)
		message(STATUS "building with QWebEngine")
		list(APPEND QT_EXTRA_COMPONENTS WebEngineWidgets)
		add_definitions(-DUSE_WEBENGINE)
	else()
		list(APPEND QT_EXTRA_COMPONENTS WebKitWidgets)
	endif()
endif()
