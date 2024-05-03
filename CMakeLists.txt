cmake_minimum_required(VERSION 3.16)

project(CarMultimedia VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appCarMultimedia
    main.cpp
)

qt_add_qml_module(appCarMultimedia
    URI CarMultimedia
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES images/abstract-textured-backgound.jpg
        QML_FILES Grid_1.qml
        QML_FILES Grid_2.qml
        QML_FILES StackViewP.qml
        QML_FILES Station.qml
        QML_FILES StatusBar.qml
        RESOURCES images/48151.jpg images/49599.jpg images/Beatles_Get_Back.jpg images/bluetooth-2.png images/Cd.jpg images/cinema.png images/cog-wheels.jpg images/mail.png images/loudspeaker.png images/preview.jpg images/usb-2.jpg images/very-cloudy.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appCarMultimedia PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appCarMultimedia
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appCarMultimedia
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appCarMultimedia
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
