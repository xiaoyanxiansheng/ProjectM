--[[critcore/tool/time.lua]]

---时间戳转换为星期几（0是周日）
---@param timestamp integer
---@return integer
function TimestampToWeekday(timestamp)
    return (4 + math.floor(timestamp  / 86400)) % 7
end


---时间戳转换为当前在第多少个周
---@param timestamp integer
---@param week_start integer|nil 默认为0表示周日为一周的开始
---@return integer
function TimestampToWeekCount(timestamp, week_start)
    week_start = week_start or 0
    return math.floor((timestamp / 86400 + 4 - week_start) / 7)
end


-- 判断两个时间戳是否在同一周
---@param timestamp1 integer
---@param timestamp2 integer
---@param week_start integer|nil 默认为0表示周日为一周的开始
---@return boolean
function TimestampIsSameWeek(timestamp1, timestamp2, week_start)
    local week_start1 = TimestampToWeekCount(timestamp1, week_start)
    local week_start2 = TimestampToWeekCount(timestamp2, week_start)

    -- 判断是否在同一周内
    return week_start1 == week_start2
end

-- 判断两个时间戳是否在同一天
---@param timestamp1 integer
---@param timestamp2 integer
---@return boolean
function TimestampIsSameDay(timestamp1, timestamp2)
    return math.floor(timestamp1 / 86400) == math.floor(timestamp2 / 86400)
end


-- 判断两个时间戳是否在同一个月
---@param timestamp1 integer
---@param timestamp2 integer
---@return boolean
function TimestampIsSameMonth(timestamp1, timestamp2)
    local year1, month1 = TimestampToDatetime(timestamp1)
    local year2, month2 = TimestampToDatetime(timestamp2)
    return year1 == year2 and month1 == month2
end

-- 判断两个时间戳是否在同一年
---@param timestamp1 integer
---@param timestamp2 integer
---@return boolean
function TimestampIsSameYear(timestamp1, timestamp2)
    local year1 = TimestampToDatetime(timestamp1)
    local year2 = TimestampToDatetime(timestamp2)
    return year1 == year2
end


---时间戳转换为日期
---@param timestamp integer 时间戳
---@return string
function TimestampToDateString(timestamp)
    local year, month, day = TimestampToDatetime(timestamp)
    return year .. '-' .. month .. '-' .. day
end


---时间戳转换为时间
---@param timestamp integer 时间戳
---@return integer
---@return integer
---@return integer
---@return integer
---@return integer
---@return integer
function TimestampToDatetime(timestamp)
    -- 定义常量 
    local seconds_per_minute = 60
    local seconds_per_hour = 3600
    local seconds_per_day = 86400
    local days_per_month = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}

    -- 定义特定年份的起始时间戳（2025年1月1日 00:00:00 UTC）
    local start_year = 2025
    local start_timestamp = 1735689600  -- 2025年1月1日 00:00:00 UTC 的时间戳 

    -- 判断是否从2025年开始循环 
    local year
    if timestamp >= start_timestamp then
        year = start_year
        timestamp = timestamp - start_timestamp
    else
        year = 1970
    end

    -- 计算年份 
    while true do
        local is_leap_year = (year % 4 == 0 and year % 100 ~= 0) or (year % 400 == 0)
        local days_in_year = is_leap_year and 366 or 365
        local seconds_in_year = days_in_year * seconds_per_day
        if timestamp >= seconds_in_year then
            timestamp = timestamp - seconds_in_year
            year = year + 1
        else
            break
        end
    end

    -- 计算月份 
    local month = 1
    for i = 1, 12 do
        local days_in_month = days_per_month[i]
        if i == 2 and ((year % 4 == 0 and year % 100 ~= 0) or (year % 400 == 0)) then
            days_in_month = 29  -- 闰年2月 
        end
        local seconds_in_month = days_in_month * seconds_per_day
        if timestamp >= seconds_in_month then
            timestamp = timestamp - seconds_in_month
            month = month + 1
        else
            break
        end
    end

    -- 计算日、时、分、秒 
    local day = math.floor(timestamp  / seconds_per_day) + 1
    timestamp = timestamp % seconds_per_day
    local hour = math.floor(timestamp  / seconds_per_hour)
    timestamp = timestamp % seconds_per_hour
    local minute = math.floor(timestamp  / seconds_per_minute)
    local second = timestamp % seconds_per_minute

    -- 返回格式化字符串 
    return year, month, day, hour, minute, second
end