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