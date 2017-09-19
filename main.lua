rpm = 0

max_rpm = 8000

function love.load()
	arrow = love.graphics.newImage("background.png")
	background = love.graphics.newImage("arrow.png")

end

rotation = 0

function love.draw()
    love.graphics.print("RPM:"..rpm, 0, 0)
    
    
    love.graphics.draw(background,  300, 350,rotation, 5, 5,16,32)
    
end

add = true
function love.update(dt)
	if add == true then
		rpm = rpm + 100
	elseif add == false then
		rpm = rpm - 100
	end
	
	if rpm >= max_rpm then
		add = false
	elseif rpm <= 0 then
		add = true
	end
	rotation = rpm_to_degree(rpm)
	
	

end




function rpm_to_degree(rpm)
	local x = -90
	local perc = rpm/max_rpm
	
	local y = perc*180
	
	local z = radians(x+y)
	
	return(z)
	
end

--- random functions
function radians(degrees)
	return(degrees * math.pi / 180)
end
