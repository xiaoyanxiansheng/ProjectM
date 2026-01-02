--[[critcore/static/hero_helper.lua]]
--[=[
    英雄配置辅助模块 - 提供英雄列表和名称查询
]=]

-- 确保 ConfData 模块已加载
if not ConfData then
    require("critcore.static.conf_data")
end

HeroHelper = {}

-- 英雄名称映射表 (HeroId -> 语言Key)
-- 基于 lang/cn.lua 中的英雄名称 key 规则
local HeroNameKeys = {
    [12101] = "Lc146gs",  -- 英雄·艾丽斯 (UnitId=101)
    [12201] = "L0046gs",  -- 英雄·罗伯特 (UnitId=201)
    [12301] = "L2046gs",  -- 英雄·当明 (UnitId=301)
    [12401] = "L4046gs",  -- 英雄·沃瑞 (UnitId=401)
    [12501] = "L6046gs",  -- 英雄·福黛丝德 (UnitId=501)
    [12601] = "L8046gs",  -- 英雄·魔歌 (UnitId=601)
    [12701] = "La146gs",  -- 英雄·达克 (UnitId=701)
    [12801] = "Le146gs",  -- 英雄·布赖特 (UnitId=801)
    [12901] = "Lg146gs",  -- 英雄·泽依乃拜 (UnitId=901)
    [13001] = "Li146gs",  -- 英雄·阿伊莎 (UnitId=1001)
    [13101] = "Lk146gs",  -- 英雄·奥拉 (UnitId=1101)
    [13201] = "Lm146gs",  -- 英雄·艾玛丽 (UnitId=1201)
    [13301] = "Lo146gs",  -- 英雄·伊登 (UnitId=1301)
    [13401] = "Lq146gs",  -- 英雄·密涅瓦 (UnitId=1401)
    [13501] = "Ls146gs",  -- 英雄·瓦希德 (UnitId=1501)
    [13601] = "Lu146gs",  -- 英雄·黑法 (UnitId=1601)
    [13701] = "Lw146gs",  -- 英雄·多丽丝 (UnitId=1701)
    [13801] = "Ly046gs",  -- 英雄·欧拉杜瓦 (UnitId=1801)
}

---获取英雄显示名称
---@param heroId number 英雄配置ID
---@return string 英雄名称
function HeroHelper:GetHeroName(heroId)
    local nameKey = HeroNameKeys[heroId]
    if nameKey then
        local langCn = ConfData:GetTable("lang/cn")
        if langCn and langCn[nameKey] then
            return langCn[nameKey]
        end
    end
    
    -- 备用：尝试从 Unit 表获取 KvName
    local heroData = ConfData:GetLine("Hero", heroId)
    if heroData and heroData.UnitId then
        local unitData = ConfData:GetLine("Unit", heroData.UnitId)
        if unitData and unitData.KvName then
            -- 从 KvName 提取简短名称
            local name = unitData.KvName:gsub("npc_hero_", "英雄")
            return name
        end
    end
    
    return "英雄" .. tostring(heroId)
end

---获取英雄列表（从配置表）
---@return table 英雄列表 [{id, unitId, name, quality, star}, ...]
function HeroHelper:GetHeroList()
    local heroes = {}
    local heroTable = ConfData:GetTable("Hero")
    
    if not heroTable then
        print("[HeroHelper] 警告: Hero 配置表不存在")
        return heroes
    end
    
    for heroId, heroData in pairs(heroTable) do
        if type(heroId) == "number" and heroData.UnitId then
            local displayName = self:GetHeroName(heroId)
            
            table.insert(heroes, {
                id = heroId,
                unitId = heroData.UnitId,
                name = displayName,
                quality = heroData.Quality or 1,
                star = heroData.InitStar or 1,
            })
        end
    end
    
    -- 按品质降序排序
    table.sort(heroes, function(a, b) 
        if a.quality ~= b.quality then
            return a.quality > b.quality 
        end
        return a.id < b.id
    end)
    
    print("[HeroHelper] 获取英雄列表, 共 " .. #heroes .. " 个英雄")
    return heroes
end

---获取英雄详情
---@param heroId number 英雄配置ID
---@return table|nil 英雄详情
function HeroHelper:GetHeroDetail(heroId)
    local heroData = ConfData:GetLine("Hero", heroId)
    if not heroData then
        return nil
    end
    
    local unitData = nil
    if heroData.UnitId then
        unitData = ConfData:GetLine("Unit", heroData.UnitId)
    end
    
    return {
        id = heroId,
        unitId = heroData.UnitId,
        name = self:GetHeroName(heroId),
        quality = heroData.Quality or 1,
        star = heroData.InitStar or 1,
        unitData = unitData,
        heroData = heroData,
    }
end

---获取品质颜色
---@param quality number 品质等级
---@return string 颜色代码
function HeroHelper:GetQualityColor(quality)
    local colors = {
        [1] = "#FFFFFF",  -- 白色
        [2] = "#00FF00",  -- 绿色
        [3] = "#0080FF",  -- 蓝色
        [4] = "#9932CC",  -- 紫色
        [5] = "#FFD700",  -- 金色
        [6] = "#FF4500",  -- 橙色
    }
    return colors[quality] or "#FFFFFF"
end

---获取星级字符串
---@param star number 星级
---@return string 星级显示
function HeroHelper:GetStarString(star)
    local s = ""
    for i = 1, star do
        s = s .. "★"
    end
    return s
end

print("[HeroHelper] 英雄辅助模块已加载")
return HeroHelper
