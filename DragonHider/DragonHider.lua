
-- Copyright (c) 2009, Sven Kirmess

local Version = 5

function EventHandler(self, event, ...)

	if ( event == "PLAYER_ENTERING_WORLD" ) then
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")

		MainMenuBarLeftEndCap:Hide()
		MainMenuBarRightEndCap:Hide()

		DEFAULT_CHAT_FRAME:AddMessage(string.format("DragonHider %i loaded.", Version ))
	end
end

-- main
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PLAYER_LEAVING_WORLD")
frame:SetScript("OnEvent", EventHandler)

