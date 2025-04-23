--
-- main.lua
-- LuAria
-- 
-- Copyright (c) 2025 YourName.
--

-- Require any modules that you need.
local loader = require("loader")
local IL2CPP = require("loader.il2cpp")
--local ImGui = require("loader.imgui")
--local Vector2 = require("Vector2")

--[[
-- This callback is Called on the main thread 
-- each tick (~60 frames per second)
--
-- @param deltaTime (number): seconds since the last tick
-- @param fps       (number): actaul frames per second
--
-- Use this callback for any per-frame logic: calculations, 
-- timed events, locking values, counters, etc.
--
-- Registerd in 'onModLoad' with:
-- loader.addEventListener(3, onUpdate)
--]]
local function onUpdate(deltaTime, fps)
    -- deltaTime: time since the last tick
    -- fps: actaul frames per second

    -- Uncomment to see the logs
    -- loader.log("deltaTime: " .. deltaTime .. " fps: " .. fps)
end

--[[
-- This function is extreamly important and 
-- I recommand every mod to make use of it.  
--
-- This callback function gets called after core initialization 
--
-- If your mod needs to use imgui for drawing or 
-- just need an update function make sure 
-- you register the callbacks within 'onModLoad'  
--
-- It's good practice to load saved values, 
-- data, or any custom files at start so you 
-- don't have to worry about it later on.
--]]
local function onModLoad()
    loader.alert("Hi Dad!", "This is my first mod")

    --[[
    -- Here we will register for the update callback, 
    -- so we can execute code on the main thread every tick
    --
    -- Now this is very important, we can check for 
    -- timed updates, we can lock values and so much more.
    --]]
    loader.addEventListener(3, onUpdate)
end

--[[
-- Another very important callback. 
--
-- This callback gets called right before your 
-- mod is unloaded by the loader.
--
-- When your mod gets unloaded (disabled), 
-- any modifications you make to the game you need 
-- to make sure you undo them so next time you build the mod 
-- you don't have to restart the game, because you broke somthing lol
--]]
local function onModUnload()

end

-- This is the 'main' entry point of your mod.
local function main()
    loader.addEventListener(0, onModLoad)
    loader.addEventListener(1, onModUnload)
end

return main