local ObjectManager = require("managers.object.object_manager")

RoriImperialEncampmentScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	buildingID = 2935404,
}

registerScreenPlay("RoriImperialEncampmentScreenPlay", true)

function RoriImperialEncampmentScreenPlay:start()
	if isZoneEnabled("rori") then
		local pBuilding = getSceneObject(self.buildingID)
		self:spawnMobiles()

		if (pBuilding ~= nil) then
			createObserver(FACTIONBASEFLIPPED, "RoriImperialEncampmentScreenPlay", "flipBase", pBuilding)

			if getRandomNumber(100) >= 50 then
				self:spawnRebels(pBuilding)
			else
				self:spawnImperials(pBuilding)
			end
		end
	end
end

function RoriImperialEncampmentScreenPlay:flipBase(pBuilding)
	if (pBuilding == nil) then
		return 1
	end

	BuildingObject(pBuilding):destroyChildObjects()

	if BuildingObject(pBuilding):getFaction() == FACTIONIMPERIAL then
		self:spawnRebels(pBuilding)
	else
		self:spawnImperials(pBuilding)
	end

	return 0
end

function RoriImperialEncampmentScreenPlay:spawnImperials(pBuilding)
	if (pBuilding == nil) then
		return
	end

	BuildingObject(pBuilding):initializeStaticGCWBase(FACTIONIMPERIAL)

	--inside the walls (not in buildings)

	BuildingObject(pBuilding):spawnChildCreature("rep_at_xt", 720, -5597.3, 75.9, -5660.5, 0, 0)
	BuildingObject(pBuilding):spawnChildCreature("rep_at_xt", 720, -5531.5, 75.9, -5660.5, 180, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5506.5, 75.9, -5661.1, 90, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5506.5, 75.9, -5666.9, 90, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5502.5, 75.9, -5664.0, 90, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5623.5, 75.9, -5665.5, -90, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5623.5, 75.9, -5658.7, -90, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5627.5, 75.9, -5661.6, -90, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5599.3, 75.9, -5633.7, 180, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5595.8, 75.9, -5633.7, 180, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5532.3, 75.9, -5633.7, 180, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5527.8, 75.9, -5633.7, 180, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5599.3, 75.9, -5690.0, 0, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5595.8, 75.9, -5690.0, 0, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5532.3, 75.9, -5690.0, 0, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5527.8, 75.9, -5690.0, 0, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5569.1, 75.9, -5630.4, 0, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, -5562.1, 75.9, -5630.4, 0, 0)

	--towers

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_sniper_501", 300, -5510.3, 82.9, -5702.1, 135, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_squad_leader_501", 300, -5516.1, 82.9, -5702.4, 180, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_sniper_501", 300, -5508.7, 82.9, -5630.7, 90, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_sniper_501", 300, -5509.3, 82.9, -5623.6, 45, 0)
	BuildingObject(pBuilding):spawnChildCreature("rep_jedi_knight", 300, -5514.7, 82.9, -5622.7, 0, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_sniper_501", 300, -5612.8, 83.0, -5623.3, 0, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_squad_leader_501", 300, -5618.4, 83.0, -5623.7, -45, 0)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_sniper_501", 300, -5619.4, 82.6, -5696.9, -90, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_sniper_501", 300, -5618.5, 82.6, -5702.6, -135, 0)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_squad_leader_501", 300, -5613.1, 82.6, -5703.4, 180, 0)

	--buildings

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_captain_501", 300, 4.9, 0.0, -2.0, -135, 3475375)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_sniper_501", 300, 0.0, 0.0, -5.3, 0, 3475373)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_squad_leader_501", 300, -3.8, 0.0, -3.6, 90, 3475376)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_501", 300, 0.0, 0.0, -3.6, 0, 3475366)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_sniper_501", 300, 0.0, 0.0, -5.3, 0, 3475366)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_squad_leader_501", 300, 0.0, 0.0, -1.0, 0, 3475366)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_sniper_501", 300, 3.9, 0.0, 2.1, 90, 2935496)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_squad_leader_501", 300, 0.0, 0.0, -5.3, 0, 2935495)

	--main building

	BuildingObject(pBuilding):spawnChildCreature("clone_commando", 300, 1.4, 1.0, 9.9, -90, 2935406)
	BuildingObject(pBuilding):spawnChildCreature("clone_commando", 300, 6.4, 1.0, -7.2, -90, 2935406)
	BuildingObject(pBuilding):spawnChildCreature("clone_commando", 300, 0.0, 1.0, 0.9, 0, 2935406)

	BuildingObject(pBuilding):spawnChildCreature("imperial_first_lieutenant", 300, 15.7, 1.0, 15.2, 90, 2935407)
	BuildingObject(pBuilding):spawnChildCreature("imperial_private", 300, -17.7, 1.0, 16.5, 180, 2935408)
	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_major_501", 300, 18.3, 1.0, -19.7, -45, 2935410)
	BuildingObject(pBuilding):spawnChildCreature("imperial_medic", 300, 11.7, 1.0, -19.5, 0, 2935410)
	BuildingObject(pBuilding):spawnChildCreature("imperial_private", 300, -17.5, 1.0, -19.6, 45, 2935412)

	BuildingObject(pBuilding):spawnChildCreature("clone_commando", 300, -9.2, 7.0, -13.5, 0, 2935414)
	BuildingObject(pBuilding):spawnChildCreature("clone_commando", 300, -11.7, 7.0, -13.5, 0, 2935414)

	BuildingObject(pBuilding):spawnChildCreature("clonetrooper_major_501", 300, -11.5, 7.0, 9.3, 90, 2935415)
	BuildingObject(pBuilding):spawnChildCreature("imperial_lieutenant_colonel", 300, -9.1, 7.0, 12.5, 0, 2935415)
	BuildingObject(pBuilding):spawnChildCreature("imperial_first_lieutenant", 300, 0.0, 7.0, 12.6, 0, 2935415)
	BuildingObject(pBuilding):spawnChildCreature("imperial_medic", 300, 14.1, 7.0, 11.8, 60, 2935416)

