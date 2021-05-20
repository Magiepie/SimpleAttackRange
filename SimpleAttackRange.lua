local AttackRange = CreateFrame("Frame", nil, PlayerFrame,PlayerFrame)
AttackRange:SetSize(1, 1)
AttackRange:SetPoint("CENTER", 50, 38)
local AttackRangeText = AttackRange:CreateFontString(AttackRange, "OVERLAY", "GameTooltipText")
AttackRangeText:SetPoint("CENTER", 0, 0)

function SetAttackRangeText(SelfLevel)
	local AttackLow  = SelfLevel - 3
	local AttackHigh = SelfLevel + 3
	AttackRangeText:SetText("AttackRange: "..AttackLow.."-"..AttackHigh)
end

SetAttackRangeText(UnitLevel("Player"))

local frame, events = CreateFrame("Frame"), {};
function events:PLAYER_LEVEL_UP(arg1 )
	SetAttackRangeText(arg1)
end

frame:SetScript("OnEvent", function(self, event, ...)
	events[event](self, ...); 
end);
for k, v in pairs(events) do
	frame:RegisterEvent(k);
end
