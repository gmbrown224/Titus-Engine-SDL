project "SDL"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/SDL3/**.h",
		"src/**.h",
		"src/**.c"
	}

	includedirs
	{
		"include"
	}

	includedirs
	{
		"src"
	}

	filter "system:windows"
		systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"