--!A cross-platform build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Copyright (C) 2015-present, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        xmake.lua
--

-- Define xpack interfaces to generate installation package. e.g. nsis, deb, rpm, ...
--
-- And we can call `xmake pack` plugin to pack them.
--
-- @see https://github.com/xmake-io/xmake/issues/1433
--

-- define apis
local apis = {
    values = {
        -- set package version,  we will also get it from project/target
        "xpack.set_version",
        -- set pacakge homepage url
        "xpack.set_homepage",
        -- set package description
        "xpack.set_description",
        -- set package license, we will also get them from target
        "xpack.set_license",
        -- set package formats, e.g. nsis, deb, rpm, targz, zip, runself, ...
        "xpack.set_formats",
        -- add targets to be packaged
        "xpack.add_targets",
        -- add install files, we will also get them from target
        "xpack.add_installfiles",
        -- set install directory, we will also get it from target
        "xpack.set_installdir"
    },
    script = {
        -- add custom install commands script, we will also get it from target/rules
        "xpack.on_installcmd",
        -- add custom uninstall commands script, we will also get it from target/rules
        "xpack.on_uninstallcmd"
    }
}
interp_add_scopeapis(apis)
