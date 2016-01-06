-- Filename: BubbleSort.lua
-- Author: liu
-- Date: 2015-12-31
-- Purpose: 该文件用于: 实现并测试冒泡排序算法

local array = {2,4,5,6,8,1,9,12,22,28,10,3}
local dictionary = {
	
}

local function bubbleSortArray( arr )
	if (#arr <= 0) then
		print("input array error!")
		return nil
	end

	for i=1,#arr do
		for j=i,#arr do
			-- 如果大于就交换
			if ( arr[i] > arr[j]) then
				local temp = arr[i]
				arr[i] = arr[j]
				arr[j] = temp
			end
		end
	end
	return arr
end

local function bubbleSortDictionary( dic )
	
end

function testMain()
	print("++++++++++冒泡排序++++++++++++")
	local sortedArray = bubbleSortArray(array)
	for i,v in ipairs(sortedArray) do
		print(v)
	end
end

testMain()