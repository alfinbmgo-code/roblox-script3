local car = script.Parent
local checkpoints = workspace.Checkpoints:GetChildren()

table.sort(checkpoints,function(a,b)
	return a.Name < b.Name
end)

local delayTime = 2

local function moveCar(target)
	local pos = target.Position + Vector3.new(0,5,0)
	car:PivotTo(CFrame.new(pos))
end

task.spawn(function()
	for _,cp in ipairs(checkpoints) do
		moveCar(cp)
		task.wait(delayTime)
	end
end)
