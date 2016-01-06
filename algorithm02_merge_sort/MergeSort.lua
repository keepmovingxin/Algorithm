-- Filename: MergeSort.lua
-- Author: liu
-- Date: 2015-12-31
-- Purpose: 该文件用于: 实现并测试归并排序算法

local array = {2,4,5,6,8,1,9,12,22,28,10,3}
local dictionary = {
	
}

local function mergeSort( arr,low,mid,high,tempArr)
	if (#arr <= 0) then
		print("input array error!")
		return nil
	end
	
    local i = low
    local j = mid
    local p = 0
    while (i < mid and j < high) do
    	for i,v in ipairs(arr) do
			print(i,v)
		end
        print("index:"..i.."--"..j)
        print("value:"..arr[i].."--"..arr[j])
        if (arr[i] < arr[j]) then
        	tempArr[p+1] = arr[i+1]
        	p = p+1
        	i = i+1
        else
        	tempArr[p+1] = arr[j+1]
        	p = p+1
        	j = j+1
        end
    end 
  
    while (i < mid) do
        tempArr[p+1] = arr[i+1]
        p = p+1
       	i = i+1
    end 
    while (j < high) do 
        tempArr[p+1] = arr[j+1]
        p = p+1
        j = j+1 
    end 

    print("p:"..p.."-low:"..low)
    for v=1,p do
    	arr[low+v] = tempArr[v]
    end
    return tempArr
end

local function mergeSortArray( arr,low,high,tempArr )
    if (low+1 < high) then  
        local mid = math.floor((low+high)/2)
        mergeSortArray(arr,low,mid,tempArr)       
        mergeSortArray(arr,mid,high,tempArr)    
        mergeSort(arr,low,mid,high,tempArr)       
    end
    return tempArr
end

function testMain()
	print("+++++++++++归并排序++++++++++++")
	local tempArr = {}
	local sortedArray = mergeSortArray(array,1,#array+1,tempArr)
	for i,v in ipairs(sortedArray) do
		print(v)
	end
end

testMain()