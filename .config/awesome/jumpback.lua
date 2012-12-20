local data = { last = nil }
local capi = { client = client, mouse = mouse }
local tag = require("awful.tag")

-- cloned from awful.client.urgent.jumpto
function jumpback()
    c = data.last
    if c then
        local s = capi.client.focus and capi.client.focus.screen or capi.mouse.screen
        -- focus the screen
        if s ~= c.screen then
            capi.mouse.screen = c.screen
        end

        -- Try to make client visible, this also covers e.g. sticky
        local t = c:tags()[1]
        if t and not c:isvisible() then
            if merge then
                t.selected = true
            else
                tag.viewonly(t)
            end
        end

        -- focus the client
        capi.client.focus = c
        c:raise()
    end
end

function drop(c)
    if (c == data.last) then
        data.last = nil
    end
end

capi.client.add_signal("unfocus", function(c) data.last = c end)
capi.client.add_signal("unmanage", drop)
api = { jumpback = jumpback }
return api