function RoriImperialEncampmentScreenPlay:spawnRebels(pBuilding)
	if (pBuilding == nil) then
		return
	end

	BuildingObject(pBuilding):initializeStaticGCWBase(FACTIONREBEL)

	--inside the walls (not in buildings)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5506.5, 75.9, -5661.1, 90, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5506.5, 75.9, -5666.9, 90, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5502.5, 75.9, -5664.0, 90, 0)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5623.5, 75.9, -5665.5, -90, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5623.5, 75.9, -5658.7, -90, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5627.5, 75.9, -5661.6, -90, 0)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5599.3, 75.9, -5633.7, 180, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5595.8, 75.9, -5633.7, 180, 0)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5532.3, 75.9, -5633.7, 180, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5527.8, 75.9, -5633.7, 180, 0)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5599.3, 75.9, -5690.0, 0, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5595.8, 75.9, -5690.0, 0, 0)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5532.3, 75.9, -5690.0, 0, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5527.8, 75.9, -5690.0, 0, 0)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5569.1, 75.9, -5630.4, 0, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5562.1, 75.9, -5630.4, 0, 0)

	--towers

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5510.3, 82.9, -5702.1, 135, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, -5516.1, 82.9, -5702.4, 180, 0)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5508.7, 82.9, -5630.7, 90, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, -5509.3, 82.9, -5623.6, 45, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_magnaguard", 300, -5514.7, 82.9, -5622.7, 0, 0)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5612.8, 83.0, -5623.3, 0, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, -5618.4, 83.0, -5623.7, -45, 0)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -5619.4, 82.6, -5696.9, -90, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, -5618.5, 82.6, -5702.6, -135, 0)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, -5613.1, 82.6, -5703.4, 180, 0)

	--buildings

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid_captain", 300, 4.9, 0.0, -2.0, -135, 3475375)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, 0.0, 0.0, -5.3, 0, 3475373)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, -3.8, 0.0, -3.6, 90, 3475376)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, 0.0, 0.0, -3.6, 0, 3475366)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, 0.0, 0.0, -5.3, 0, 3475366)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, 0.0, 0.0, -1.0, 0, 3475366)

	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, 3.9, 0.0, 2.1, 90, 2935496)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, 0.0, 0.0, -5.3, 0, 2935495)

	--main building

	BuildingObject(pBuilding):spawnChildCreature("cis_surface_marshall", 300, 1.4, 1.0, 9.9, -90, 2935406)
	BuildingObject(pBuilding):spawnChildCreature("cis_surface_marshall", 300, 6.4, 1.0, -7.2, -90, 2935406)
	BuildingObject(pBuilding):spawnChildCreature("cis_surface_marshall", 300, 0.0, 1.0, 0.9, 0, 2935406)

	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, 15.7, 1.0, 15.2, 90, 2935407)
	BuildingObject(pBuilding):spawnChildCreature("cis_surface_marshall", 300, -17.7, 1.0, 16.5, 180, 2935408)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid_captain", 300, 18.3, 1.0, -19.7, -45, 2935410)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, 11.7, 1.0, -19.5, 0, 2935410)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -17.5, 1.0, -19.6, 45, 2935412)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -9.2, 7.0, -13.5, 0, 2935414)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, -11.7, 7.0, -13.5, 0, 2935414)

	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid_captain", 300, -11.5, 7.0, 9.3, 90, 2935415)
	BuildingObject(pBuilding):spawnChildCreature("cis_magnaguard", 300, -9.1, 7.0, 12.5, 0, 2935415)
	BuildingObject(pBuilding):spawnChildCreature("cis_sbd", 300, 0.0, 7.0, 12.6, 0, 2935415)
	BuildingObject(pBuilding):spawnChildCreature("cis_battle_droid", 300, 14.1, 7.0, 11.8, 60, 2935416)

end

function RoriImperialEncampmentScreenPlay:spawnMobiles()
	--outside the walls

	spawnMobile("rori", "thug", 300, -5574.1, 75.9, -5759.4, 120, 0)
	spawnMobile("rori", "thug", 300, -5559.4, 75.9, -5761.8, 90, 0)
	spawnMobile("rori", "thug", 300, -5557.3, 75.9, -5773.4, 0, 0)
	spawnMobile("rori", "thug", 300, -5562.1, 75.9, -5772.7, -90, 0)
	spawnMobile("rori", "thug", 300, -5569.1, 75.9, -5778.4, -30, 0)
	spawnMobile("rori", "thug", 300, -5551.1, 75.9, -5782.5, 30, 0)
	spawnMobile("rori", "thug", 300, -5559.1, 75.9, -5781.4, -75, 0)
	spawnMobile("rori", "thug", 300, -5562.1, 75.9, -5784.3, 45, 0)

end
