project "imgui"
    kind "StaticLib"
    language "C++"
    warnings "off"
    pic "On"

    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "*.h",
        "*.cpp",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "speed"

    

