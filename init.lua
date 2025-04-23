--
-- init.lua
-- LuAria
-- 
-- Copyright (c) 2025 Rednick16.
--

local status, entry = pcall(require, "main")

if not status then
    error("Failed to load 'main' module: " .. tostring(entry))
end

if type(entry) ~= "function" then
    error("'main' module loaded, but entry point 'main' function was not found. Please define an entry point 'main' function in your 'main.lua' and return it at the end with 'return main'.")
end

entry() --loader.addEventListener(0, main)