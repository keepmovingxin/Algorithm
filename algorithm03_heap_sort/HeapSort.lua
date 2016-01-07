-- Filename: HeapSort.lua
-- Author: liu
-- Date: 20160101
-- Purpose: 该文件用于: 实现并测试堆排序算法

local array = {2,4,5,6,8,1,9,12,22,28,10,3}
local dictionary = {
	
}

local function heapAdjustArray( arr,start,nlen )
	assert(type(arr) == "table", "error, arrary must be table")
    assert(#arr >= nlen, "error, nlen must lager than #arrary")
 
    local father = start
    local nChlid = nil
    local nTemp = arr[father]
 
    while (2 * father) <= nlen do
        nChlid = 2 * father
        if (nChlid + 1 <= nlen and arr[nChlid + 1] > arr[nChlid]) then
            nChlid = nChlid + 1
        end
        if nTemp < arr[nChlid] then
            arr[father] = arr[nChlid]
        else
            break
        end
        father = nChlid
    end
    if father ~= start then
        arr[father] = nTemp
    end

end

local function heapSortArray( arr,nlen )
	if (#arr <= 0) then
		print("input array error!")
		return nil
	end

	local starti = math.floor(nlen / 2)
 
    while starti >= 1 do
        heapAdjustArray(arr, starti, nlen)
        starti = starti - 1
    end
 
    for i = nlen, 1, -1 do
        local temp = arr[i]
        arr[i] = arr[1]
        arr[1] = temp
        if ( i - 1 > 1 ) then
            heapAdjustArray(arr, 1, i - 1)
        else
            break
        end
    end
	return arr
end

local function bubbleSortDictionary( dic )
	
end

function testMain()
	print("++++++++++堆排序++++++++++++")
	local sortedArray = heapSortArray(array,#array)
	for i,v in ipairs(sortedArray) do
		print(v)
	end
end

testMain()