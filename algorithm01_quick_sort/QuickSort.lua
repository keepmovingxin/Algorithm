-- Filename: QuickSort.lua
-- Author: liu
-- Date: 2015-12-30
-- Purpose: 该文件用于: 实现并测试快速排序算法

local array = {2,4,5,6,8,1,9,12,22,28,10,3}
local dictionary = {
	
}

local function quickSortArray( arr,left,right )
	if (left < right) then
		local low = left -- 左边索引
		local high = right -- 右边索引
		local key = arr[left] -- 基准(pivot)
		while (low < high) do
			-- 从右向左扫描←
			while (low < high and arr[high] >= key) do
				high = high-1
			end
			arr[low] = arr[high]
			-- 从左向右扫描→
			while (low < high and arr[low] < key) do
				low = low+1
			end
			arr[high] = arr[low]
		end
		arr[low] = key
		-- 递归调用
		quickSortArray(arr,left,low-1)
		quickSortArray(arr,low+1,right)
	end
	return arr
end

local function quickSortDictionary( dic,left,right )
	
end

function testMain()
	print("+++++++++++快速排序++++++++++++")
	local sortedArray = quickSortArray(array,1,#array)
	for i,v in ipairs(sortedArray) do
		print(v)
	end
end

testMain()