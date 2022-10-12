project "LCCV"
	kind "StaticLib"
	language "C"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/lccv.hpp",
        "include/libcamera_app.hpp",
        "include/libcamera_app_options.hpp"
        "src/lccv.hpp",
        "src/libcamera_app.hpp",
        "src/libcamera_app_options.hpp"
    }
    filter "system:linux"
        pic "On"
        systemversion "latest"
        staticruntime "On"

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"