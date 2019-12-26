/*
 * BuffCRC.h
 *
 *  Created on: 15/08/2010
 *      Author: victor
 */

#ifndef BUFFCRC_H_
#define BUFFCRC_H_

class BuffCRC {
public:
	// TEST
	enum {
		TEST_FIRST  = 0x1967AF38,
		TEST_SECOND = 0xA24A7A5B,
		CLONE_SICKNESS_0 = 0x2412A7EC,
		FORCE_SERENITY_1 = 0xD14F960F
	};

	// MEDICAL
	enum {
		MEDICAL_ENHANCE_HEALTH       = 0x98321369,
		MEDICAL_ENHANCE_STRENGTH     = 0x815D85C5,
		MEDICAL_ENHANCE_CONSTITUTION = 0x7F86D2C6,
		MEDICAL_ENHANCE_ACTION       = 0x4BF616E2,
		MEDICAL_ENHANCE_QUICKNESS    = 0x71B5C842,
		MEDICAL_ENHANCE_STAMINA      = 0xED0040D9,
		MEDICAL_ENHANCE_POISON       = 0x391AC375,
		MEDICAL_ENHANCE_DISEASE      = 0x3595876
	};

	// PERFORMANCE
	enum {
		PERFORMANCE_ENHANCE_DANCE_MIND      = 0x11C1772E,
		PERFORMANCE_ENHANCE_MUSIC_FOCUS     = 0x2E77F586,
		PERFORMANCE_ENHANCE_MUSIC_WILLPOWER = 0x3EC6FCB6
	};

	// SPICE
	enum {
		SPICE_BOOSTER_BLUE_UP    = 0x18A5AEFB,
		SPICE_BOOSTER_BLUE_DOWN  = 0xC62DFBF1,
		SPICE_CRASH_N_BURN_UP    = 0x5E1BE4D6,
		SPICE_CRASH_N_BURN_DOWN  = 0xA920056F,
		SPICE_DROID_LUBE_UP      = 0x0C969AE9,
		SPICE_DROID_LUBE_DOWN    = 0x7E3B0A02,
		SPICE_GIGGLEDUST_UP      = 0x3E41BA17,
		SPICE_GIGGLEDUST_DOWN    = 0xC11922D4,
		SPICE_GREY_GABAKI_UP     = 0xE5C9CD20,
		SPICE_GREY_GABAKI_DOWN   = 0xD2121CC4,
		SPICE_GUNJACK_UP         = 0x09B6F8FC,
		SPICE_GUNJACK_DOWN       = 0x13305C97,
		SPICE_MUON_GOLD_UP       = 0xFBE87E37,
		SPICE_MUON_GOLD_DOWN     = 0x8228D074,
		SPICE_NEUTRON_PIXEY_UP   = 0x5DC6921F,
		SPICE_NEUTRON_PIXEY_DOWN = 0x8D549786,
		SPICE_PYREPENOL_UP       = 0x1EBC62E5,
		SPICE_PYREPENOL_DOWN     = 0x813D6F28,
		SPICE_SCRAMJET_UP        = 0x2E03F676,
		SPICE_SCRAMJET_DOWN      = 0xA02DF2DE,
		SPICE_SEDATIVE_H4B_UP    = 0xD7A72ACF,
		SPICE_SEDATIVE_H4B_DOWN  = 0x35D64963,
		SPICE_SHADOWPAW_UP       = 0x3AAD2B89,
		SPICE_SHADOWPAW_DOWN     = 0xE506BE60,
		SPICE_SWEETBLOSSOM_UP    = 0x7EC00CB8,
		SPICE_SWEETBLOSSOM_DOWN  = 0x5B3DB3C1,
		SPICE_THRUSTER_HEAD_UP   = 0x530E31B7,
		SPICE_THRUSTER_HEAD_DOWN = 0x3AE01653,
		SPICE_YARROCK_UP         = 0xE7F8C957,
		SPICE_YARROCK_DOWN       = 0xA664F2EC,
		SPICE_KLIKNIK_BOOST_UP   = 0x37173CAD,
		SPICE_KLIKNIK_BOOST_DOWN = 0x7DE346EF,
		SPICE_KWI_BOOST_UP       = 0x629FA918,
		SPICE_KWO_BOOST_DOWN     = 0x714E1687
	};


	// FORCE_RANK
	enum {
		FORCE_RANK_SUFFERING = 0xF531B147,
		FORCE_RANK_SERENITY  = 0xA09E5934
	};

