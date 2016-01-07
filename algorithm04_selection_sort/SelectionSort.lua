-- Filename: SelectionSort.lua
-- Author: liu
-- Date: 2015-12-31
-- Purpose: 该文件用于: 实现并测试选择排序算法

local array = {2,4,5,6,8,1,9,12,22,28,10,3}
local dictionary = {
	
}

local function selectionSortArray( arr )
	if (#arr <= 0) then
		print("input array error!")
		return nil
	end

	for i=1,#arr do
		local min = arr[i]
		local minIndex = i
		for j=i,#arr do
			-- 找到最小值
			if ( arr[j] < min) then
				min = arr[j]
				minIndex = j
			end
		end
		if (minIndex ~= i) then
			local temp = arr[i]
			arr[i] = arr[minIndex]
			arr[minIndex] = temp
		end
	end
	return arr
end

local function selectionSortDictionary( dic )
	
end

function testMain()
	print("++++++++++选择排序++++++++++++")
	local sortedArray = selectionSortArray(array)
	for i,v in ipairs(sortedArray) do
		print(v)
	end
end

testMain()