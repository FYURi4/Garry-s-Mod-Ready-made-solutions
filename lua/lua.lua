--[Horizontal Scrolling]--
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
