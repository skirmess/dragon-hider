
local DragonHider_Version = 2

function DragonHider_OnEvent(event)

	if ( event == "PLAYER_ENTERING_WORLD" ) then
		this:UnregisterEvent("PLAYER_ENTERING_WORLD")

		MainMenuBarLeftEndCap:Hide()
		MainMenuBarRightEndCap:Hide()

		DEFAULT_CHAT_FRAME:AddMessage(string.format("DragonHider %i loaded.", DragonHider_Version ))
	end
end

