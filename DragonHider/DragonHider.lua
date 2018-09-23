
-- Copyright (c) 2009-2018, Sven Kirmess

local Version = 13

local function EventHandler(self, event, ...)

	if ( event == "PLAYER_ENTERING_WORLD" ) then
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")

		MainMenuBarArtFrame.LeftEndCap:Hide()
		MainMenuBarArtFrame.RightEndCap:Hide()

		DEFAULT_CHAT_FRAME:AddMessage(string.format("DragonHider %i loaded.", Version ))
	end
end

-- main
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", EventHandler)

