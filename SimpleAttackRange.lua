local AttackRange = CreateFrame("Frame", nil, PlayerFrame,PlayerFrame)
AttackRange:SetSize(1, 1)
AttackRange:SetPoint("CENTER", 50, 38)
local AttackRangeText = AttackRange:CreateFontString(AttackRange, "OVERLAY", "GameTooltipText")
AttackRangeText:SetPoint("CENTER", 0, 0)
local SelfLevel  = UnitLevel("Player")
local AttackLow  = SelfLevel - 3
local AttackHigh = SelfLevel + 3
AttackRangeText:SetText("AttackRange: "..AttackLow.."-"..AttackHigh)