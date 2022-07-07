project "assimp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	
	targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("Intermediate/" .. outputdir .. "/%{prj.name}")

	files
	{
		"build/**.h",
		"build/**.cpp",
		"build/**.hpp",
		"build/**.inl"
	}

	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		pic "on"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"