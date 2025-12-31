--[[ 
消息常量定义
负责定义技能模块与其他模块之间的消息常量
包括技能开始、进入CD、打断、结束等事件
提供消息常量的定义和使用
支持消息的传递和处理
--]]

---@enum MsgConst
MsgConst = {

    -- 技能模块向其他部分抛事件
    SKill_DO_START                  = 10001,        -- 技能 开始            params:{casterinsid=0,skillid=0,skillinsid=0,skilllevel=0,targetinsid=0,skillcd=0}
    Skill_DO_BREAK                  = 10003,        -- 技能 打断            params:{insid=0,skillid=0,skillinsid=0,skilllevel=0}
    SKill_DO_FINISH                 = 10004,        -- 技能 结束            params:{casterinsid=0,skillid=0,skillinsid=0,skilllevel=0,targetinsid=0}
    SKILL_TIMELINE_EVENT_STATE      = 10005,        -- 技能 状态Event       params:{insid=0,skillid=0,skillinsid=0,skilllevel=0,params=配置自定义}
    SKILL_TIMELINE_EVENT_READLINE   = 10006,        -- 技能 读条            params:{insid=0,skillid=0,skillinsid=0,skilllevel=0,params={duration=0,textlistindex=0}}
    BUFF_ADD                        = 10011,        -- Buff 增加            params:{insid=0,buffid=0,bufflevel=0,buffduration=0};
    BUFF_REMOVE                     = 10012,        -- Buff 结束            params:{insid=0,buffid=0,bufflevel=0};
    BUFF_EVENT_ADD                  = 10013,        -- Buff Event 增加      params:{insid=0,event=BuffEvent}
    BUFF_EVENT_REMOVE               = 10014,        -- Buff Event 删除      params:{insid=0,event=BuffEvent}
    BUFF_OVERLAY_UPDATE             = 10020,        -- Buff 叠加层数 更新    params:{insid=0,buffid=0,bufflevel=0,stack=0,buffduration=0,notupdatebuffduration=false}
    SHIELD_UPDATE_VALUE            = 10021,        -- 护盾值更新            params:{insid=0,totashieldlvalue=0}
    BUFF_ATTR_UPDATE                = 10022,        -- Buff 属性更新        params:{insid=0,attrid=0,buffattr={}} buffattr为 SkillAPI:GetEntityBuffAttr 返回值
    SKILL_HIT_UNIT_COUNT            = 10023,        -- 技能 命中单位数量     params:{casterinsid=0,skillid=0,hitcount=0}

    -- 外部向技能模块抛事件
    ENTITY_PRIMEVALATTR_UPDATE      = 20001,        -- 实体 原始属性更新【完成】    params:{insid=0,attrid=0} attrid为-1更新insid所有attr
    ENTITY_KILL                     = 20011,        -- 实体 击杀【完成】            params:{attackinsid=0,targetinsid=0}
    ENTITY_DEATH                    = 20012,        -- 实体 死亡【完成】            params:{insid=0,thorough=false} thorough表示有没有死彻底，取值false表示还可以复活
    ENTITY_ATTACK                   = 20021,        -- 实体 普攻开始【完成】        params:{casterinsid=0,targetinsid=0,splitinsids={0}} splitinsids是分裂对象insid列表
    ENTITY_ATTACKED                 = 20022,        -- 实体 普攻结束【完成】        params:{casterinsid=0,targetinsid=0,splashinsids={0}} splashinsids是溅射对象insid列表
    SKILL_ENTER_CD                  = 20023,        -- 技能 进入CD                 params:{insid=0,skillinsid=0}
    SHIELD_UPDATE_REDUCE            = 20024,        -- 护盾值减少                  params:{insid=0,reduceshieldvalue=0}
    ENTITY_SUMMONS_DIE              = 20025,        -- 召唤物死亡                  params:{insid=0,owner=0} owner是召唤物主人的insid
    ENTITY_HP_CHANGE                = 20026,        -- 实体 生命值变化              params:{insid=0,old_hp=0,new_hp=0,change=0} 生命变化，change为变化值正数是加血

    -- 实体 造成既定伤害【完成】
    -- <br>params:{casterinsid=0,targetinsid=0,skillid=0,damage=0,isdie=false,damage_type=2}
    -- <br>isdie 表示这次伤害有没有弄死对方
    -- <br>supposed_die 只在锁血状态下，本次伤害“本应该造成死亡”时为true
    -- <br>damage_type == EnumFightDamageType.Critical 表示暴击
    -- <br>skillid == 0 表示普攻; -1 表示分裂; -2 表示溅射; >0 表示技能ID
    ENTITY_DAMAGED                  = 20099,

    -- 内部使用
    PASSIVESKILL_TRIGGER_CHECK      = 1001,         -- 被动触发检测          params:{PassiveSkillVariable}
    SKILL_TIMELINE_EVENT_SETTLEMENT_HIT = 1002,     -- 技能 命中检测        params:{skillid=0,settlementInsList={}}
    -- 将死亡消息分成两个消息 1 流程处理 2 数据清理
    ENTITY_DEATH_1                  = 1002,        -- 实体 死亡1            params:{insid=0,thorough=false} thorough表示有没有死彻底，取值false表示还可以复活
    ENTITY_DEATH_2                  = 1003,        -- 实体 死亡2            params:{insid=0,thorough=false} thorough表示有没有死彻底，取值false表示还可以复活
}
