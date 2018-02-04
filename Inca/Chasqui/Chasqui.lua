-- Chasqui
-- Author: pineappledan (modified from Qizilbash by Adan_eslavo)
-- DateCreated: 26/01/2018
-- 2018-02-04 Modified by Infixo
--------------------------------------------------------------
include("FLuaVector.lua")

function Chasquiwasi(iPlayer)
    local pPlayer = Players[iPlayer]

    for pUnit in pPlayer:Units() do
        if pUnit:IsHasPromotion(GameInfoTypes.PROMOTION_CHASQUI_HEAL) then
            local pPlot = Map.GetPlot(pUnit:GetX(), pUnit:GetY())

            if pPlot:GetOwner() == iPlayer then
				pUnit:ChangeDamage(-5)

				if pPlayer:IsHuman() and pPlayer:IsTurnActive() then
					local vUnitPosition = PositionCalculator(pUnit:GetX(), pUnit:GetY())

					Events.AddPopupTextEvent(vUnitPosition, "[COLOR_POSITIVE_TEXT]Chasquiwasi[ENDCOLOR]", 2)
				end
            end
        end
    end
end

function PositionCalculator(i1, i2)
	return HexToWorld(ToHexFromGrid(Vector2(i1, i2)))
end

GameEvents.PlayerDoTurn.Add(Chasquiwasi)