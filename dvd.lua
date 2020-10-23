local screen_w, screen_h = guiGetScreenSize()

local img_w, img_h = 274, 123


local lx, ly = math.random(0, screen_w/2), math.random(0, screen_h) 
local lsp = 5 
local mlx, mly = lsp, lsp 


local rx, ry = math.random(screen_w/2, screen_w), math.random(0, screen_h) 
local rsp = 5 
local mrx, mry = rsp, rsp 

local function getRandColor()
	return tocolor(math.random(0, 255), math.random(0, 255), math.random(0, 255), 255)
end

showChat(false)

addEventHandler("onClientRender", root, function ()

	dxDrawRectangle(0, 0, screen_w/2, screen_h, tocolor(7, 48, 16, 255))
	
	lx = lx + mlx
	if lx > screen_w/2 - img_w then
		lx = screen_w/2 - img_w
		mlx = -lsp
		lclr = getRandColor()
	elseif lx < 0 then
		lx = 0
		mlx = lsp
		lclr = getRandColor()
	end
	
	ly = ly + mly
	if ly > screen_h - img_h then
		ly = screen_h - img_h
		mly = -lsp
		lclr = getRandColor()
	elseif ly < 0 then
		ly = 0
		mly = lsp
		lclr = getRandColor()
	end
	
	dxDrawImage(lx, ly, img_w, img_h, 'dvd.png', 0, 0, 0, lclr)
	

	dxDrawRectangle(screen_w/2, 0, screen_w/2, screen_h, tocolor(48, 7, 7, 255))
	
	rx = rx + mrx
	if rx > screen_w - img_w then
		rx = screen_w - img_w
		mrx = -rsp
		rclr = getRandColor()
	elseif rx < screen_w/2 then
		rx = screen_w/2
		mrx = rsp
		rclr = getRandColor()
	end
	
	ry = ry + mry
	if ry > screen_h - img_h then
		ry = screen_h - img_h
		mry = -rsp
		rclr = getRandColor()
	elseif ry < 0 then
		ry = 0
		mry = rsp
		rclr = getRandColor()
	end
	
	dxDrawImage(rx, ry, img_w, img_h, 'dvd.png', 0, 0, 0, rclr)
end)