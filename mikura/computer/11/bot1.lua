
os.loadAPI("mtable")
local m = mtable
local t = turtle

function goHome(endFlag)
	if endFlag then
		for i = 0, z - 2 do
			m.move("up")
		end
	--[[if x % 2 == 1 then
			t.turnLeft()
			for j = 0, x - 2 do
				m.move("front")
			end
			t.turnLeft()
			for k = 0, y - 2 do
				m.move("front")
			end
		else
			t.turnRight()
			for j = 0, x - 2 do
				m.move("front")
			end
		end	]]--	
	else
		for i = 0, homeZ - 2 do
			m.move("up")
		end
		print("please Fule")
		t.select(1)
		while true do
			if t.refuel() then
				break
			end
		end
		print("thx")
		turtle.refuel()
		for i = 0, homeZ - 2 do
			m.move("down")
		end
	end
end

function downTurn(a)

	if a % 2 == 0 then 
		turtle.turnRight()
		x,y = y,x
	else
		turtle.turnRight()
		turtle.turnRight()
	end
end

function checkFuel()
	if t.getFuelLevel() <= homeZ + 64 then 
		t.select( 1 )
		if t.refuel(3) then
			for i = 1 , 16 do
				if t.compareTo(i) then
					t.select(i)
					t.transferTo(1)
					break
				end
			end
		end
	end
	if t.getFuelLevel() <= homeZ then
		return true
	else
		return false
	end
end

house = false
homeZ = 0

if turtle.getFuelLevel() == 0 then
	turtle.refuel()
end 

print("set x")
x = tonumber(read())
print("set y")
y = tonumber(read())
print("set z")
z = tonumber(read())
	

for i = 0, z - 1 do
	for j = 0, x - 1 do
		for k = 0, y - 2 do
			house = checkFuel()
			if house then
				goHome(false)
			else
				m.move("front")
			end
		end
		if j ~= x - 1 then
			if j % 2 == 0 then
				turtle.turnRight()
				m.move("front")
				turtle.turnRight()
			else
				turtle.turnLeft()
				m.move("front")
				turtle.turnLeft()
		 	end
		 end
	end
	if i ~= z - 1 then
		m.move("down")
		downTurn(x)
	end
	homeZ = homeZ + 1
end
	
goHome(true)

