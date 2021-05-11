-- --------------------------------------
-- Date 		: 2017-12-04 15:34:16
-- Author  		: Happy Su
-- Version 		: 1.0
-- Filename		: flowaction.lua
-- Introduce  	: 资源流向类型
-- --------------------------------------
gFlowAction = enum {
	eFA_LevelUp = 1,	--升级
	eFA_TimeAdd = 2, 	--时间累加
	eFA_SkillUpgrade = 3,	--技能升级
	eFA_SkillReset = 4,	--技能重置
	eFA_GM = 5, -- gm添加
	eFA_Init = 6, -- 角色初始化
	eFA_Build = 7, -- 建筑建造
	eFA_BuildingUpgrade = 8, -- 建筑升级
	eFA_openChargeQueue = 9, -- 开启收费队列
	eFA_BuildCancel = 10, -- 建造取消
	eFA_BuildExchange = 11, -- 建筑交换位置
	eFA_BusinessQueueSpeedUp = 12, -- 事务队列加速
	eFA_TrainSoldier = 13, -- 训练士兵、傀儡
	eFA_TrainSoldier_Cancel = 14, -- 训练士兵、傀儡撤销
	eFA_UpgradeSoldier = 15, -- 训练士兵、傀儡
	eFA_UpgradeSoldier_Cancel = 16, -- 升级士兵、傀儡撤销
	eFA_CureSoldier = 17, -- 治疗士兵
	eFA_ModifyPuppet = 18, -- 修复傀儡
	eFA_BuildDemolish = 19, -- 建筑拆除
	eFA_UseItem = 20, -- 使用道具，快速购买
	eFA_UserItemFail = 21, --使用道具失败，返还道具
	eFA_CollectResource = 22, -- 采集资源
	eFA_ResourceBuilding = 23, -- 资源建筑产出
	eFA_MarchCancel = 24, -- 行军召回
	eFA_MarchCancel_failedBack = 25, -- 行军召回失败，返还
	eFA_GetSlot = 26, --获得战利品
	eFA_Hero_up_grade = 27, -- 英雄升级军阶
	eFA_Hero_up_quality = 28, -- 英雄升级品质
	eFA_Hero_TrophySynthesis = 29, -- 英雄道具合成
	eFA_Mail_Item = 30, -- 邮件道具
	eFA_Alliance_Create = 31, -- 创建联盟消耗
	eFA_Hero_up_quality_canlce = 32, -- 英雄升品取消
	eFA_Shop_buy_item = 33, --商城购买物品
	eFA_Alliance_ChangeName = 34, -- 联盟改名
	eFA_Alliance_ChangeShortName = 35, -- 联盟改简称
	eFA_Alliance_ChangeFlag = 36, -- 联盟改旗帜
	eFA_Alliance_Changekingdom = 37, -- 联盟迁国
	eFA_BagSell = 38, -- 背包售出
	eFA_OpenBox = 39, -- 开宝箱
	eFA_ThingCompose = 40, -- 道具合成
	eFA_MoveCity = 41, -- 迁城
	eFA_dungeons_reward = 42, --副本奖励
	eFA_MoveCity_failed = 43, -- 迁城失败
	eFA_Alliance_donate = 44, -- 联盟捐献
	eFA_Alliance_donate_failed = 45, -- 联盟捐献失败
	eFA_Alliance_clear_donate_cd = 46, -- 清除联盟捐献cd
	eFA_Alliance_clear_donate_cd_failed = 47, -- 清除联盟捐献cd失败
	eFA_Use_for_hero = 48, -- 使用道具给英雄加经验
	eFA_Map_ExploreRelic = 49, -- 已经探险
	eFA_Alliance_donate_rank = 50, --联盟捐献排行奖励
	eFA_citywall_useitem = 51,--城墙使用道具
	eFA_technogoly_research = 52, -- 科技研究
	eFA_technogoly_research_cancel = 53, -- 科技研究取消
	eFA_map_march = 54, -- 行军消耗
	eFA_map_march_ret = 55, --行军消耗返还
	eFA_attack_monster = 56, -- 攻击魔物
	eFA_treasure_add_gem = 57, -- 宝物镶嵌宝石
	eFA_treasure_del_gem = 58, -- 宝物移除宝石
	eFA_treasure_dismantle = 59, -- 宝物拆卸
	eFA_treasure_forging = 60, -- 宝物锻造
	eFA_treasure_forging_cancel = 61, -- 宝物锻造取消
	eFA_MarchQuickened = 62, -- 行军加速
	eFA_MarchQuickened_failedBack = 63, -- 行军加速失败，返还
	eFA_Lordskill_changeprograme = 64, -- 改变技能方案
	eFA_civilization_switch = 65, -- 文明切换
	eFA_civilization_tech_research = 66, -- 文明科技研究
	eFA_civilization_tech_research_cancel = 67, -- 文明科技研究取消
	eFA_wishpond_wish = 68, -- 许愿
	eFA_use_physicalitem = 69, -- 使用体力道具
	eFA_elf_change_name = 70, -- 精灵改名
	eFA_elf_skill_level_up = 71, -- 精灵技能升级
	eFA_elf_skill_star_up = 72, -- 精灵技能升星
	eFA_elf_skill_level_reset = 73, -- 精灵技能等级重置
	eFA_elf_skill_star_reset = 74, -- 精灵技能星级重置
	eFA_lord_change_name = 75, --领主改名
	eFA_lord_change_avatar = 76, --领主更改形象
	eFA_mysteryshop_exchangeitem = 77, --神秘商店兑换商品
	eFA_chat_horn = 78, -- 大喇叭聊天
	eFA_materialworkshop_openqueue = 79, --材料工坊开启生产队列
	eFA_materialworkshop_recieve_material = 80, --材料工坊收取材料
	eFA_materialworkshop_acceleratequeue = 81, --材料工坊生产加速
	eFA_attack_npc = 82, -- 攻击npc
	eFA_militaryrank_learnskill = 83, -- 学习军衔技能
	eFA_elf_LevelUp = 84, -- 精灵升级
	eFA_militaryrank_activity = 85, -- 军衔结算
	eFA_arena_buy_challengetimes = 86, --水晶购买挑战次数
	eFA_arena_rank_reward = 87, --竞技场排名奖励
	eFA_sevendayslogin_signin_reward = 88, --七天登陆签到奖励
	eFA_alliance_notice_invite = 89, -- 联盟公告邀请
	eFA_alliance_notice_invite_failed = 90, -- 联盟公告邀请失败
	eFA_randomchest_reward = 91, --随机宝箱奖励
	eFA_quest_getreward = 92, -- 任务领奖
	eFA_city_resbuff = 93, -- 使用魔晶，增加资源产出
	eFA_interquest_reward = 94, -- 内政任务奖励
	eFA_unionquest_reward = 95, --联盟任务奖励
	eFA_use_lordskill = 96, -- 使用主动技能
	eFA_Alliance_Gift = 97, -- 联盟礼物
	eFA_reshelp = 98, -- 资源援助(送出)
	eFA_reshelp_rev = 99, -- 资源援助(接收)
	eFA_reshelp_faild = 100, -- 资源援助失败，返还
	eFA_vipquest_reward = 101, --VIP任务奖励
    eFA_country_setbuff = 102, -- 设置王国buff
	eFA_country_setbuff_fail = 103, -- 设置王国buff失败
	eFA_dailyreward_activepoints_reward = 104, --活跃度奖励
	eFA_dailyreward_questreward = 105,	--日常任务完成奖励
	eFA_prison_setrewardmoney = 106, -- 设置赏金
	eFA_prison_setrewardmoney_faild = 107, -- 设置赏金失败返还
	eFA_prison_redemption_captive = 108, -- 赎回英雄
	eFA_prison_redemption_captive_faild = 109, -- 赎回英雄失败返还
	eFA_prison_kill_cost = 110, -- 立即献祭
	eFA_prison_kill_cost_faild = 111, -- 献祭失败返还
    eFA_prison_resurrection = 112, -- 复活消耗
    eFA_prison_resurrection_faild = 113, -- 复活失败
    eFA_prison_eat_poison = 114, -- 喝毒药
    eFA_prison_eat_poison_faild = 115, -- 喝毒药失败
    eFA_activity_mobilize_stage = 116,	-- 联盟总动员阶段奖励
	eFA_cityonlinereward= 117,         --驿站领取在线奖励
	eFA_achievement_getreward = 118, --成就任务奖励
	eFA_player_creater = 119, -- 创角
	eFA_prison_getrewardmoney = 120, -- 监狱获取赏金
	eFA_prison_getransom = 121, -- 监狱获取赎金
	eFA_plotquest_reward = 122, --目标任务奖励
	eFA_massrebelcamp_cost = 123, -- 集结攻击查希里叶营地消耗
    eFA_massrebelcamp_reward = 124, -- 集结攻击查希里叶营地奖励
	eFA_elf_unlock = 125, -- 精灵解锁
	eFA_dress_unlock = 126, --装扮解锁
	eFA_glory_uplevel = 127, --荣耀升级
	eFA_dress_enhance = 128, --装扮强化
	eFA_freeca_everyday_reward = 129, --周卡月卡每日奖励
	eFA_freeca_buy_shopitem = 130,  --购买特惠商店物品
	eFA_be_attack = 131, -- 领主被攻击
	eFA_attack_plunder_res = 132, -- 攻击领主，掠夺资源
	eFA_hero_draw_equip = 133, -- 英雄穿戴装备
	eFA_attack_lord = 134, -- 攻击领主
	eFA_beattack_lord = 135, -- 被领主攻击
	eFA_cdkey_reward = 136, --获得激活码奖励
	eFA_arena_challenge_reward = 137, --竞技场挑战奖励
	eFA_unlock_face_reward = 138, --解锁表情送的奖励
	eFA_use_face = 139,  --使用表情
	eFA_Hero_up_grade_cancel = 140, -- 英雄升级军阶取消
	eFA_openground = 141, -- 解锁地块
	eFA_web_sub_currency = 142, --后台扣除资源
	eFA_web_sub_prop = 143, --后台扣除道具
	eFA_MoveKingdom = 144, -- 移民
	eFA_MoveKingdom_failed = 145, -- 移民失败
	eFA_riseking_quest_reward = 146, --新王崛起活动任务完成领奖
	eFA_riseking_liveness_box = 147, --获取新王崛起活跃宝箱
	eFA_riseking_liveness_hero = 148, --获的新王崛起高活跃度英雄碎片奖励
	eFA_bind_account_reward = 149,	--绑定账号奖励
	eFA_invite_quest_award = 150,  --获得邀请送豪礼活动的任务对应的奖励
    eFA_rookielogin_reward = 151, --新手登陆七日礼奖励
    eFA_mobilize_buytasktimes = 152, -- 联盟总动员购买任务次数
    eFA_mobilize_buytasktimes_fail = 153, -- 联盟总动员购买任务次数-失败
    eFA_recharge = 154, -- 充值
	eFA_vip_daily_login = 155, -- vip每日登陆
	eFA_growfund_reward = 156, -- 成长基金奖励
	eFA_attack_boss_monster = 157, -- 攻击魔物BOSS
	eFA_newplayer_expire = 158, -- 过了新手期
	eFA_skillRecord_save = 159,	--技能方案设置
	eFA_Hero_level_up = 160, -- 英雄等级提升
	eFA_Hero_add = 161, -- 获得英雄
	eFA_civilization_level_up = 162, -- 文明升级
	eFA_treasure_program_use = 163, -- 宝物方案预设
	eFA_treasure_unequip = 164, -- 宝物脱下
	eFA_treasure_equip = 165, -- 宝物穿上
	eFA_treasure_program_set = 166, -- 修改宝物方案预设
	eFA_march_back = 167,	--出征回来
	eFA_puppet_fire = 168, -- 傀儡摧毁
	eFA_soldier_fire = 169, -- 士兵摧毁
	eFA_soldier_wounder = 170, -- 士兵受伤
	eFA_soldier_dead = 171, -- 士兵死亡
    eFA_allianceperson_quest_reward = 172,  --个人联盟任务奖励
    eFA_Alliance_Create_Fail = 173, -- 创建联盟,失败返还
	eFA_Alliance_ChangeName_Fail = 174, -- 联盟改名,失败返还
	eFA_Alliance_ChangeShortName_Fail = 175, -- 联盟改简称,失败返还
    eFA_Alliance_ChangeFlag_Fail = 176, -- 联盟改旗帜,失败返还
	eFA_Alliance_Changekingdom_Fail = 177, -- 联盟改王国,失败返还
	eFA_plotquest_getreward = 178, --篇章任务领取奖励
	eFA_invite_box_award = 179,  --邀请宝箱奖励
}

return gFlowAction