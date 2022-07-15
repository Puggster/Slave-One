KraytGraveyardScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("KraytGraveyardScreenPlay", true)

function KraytGraveyardScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function KraytGraveyardScreenPlay:spawnMobiles()
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 7227.5, 33.2, 4495.8, -116, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 600, 7233.2, 30.1, 4487.1, -116, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 7178, 24.5, 4429.9, -100, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 600, 7172.0, 22.5, 4441.0, -100, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 7035.7, 22.8, 4337.2, -55, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 600, 7043.2, 22.2, 4344.3, -55, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 6872.9, 41.7, 4246.9, -99, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 600, 6877.9, 45.5, 4237.0, -99, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 6564.1, 87.7, 4484.8, 133, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 600, 6575.9, 92.5, 4487.7, 133, 0)
	spawnMobile("tatooine", "canyon_krayt_dragon", 900, 7523.5, 4.5, 4655.5, -163, 0)
	spawnMobile("tatooine", "juvenile_canyon_krayt_dragon", 600, 7513.0, 4.1, 4656.1, -163, 0)

	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 7515.6, 8.7, 4556.5, -35, 0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 7417.3, 7.7, 4597.9, -128, 0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 7300.1, 23.3, 4461.9, -156,0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 7140.4, 57, 4322.5, -86, 0)

	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7555.4, 15.1, 4488.8, -90, 0)
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7429.9, 7.1, 4477.3, 0, 0)

	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 6836.7, 25.4, 4321.8, -150, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7491.3, 8.4, 4484.8, -150, 0)

	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7525.1, 28.3, 4387.5, -74, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7269.8, 62.4, 4352.7, -77,0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7077.4, 20.0, 4447.3, -123, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7003.0, 86.3, 4200.4, 10, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 6726.8, 19.5, 4288.6, -91, 0)

	--Just south of GY
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 6697.54, 10.5581, 3198.8, 309, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 6644.58, 8.01662, 3171.85, 309, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 6760.06, 13.1678, 3279.81, 342, 0)

	-- Additional Krayts inside GY
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7052.62, 105.013, 4684.13, 137, 0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 6983.78, 123.874, 4521.56, 40, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7124.15, 129.685, 4556.56, 203, 0)
	spawnMobile("tatooine", "krayt_dragon_ancient", 900, 7550.29, 21.4743, 4962.99, 188, 0)
	spawnMobile("tatooine", "krayt_dragon_adolescent", 900, 7620.43, 31.7115, 4757.5, 235, 0)
	spawnMobile("tatooine", "giant_canyon_krayt_dragon", 900, 7484.5, 6.80448, 4778.94, 170, 0)
	spawnMobile("tatooine", "krayt_dragon_grand", 900, 7551.23, 20.6367, 5125.65, 190, 0)

end