	// JEDI
	enum {
		JEDI_FORCE_RUN_1            = 0x9A04E4F8,
		JEDI_FORCE_RUN_2            = 0x9747C221,
		JEDI_FORCE_RUN_3            = 0x9386DF96,
		JEDI_FORCE_SPEED_1          = 0xA8A97B7F,
		JEDI_FORCE_SPEED_2          = 0xA5EA5DA6,
		JEDI_FORCE_ARMOR_1          = 0xFB65D2D6,
		JEDI_FORCE_ARMOR_2          = 0xF626F40F,
		JEDI_FORCE_SHIELD_1         = 0x10900417,
		JEDI_FORCE_SHIELD_2         = 0x1DD322CE,
		JEDI_FORCE_PROTECTION_1     = 0x6F1A719D,
		JEDI_FORCE_FEEDBACK_1       = 0xB9EC27B0,
		JEDI_FORCE_FEEDBACK_2       = 0xB4AF0169,
		JEDI_FORCE_ABSORB_1         = 0xA7FCF8F0,
		JEDI_FORCE_ABSORB_2         = 0xAABFDE29,
		JEDI_RESIST_DISEASE         = 0xD9925CB4,
		JEDI_RESIST_POISON          = 0x2F969FE7,
		JEDI_RESIST_BLEEDING        = 0xADA10184,
		JEDI_RESIST_STATES          = 0xB0457693,
		JEDI_AVOID_INCAPACITATION   = 0x4FDD1C66,
		JEDI_AVOID_INCAPACITATION_1 = 0xA077BD29,
		JEDI_AVOID_INCAPACITATION_2 = 0xAD349BF0,
		JEDI_AVOID_INCAPACITATION_3 = 0xA9F58647,
		JEDI_AVOID_INCAPACITATION_4 = 0xB7B2D642,
		JEDI_AVOID_INCAPACITATION_5 = 0xB373CBF5
	};


	// SKILL
	enum {
		SKILL_BUFF_MELEE_ACCURACY        = 0x548DE45B,
		SKILL_BUFF_RANGED_DEFENSE        = 0xA6407812,
		SKILL_BUFF_CARBINE_ACCURACY      = 0xA996D07E,
		SKILL_BUFF_CARBINE_SPEED         = 0xC6148607,
		SKILL_BUFF_MASK_SCENT            = 0x30EB839E,
		SKILL_BUFF_MELEE_DEFENSE         = 0xC78FA3B7,
		SKILL_BUFF_ONEHANDMELEE_ACCURACY = 0x05C34219,
		SKILL_BUFF_ONEHANDMELEE_SPEED    = 0x0696D76F,
		SKILL_BUFF_PISTOL_ACCURACY       = 0x55471D61,
		SKILL_BUFF_PISTOL_SPEED          = 0x26F41BAD,
		SKILL_BUFF_RIFLE_ACCURACY        = 0x33ADEE46,
		SKILL_BUFF_RIFLE_SPEED           = 0x1F7E043E,
		SKILL_BUFF_UNARMED_ACCURACY      = 0x027D9E64,
		SKILL_BUFF_UNARMED_SPEED         = 0x133ADA2F,
		SKILL_BUFF_TWOHANDMELEE_ACCURACY = 0x8F47051E,
		SKILL_BUFF_TWOHANDMELEE_SPEED    = 0x5F1BD61A,
		SKILL_BUFF_RANGED_ACCURACY       = 0x33329A7B,
		SKILL_BUFF_THROWN_ACCURACY       = 0xBFEEDABF,
		SKILL_BUFF_THROWN_SPEED          = 0x232EE11E,
		SKILL_BUFF_HEAVY_WEAPON_ACCURACY = 0xAFDFE174,
		SKILL_BUFF_HEAVY_WEAPON_SPEED    = 0x311A7044,
		SKILL_BUFF_POLEARM_ACCURACY      = 0xF0C5EEED,
		SKILL_BUFF_POLEARM_SPEED         = 0x6F675FB6,
		SKILL_BUFF_POWERBOOST            = 0x7C0CCF17
	};


	// INNATE
	enum {
		INNATE_BUFF_REGENERATION = 0xD1514A47,
		INNATE_BUFF_VITALIZE     = 0x477D7E4
	};

	// FOOD
	enum {
		FOOD_MITIGATE_DAMAGE             = 0x3B105001,
		FOOD_HEAL_RECOVERY               = 0xB9EB6FC6,
		FOOD_INCAP_RECOVERY              = 0x635AC195,
		FOOD_DODGE_ATTACK                = 0x030F591C,
		FOOD_ATTACK_ACCURACY             = 0x1E197C45,
		FOOD_POISON_DISEASE_RESIST       = 0x6CB96F62,
		FOOD_BLEED_RESIST                = 0x015260E8,
		FOOD_FIRE_RESIST                 = 0xF72CBED5,
		FOOD_XP_INCREASE                 = 0xD006C190,
		FOOD_CRAFT_BONUS                 = 0x65F96F03,
		FOOD_EXPERIMENT_BONUS            = 0x9B38A4CB,
		FOOD_REDUCE_CLONE_WOUNDS         = 0x9961A0F0,
		FOOD_REDUCE_SPICE_DOWNTIME       = 0x956C8A0E,
		FOOD_ACCELERATE_ENTERTAINER_BUFF = 0x13F08F86
	};

