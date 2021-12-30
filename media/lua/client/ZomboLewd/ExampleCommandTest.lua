local Client = require("ZomboLewd/ZomboLewd")

--- Sends a message to all clients after some ticks. Only works in multiplayer
function Client.Ticks(tick)
	if not tick then return end

	if tick >= 100 then
		print("Client sending a command...")
		Client.Callbacks:sendClientCommand("ExampleCommand", "Hi There! Example message!!")
		Events.OnTick.Remove(Client.Ticks)
	end
end

Events.OnTick.Add(Client.Ticks)