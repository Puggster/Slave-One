
object_mobile_vehicle_landspeeder_organa = object_mobile_vehicle_shared_landspeeder_organa:new {
	templateType = VEHICLE,
	decayRate = 30, -- Damage tick per decay cycle
	decayCycle = 600, -- Time in seconds per cycle
	passengerCapacity = 1,
	passengerSeatString = "organa_speeder",
}

ObjectTemplates:addTemplate(object_mobile_vehicle_landspeeder_organa, "object/mobile/vehicle/landspeeder_organa.iff")