	// FOOD_DISH
	enum {
		FOOD_DISH_TRAVEL_BISCUITS              = 0x62932AF7,
		FOOD_DISH_KANALI_WAFERS                = 0xFCBAD7ED,
		FOOD_DISH_TELTIER_NOODLES              = 0x9AC8258E,
		FOOD_DISH_VEGHASH                      = 0xD94616DE,
		FOOD_DISH_GRUUVAN_SHAAL                = 0x6F291A67,
		FOOD_DISH_SCRIMPI                      = 0xBCB608D9,
		FOOD_DISH_AHRISA                       = 0x234F7DA8,
		FOOD_DISH_RAKRIRIAN_BURNOUT_SAUCE      = 0xC2D87307,
		FOOD_DISH_VEGEPARSINE                  = 0xF02878A3,
		FOOD_DISH_BIVOLI_TEMPARI               = 0x2114D76D,
		FOOD_DISH_TERRATTA                     = 0x904ACDDB,
		FOOD_DISH_THAKITILLO                   = 0xDC5D4FD7,
		FOOD_DISH_VERCUPTI_OF_AGAZZA_BOLERUUEE = 0x50AFB0A1
	};

	// FOOD_DESSERT
	enum {
		FOOD_DESSERT_BLOB_CANDY                   = 0x8268C9CB,
		FOOD_DESSERT_PKNEB                        = 0xF12D3826,
		FOOD_DESSERT_ALMOND_KWEVVU_CRISP_MUNCHIES = 0x8B82942E,
		FOOD_DESSERT_BOFA_TREAT                   = 0x8B72DED3,
		FOOD_DESSERT_WON_WON                      = 0xC4104F19,
		FOOD_DESSERT_CHANDAD                      = 0x7E4BED62,
		FOOD_DESSERT_DWEEZEL                      = 0x752E4991,
		FOOD_DESSERT_KIWIK_CLUSJO_SWIRL           = 0x1B25BCC9,
		FOOD_DESSERT_VAGNERIAN_CANAPE             = 0xFB554185
	};

	// FOOD_DRINK
	enum {
		FOOD_DRINK_ACCARRAGM                    = 0xE61D3848,
		FOOD_DRINK_BREATH_OF_HEAVEN             = 0xF87AA911,
		FOOD_DRINK_CAF                          = 0x0BDFFC50,
		FOOD_DRINK_CORELLIAN_ALE                = 0x02AE6B5E,
		FOOD_DRINK_CORELLIAN_BRANDY             = 0xDFB97272,
		FOOD_DRINK_DEUTERIUM_PYRO               = 0x522345BE,
		FOOD_DRINK_DURINDFIRE                   = 0x728B0811,
		FOOD_DRINK_ELSHANDRUU_PICA_THUNDERCLOUD = 0x22B58BFA,
		FOOD_DRINK_GARRMORL                     = 0x6B9D4C68,
		FOOD_DRINK_GRALINYN_JUICE               = 0x58BEB487,
		FOOD_DRINK_ITHORIAN_MIST                = 0xBA83D0E2,
		FOOD_DRINK_JAWA_BEER                    = 0x1D9DAE11,
		FOOD_DRINK_SPICED_TEA                   = 0x717401BC,
		FOOD_DRINK_VASARIAN_BRANDY              = 0x292DD6D3,
		FOOD_DRINK_VAYERBOK                     = 0x188D3769,
		FOOD_DRINK_VERONIAN_BERRY_WINE          = 0xABA01703
	};


	uint32 static getMedicalBuff(uint8 attribute) {
		uint32 buffCRC = 0;

		switch (attribute) {
		case BuffAttribute::HEALTH:
			buffCRC = BuffCRC::MEDICAL_ENHANCE_HEALTH;
			break;
		case BuffAttribute::ACTION:
			buffCRC = BuffCRC::MEDICAL_ENHANCE_ACTION;
			break;
		case BuffAttribute::STRENGTH:
			buffCRC = BuffCRC::MEDICAL_ENHANCE_STRENGTH;
			break;
		case BuffAttribute::CONSTITUTION:
			buffCRC = BuffCRC::MEDICAL_ENHANCE_CONSTITUTION;
			break;
		case BuffAttribute::QUICKNESS:
			buffCRC = BuffCRC::MEDICAL_ENHANCE_QUICKNESS;
			break;
		case BuffAttribute::STAMINA:
			buffCRC = BuffCRC::MEDICAL_ENHANCE_STAMINA;
			break;
		case BuffAttribute::POISON:
			buffCRC = BuffCRC::MEDICAL_ENHANCE_POISON;
			break;
		case BuffAttribute::DISEASE:
			buffCRC = BuffCRC::MEDICAL_ENHANCE_DISEASE;
			break;
		}

		return buffCRC;
	}
};


#endif /* BUFFCRC_H_ */
