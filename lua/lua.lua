---[Function for the button]---
--[LUA]--

local function createButton(Type,parent, posX, posY, sizeX, sizeY, imagePath)
        local button = vgui.Create(Type, parent)
        button:SetPos(posX, posY)
        button:SetSize(sizeX, sizeY)
        button:SetImage(imagePath)
        return button
    end

---[Function for the label]---
--[LUA]--

local function createLabel(parent, posX, posY, text, width, height, font, color)
    local label = vgui.Create("DLabel", parent)
    label:SetPos(posX, posY)
    label:SetTextColor(color)
    label:SetFont(font)
    label:SetSize(width, height)
    label:SetText(text)
    return label
end

---[Horizontal Scrolling]---
--[LUA]--
local Conteiner = vgui.Create("DHorizontalScroller", frame5)
    Conteiner:SetSize(913, 67)
    Conteiner:SetPos(42, 498)
    Conteiner:SetOverlap( -4 )
function Conteiner.btnLeft:Paint( w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 200, 100, 0,0) )
end
function Conteiner.btnRight:Paint( w, h )
    draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 100, 200,0) )
end

---[Transferring a click from an HTML page to the GLUA client]---
--[HTML]--

if (window.gmod{ window.gmod.emit('button_click', 'button1');}

--[LUA\CLIENT]--

html:AddFunction("gmod", "emit", function(buttonId)
   if type(buttonId) == "string" then
   print("Кнопка нажата: " .. buttonId)
   else
      print("Получен неожиданный тип: " .. type(buttonId))
   end
end)

---[Transferring a table from a client to an HTML page]---
--[LUA\CLIENT]--
local jsonData = util.TableToJSON(bler_static)
html:RunJavascript("init(" .. jsonData .. ");")

--[HTML]--
function init(data) {
    document.getElementById("status_blindozer").innerText = data.stage_1.bler_activ_sost;
    document.getElementById("name_blindozer").innerText = data.stage_1.bler_name;
    document.getElementById("number_blindozer").innerText = data.stage_1.bler_number;
}
