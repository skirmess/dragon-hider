
-- Copyright (c) 2009, Sven Kirmess

local DragonHider_Version = 4

function DragonHider_OnEvent(event)

	if ( event == "PLAYER_ENTERING_WORLD" ) then
		this:UnregisterEvent("PLAYER_ENTERING_WORLD")

		MainMenuBarLeftEndCap:Hide()
		MainMenuBarRightEndCap:Hide()

		DEFAULT_CHAT_FRAME:AddMessage(string.format("DragonHider %i loaded.", DragonHider_Version ))
	end
end

