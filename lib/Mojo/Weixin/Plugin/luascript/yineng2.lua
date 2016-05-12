
--for testing
main_help_table={}
say_qun=print

n=1
table.insert(main_help_table,".tishen 得知自己的替身")

math.randomseed(os.time()+n)

local function random(a,b)
  if b==nil then
    return math.random(a)
  else
    return math.random(b-a)+a
  end
end

function get_substance()
  local subtance_name=""
  local i = random(100)
    if i <= 2 then
      subtance_name = "物质下级要素：铁"
     elseif i <= 4 then
      substance_name = "物质下级要素：武器"
    elseif i <= 8 then
      substance_name = "物质下级要素：衣服"
    elseif i <= 12 then
      substance_name = "物质下级要素：氧"
    elseif i <= 16 then
      substance_name = "物质下级要素：氢"
    elseif i <= 20 then
      substance_name = "物质下级要素：人偶"
    elseif i <= 24 then
      substance_name = "物质下级要素：电视"
    elseif i <= 28 then
      substance_name = "物质下级要素：电脑"
    elseif i <= 32 then
      substance_name = "物质下级要素：手机"
    elseif i <= 35 then
      substance_name = "物质下级要素：硬币"
    elseif i <= 39 then
      substance_name = "物质下级要素：碳"
    elseif i <= 43 then
      substance_name = "物质下级要素：钠"
    elseif i <= 47 then
      substance_name = "物质下级要素：铝"
    elseif i <= 52 then
      substance_name = "物质下级要素：细线"
    elseif i <= 56 then
      substance_name = "物质下级要素：镭"
    elseif i <= 60 then
      substance_name = "物质下级要素：铀"
    elseif i <= 64 then
      substance_name = "物质中级要素：石头"
    elseif i <= 68 then
      substance_name = "物质中级要素：泥土"
    elseif i <= 72 then
      substance_name = "物质中级要素：空气"
    elseif i <= 76 then
      substance_name = "物质中级要素：水"
    elseif i <= 80 then
      substance_name = "物质中级要素：金属"
    elseif i <= 84 then
      substance_name = "物质中级要素：碳水化合物"
    elseif i <= 87 then
      substance_name = "物质中级要素：塑料"
    elseif i <= 90 then
      substance_name = "物质中级要素：木头"
    elseif i <= 92 then
      substance_name = "物质中级要素：纸张"
    elseif i <= 96 then
      substance_name = "物质中级要素：玻璃"
    elseif i <= 97 then
      substance_name = "物质上级要素：物质"
    elseif i <= 98 then
      substance_name = "物质上级要素：未元物质"
    elseif i <= 99 then
      substance_name = "物质上级要素：反物质"
    elseif i <= 100 then
      substance_name = "物质上级要素：哲人石"
  end
  return substance_name
end

function get_energy()
  local energy_name=""
  local i = random(100)
    if i <= 7 then
       energy_name = "能量下级要素：弹性能"
    elseif i <= 14 then
      energy_name = "能量下级要素：声能"
    elseif i <= 24 then
      energy_name = "能量下级要素：光能"
    elseif i <= 34 then
      energy_name = "能量下级要素：热能"
    elseif i <= 44 then
      energy_name = "能量下级要素：辐射能"
    elseif i <= 54 then
      energy_name = "能量下级要素：化学能"
    elseif i <= 65 then
      energy_name = "能量下级要素：电能"
    elseif i <= 74 then
      energy_name = "能量中级要素：动能"
    elseif i <= 81 then
      energy_name = "能量中级要素：位能"
    elseif i <= 88 then
      energy_name = "能量中级要素：气"
    elseif i <= 93 then
      energy_name = "能量中级要素：魔力"
    elseif i <= 98 then
      energy_name = "能量中级要素：生命力"
    elseif i <= 100 then
      energy_name = "能量上级要素：所有普通能量"
  end
  return energy_name
end


function get_field()
  local field_name=""
  local i = random(100)
    if i <= 7 then
      field_name = "力场下级要素：电场"
    elseif i <= 20 then
      field_name = "力场下级要素：磁场"
    elseif i <= 45 then
      field_name = "力场下级要素：摩擦力"
    elseif i <= 71 then
      field_name = "力场中级要素：引力"
    elseif i <= 77 then
      field_name = "力场中级要素：强作用力"
    elseif i <= 83 then
      field_name = "力场中级要素：弱作用力"
    elseif i <= 89 then
      field_name = "力场中级要素：电磁力"
    elseif i <= 95 then
      field_name = "力场上级要素：经典力场"
    elseif i <= 97 then
      field_name = "力场上级要素：量子场"
    elseif i <= 99 then
      field_name = "力场上级要素：结界"
  end
  return field_name
end

function get_lifelow()
  local lifelow_name=""
  local i = random(100)
    if i <= 9 then
      lifelow_name = "生命末级要素：自身皮肤"
    elseif i <= 20 then
      lifelow_name = "生命末级要素：自身头发"
    elseif i <= 30 then
      lifelow_name = "生命末级要素：自身指甲"
    elseif i <= 40 then
      lifelow_name = "生命末级要素：自身血管"
    elseif i <= 50 then
      lifelow_name = "生命末级要素：自身肌肉"
    elseif i <= 60 then
      lifelow_name = "生命末级要素：自身心脏"
    elseif i <= 70 then
      lifelow_name = "生命末级要素：自身肝脏"
    elseif i <= 80 then
      lifelow_name = "生命末级要素：自身肺部"
    elseif i <= 90 then
      lifelow_name = "生命末级要素：自身脑部"
    elseif i <= 95 then
      lifelow_name = "生命末级要素：自身骨骼"
    elseif i <= 100 then
      lifelow_name = "生命末级要素：自身血液"
  end
  return lifelow_name
end


function get_lifemedium()
  local lifemedium_name=""
  local i = random(100)
    if i <= 5 then
         lifemedium_name = "生命中级要素：人类"
      elseif i <= 10 then
        lifemedium_name = "生命中级要素：猫科动物"
      elseif i <= 20 then
        lifemedium_name = "生命中级要素：犬科动物"
      elseif i <= 25 then
        lifemedium_name = "生命中级要素：蔷薇科"
      elseif i <= 30 then
        lifemedium_name = "生命中级要素：兰科"
      elseif i <= 35 then
        lifemedium_name = "生命中级要素：菊科"
      elseif i <= 40 then
        lifemedium_name = "生命中级要素：十字花科"
      elseif i <= 45 then
        lifemedium_name = "生命中级要素：百合科"
      elseif i <= 50 then
        lifemedium_name = "生命中级要素：茄科"
      elseif i <= 60 then
        lifemedium_name = "生命中级要素：松科"
      elseif i <= 65 then
        lifemedium_name = "生命中级要素：皮肤"
      elseif i <= 70 then
        lifemedium_name = "生命中级要素：头发"
      elseif i <= 71 then
        lifemedium_name = "生命中级要素：指甲"
      elseif i <= 80 then
        lifemedium_name = "生命中级要素：血管"
      elseif i <= 84 then
        lifemedium_name = "生命中级要素：肌肉"
      elseif i <= 86 then
        lifemedium_name = "生命中级要素：心脏"
      elseif i <= 90 then
        lifemedium_name = "生命中级要素：肝脏"
      elseif i <= 92 then
        lifemedium_name = "生命中级要素：肺部"
      elseif i <= 95 then
        lifemedium_name = "生命中级要素：脑部"
      elseif i <= 98 then
        lifemedium_name = "生命中级要素：骨骼"
      elseif i <= 100 then
        lifemedium_name = "生命中级要素：血液"
  end
  return lifemedium_name
end

function get_life()
  local life_name =""
  local i = random(100)
  if i <= 40 then
     life_name = get_lifelow()
    elseif i <= 70 then
      life_name = "生命下级要素：自身"
    elseif i <= 90 then
      life_name = get_lifemedium()
    elseif i <= 92 then
      life_name = "生命上级要素：动物界"
    elseif i <= 94 then
      life_name = "生命上级要素：植物界"
    elseif i <= 96 then
      life_name = "生命上级要素：真菌界"
    elseif i <= 98 then
      life_name = "生命上级要素：吸血鬼"
    elseif i <= 99 then
      life_name = "生命上级要素：狼人"
    elseif i <= 100 then
      life_name = "生命上级要素：妖精"
    end
   return life_name
end

function get_time()
  local time_name=""
  local i = random(100)
  if i <= 30 then
    time_name = "时间下级要素：主观时间"
  elseif i <= 60 then
    time_name = "时间下级要素：虚假时轴（个体）"
  elseif i <=75 then
    time_name = "时间中级要素：客观时间"
  elseif i <=90 then
    time_name = "时间中级要素：虚假时轴（区域）"
  elseif i <=100 then
    time_name = "时间上级要素：完全时间掌握"
  end
  return time_name
end


--空间要素

function get_space()
  local time_name=""
  local i = random(100)
  if i <= 60 then
       space_name = "空间下级要素：三维空间"
    elseif i <= 75 then
      space_name = "空间下级要素：多维空间"
    elseif i <= 90 then
      space_name = "空间下级要素：亚空间"
    elseif i <= 95 then
      space_name = "空间上级要素：多元空间"
    elseif i <= 100 then
      space_name = "空间上级要素：世界碎片"
  end
  return space_name
end
  
function get_soul_complex()
  local soul_complex_name =""
  local i = random(100)
  if i <= 10 then
      soul_complex_name = "灵魂下级要素：恋母情结"
    elseif i <= 11 then
      soul_complex_name = "灵魂下级要素：恋父情结"
    elseif i <= 21 then
      soul_complex_name = "灵魂下级要素：初恋情结"
    elseif i <= 31 then
      soul_complex_name = "灵魂下级要素：处女情结"
    elseif i <= 41 then
      soul_complex_name = "灵魂下级要素：处男情结"
    elseif i <= 51 then
      soul_complex_name = "灵魂下级要素：完美情结"
    elseif i <= 61 then
      soul_complex_name = "灵魂下级要素：成功情结"
    elseif i <= 71 then
      soul_complex_name = "灵魂下级要素：强迫症情结"
    elseif i <= 91 then
      soul_complex_name = "灵魂下级要素：恋师情结"
  end
  return soul_complex_name
end

--命运要素

function get_luck()
  local luck_name =""
  local i = random(100)
  if i <= 6 then
      luck_name = "命运下级要素：运气（财运）"
    elseif i <= 12 then
      luck_name = "命运下级要素：运气（爱情运）"
    elseif i <= 18 then
      luck_name = "命运下级要素：运气（武运）"
    elseif i <= 24 then
      luck_name = "命运下级要素：运气（事业运）"
    elseif i <= 29 then
      luck_name = "命运下级要素：运气（生命运）"
    elseif i <= 35 then
      luck_name = "命运下级要素：命数（钱财）"
    elseif i <= 41 then
      luck_name = "命运下级要素：命数（爱情）"
    elseif i <= 47 then
      luck_name = "命运下级要素：命数（武力）"
    elseif i <= 53 then
      luck_name = "命运下级要素：命数（事业）"
    elseif i <= 59 then
      luck_name = "命运下级要素：命数（生命）"
    elseif i <= 67 then
      luck_name = "命运中级要素：命运（钱财）"
    elseif i <= 75 then
      luck_name = "命运中级要素：命运（爱情）"
    elseif i <= 83 then
      luck_name = "命运中级要素：命运（武力）"
    elseif i <= 90 then
      luck_name = "命运中级要素：命运（事业）"
    elseif i <= 98 then
      luck_name = "命运中级要素：命运（生命）"
    elseif i <= 100 then
      luck_name = "命运上级要素：命运"
  end
  return luck_name
end

--死亡要素

function get_death()
  local death_name =""
  local i = random(100)
  if i <= 10 then
      death_name = "死亡下级要素：尸体（人类）"
    elseif i <= 30 then
      death_name = "死亡下级要素：尸体（动物）"
    elseif i <= 60 then
      death_name = "死亡下级要素：尸体（植物）"
    elseif i <= 80 then
      death_name = "死亡下级要素：尸体（特定超自然生命）"
    elseif i <= 90 then
      death_name = "死亡下级要素：幽魂（人类）"
    elseif i <= 95 then
      death_name = "死亡下级要素：幽魂（特定超自然生命）"
    elseif i <= 97 then
      death_name = "死亡中级要素：尸体（任意）"
    elseif i <= 99 then
      death_name = "死亡中级要素：幽魂（任意）"
    elseif i <= 100 then
      death_name = "死亡上级要素：任意尸体和幽魂"
  end
  return death_name
end

--已修改：灵魂要素（技能部分）

function get_soul_skill()
  local soul_skill_name =""
  local i = random(24)
  if i <= 1 then
        soul_skill_name = "运动"
      elseif i <= 2 then
        soul_skill_name = "格斗"
      elseif i <= 3 then
        soul_skill_name = "白刃"
      elseif i <= 4 then
        soul_skill_name = "枪械"
      elseif i <= 5 then
        soul_skill_name = "盗窃"
      elseif i <= 6 then
        soul_skill_name = "潜行"
      elseif i <= 7 then
        soul_skill_name = "生存"
      elseif i <= 8 then
        soul_skill_name = "驾驶"
      elseif i <= 9 then
        soul_skill_name = "学术"
      elseif i <= 10 then
        soul_skill_name = "电脑"
      elseif i <= 11 then
        soul_skill_name = "制造"
      elseif i <= 12 then
        soul_skill_name = "调查"
      elseif i <= 13 then
        soul_skill_name = "医药"
      elseif i <= 14 then
      soul_skill_name = "科学"
    elseif i <= 15 then
      soul_skill_name = "政治"
    elseif i <= 16 then
      soul_skill_name = "神秘"
    elseif i <= 17 then
      soul_skill_name = "驯兽"
    elseif i <= 18 then
      soul_skill_name = "理解"
    elseif i <= 19 then
      soul_skill_name = "表达"
    elseif i <= 20 then
      soul_skill_name = "威吓"
    elseif i <= 21 then
      soul_skill_name = "说服"
    elseif i <= 22 then
      soul_skill_name = "社交"
    elseif i <= 23 then
      soul_skill_name = "黑街"
    elseif i <= 24 then
      soul_skill_name = "掩饰"
  end
  return soul_skill_name
end

function get_soul()
  local soul_name =""
  local i = random(100)
  if i <= 6 then
       soul_name = "灵魂下级要素：喜悦"
    elseif i <= 12 then
      soul_name = "灵魂下级要素：愤怒"
    elseif i <= 18 then
      soul_name = "灵魂下级要素：悲伤"
    elseif i <= 24 then
      soul_name = "灵魂下级要素：恐惧"
    elseif i <= 30 then
      soul_name = "灵魂下级要素：特定偶像"
    elseif i <= 36 then
      soul_name = "灵魂下级要素：英灵"
    elseif i <= 42 then
      soul_name = "灵魂下级要素：灵魂印记"
    elseif i <= 48 then
      soul_name = "灵魂下级要素：技能——"..get_soul_skill()
    elseif i <= 54 then
      soul_name = "灵魂下级要素：梦"
    elseif i <= 60 then
      soul_name = get_soul_complex()
    elseif i <= 67 then
      soul_name = "灵魂中级要素：情感"
    elseif i <= 74 then
      soul_name = "灵魂中级要素：记忆"
    elseif i <= 81 then
      soul_name = "灵魂中级要素：偶像"
    elseif i <= 88 then
      soul_name = "灵魂中级要素：个人潜意识"
    elseif i <= 95 then
      soul_name = "灵魂中级要素：集体潜意识"
    elseif i <= 97 then
      soul_name = "灵魂上级要素：凡物灵魂"
    elseif i <= 99 then
      soul_name = "灵魂上级要素：超凡灵魂"
    elseif i <= 99 then
      soul_name = "灵魂上级要素：潜意识"
    elseif i <= 100 then
      soul_name = "灵魂上级要素：所有普通灵魂"
  end
  return soul_name
end

function get_creat_class()
  local creat_class_name =""
  local i = random(100)
  if i <= 25 then
     creat_class_name = get_substance()
  elseif i <= 50 then
    creat_class_name = get_energy()
  elseif i <= 75 then
    creat_class_name = get_field()
  elseif i <= 100 then
    creat_class_name = get_life()
  end
  return creat_class_name
end


function get_creat_summon()
  local creat_summon_name =""
  local i = random(100)
  if i <= 25 then
     creat_summon_name = "英灵"
  elseif i <= 50 then
    creat_summon_name = "某种偶像"
  elseif i <= 75 then
    creat_summon_name = "某种图腾"
  elseif i <= 100 then
    creat_summon_name = "某种自然现象"
  end
  return creat_summon_name
end

function get_creat()
  local creat_name =""
  local i = random(100)
  if i <= 60 then
       creat_name = "创造下级要素：投影 "..get_creat_class()
    elseif i <= 75 then
      creat_name = "创造中级要素：复制 "..get_creat_class()
    elseif i <= 100 then
      creat_name = "创造中级要素：召唤 "..get_creat_summon()
    end
  return creat_name
end

function get_destroy_class()
  local destroy_class_name =""
  local i = random(100)
  if i <= 20 then
       destroy_class_name = get_substance()
    elseif i <= 40 then
      destroy_class_name = get_energy()
    elseif i <= 60 then
      destroy_class_name = get_field()
    elseif i <= 70 then
      destroy_class_name = get_life()
    elseif i <= 75 then
      destroy_class_name = get_death()
    elseif i <= 85 then
      destroy_class_name = get_time()
    elseif i <= 90 then
      destroy_class_name = get_soul()
    elseif i <= 100 then
      destroy_class_name = get_luck()
    end
  return destroy_class_name
end

function get_destroy()
  local destroy_name =""
  local i = random(75)
  if i <= 60 then
     destroy_name = "终结下级要素：失效"
  elseif i <= 75 then
    destroy_name = "终结中级要素：消失"
  else
    destroy_name = "终结下级要素：失效"
  end
  return destroy_name
end

function get_substance_effect_source()
  local substance_effect_source_name =""
  local i = random(100)
  if i <= 50 then
     elseif i <= 50 then
      substance_effect_source_name = "物质主动效果：渗透"
    elseif i <= 100 then
      substance_effect_source_name = "物质主动效果：萃取"
    end
  return substance_effect_source_name
end

function get_substance_effect_target()
  local substance_effect_target_name =""
  local i = random(100)
  if i <= 25 then
      substance_effect_target_name = "物质被动效果：外形改变"
    elseif i <= 50 then
      substance_effect_target_name = "物质被动效果：形态改变"
    elseif i <= 75 then
      substance_effect_target_name = "物质被动效果：物理性质改变"
    elseif i <= 100 then
      substance_effect_target_name = "物质被动效果：穿透"
    end
  return substance_effect_target_name
end

function get_energy_effect_source()
  local energy_effect_source_name =""
  local i = random(100)
  if i <= 33 then
      substance_effect_target_name = "能量主动效果：穿透"
     elseif i <= 66 then
      substance_effect_target_name = "能量主动效果：储存"
    elseif i <= 100 then
      substance_effect_target_name = "能量主动效果：储存"
    end
  return energy_effect_source_name
end

--已修改：能量被动效果


function get_energy_effect_target()
  local energy_effect_target_name =""
  local i = random(100)
  if i <= 33 then
      energy_effect_target_name = "能量被动效果：凝聚"
    elseif i <= 66 then
      energy_effect_target_name = "能量被动效果：扩散"
    elseif i <= 100 then
      energy_effect_target_name = "能量被动效果：搅乱"
   end
  return energy_effect_target_name
end
  

--已修改：力场主动效果


function get_field_effect_source()
  local energy_effect_target_name =""
  local i = random(100)
  if i <= 25 then
      field_effect_source_name = "力场主动效果：排斥"
    elseif i <= 50 then
      field_effect_source_name = "力场主动效果：吸引"
    elseif i <= 75 then
      field_effect_source_name = "力场主动效果：操作"
    elseif i <= 80 then
      field_effect_source_name = "力场主动效果：量子云化"
    elseif i <= 100 then
      field_effect_source_name = "力场主动效果：矢量控制"
   end
  return field_effect_source_name
end

--已修改：力场被动效果

function get_field_effect_target()
  local energy_effect_target_name =""
  local i = random(100)
  if i <= 100 then
      field_effect_target_name = "力场被动效果：隔绝"
   end
  return field_effect_target_name
end

--已修改：生命主动效果

function get_life_effect_source()
  local life_effect_source_name =""
  local i = random(100)
  if i <= 33 then
      life_effect_source_name = "生命主动效果：操作"
    elseif i <= 66 then
      life_effect_source_name = "生命主动效果：感知"
    elseif i <= 95 then
      life_effect_source_name = "生命主动效果：形态转化"
    elseif i <= 100 then
      life_effect_source_name = "生命主动效果：活化"
   end
  return life_effect_source_name
end

--已修改：生命被动效果
  
function get_life_effect_target()
  local life_effect_target_name =""
  local i = random(100)
  if i <= 20 then
      life_effect_target_name = "生命被动效果：生命操控"
    elseif i <= 40 then
      life_effect_target_name = "生命被动效果：形态改变"
    elseif i <= 60 then
      life_effect_target_name = "生命被动效果：形态转化"
    elseif i <= 70 then
      life_effect_target_name = "生命被动效果：生命增殖"
    elseif i <= 80 then
      life_effect_target_name = "生命被动效果：净化"
    elseif i <= 95 then
      life_effect_target_name = "生命被动效果：融合"
    elseif i <= 100 then
      life_effect_target_name = "生命被动效果：进化"
   end
  return life_effect_target_name
end

--已修改：死亡主动效果

function get_death_effect_source()
  local death_effect_source_name =""
  local i = random(100)
  if i <= 100 then
      death_effect_source_name = "死亡主动效果：暂无"
   end
  return death_effect_source_name
end

--已修改：死亡被动效果

  
function get_death_effect_target()
  local death_effect_target_name =""
  local i = random(100)
  if i <= 100 then
      death_effect_target_name = "死亡被动效果：暂无"
   end
  return death_effect_target_name
end

--已修改：时间主动效果

function get_time_effect_source()
  local death_effect_target_name =""
  local i = random(100)
  if i <= 40 then
      time_effect_source_name = "时间主动效果：流速变动"
    elseif i <= 60 then
      time_effect_source_name = "时间主动效果：时轴移动（前移）"
    elseif i <= 80 then
      time_effect_source_name = "时间主动效果：时轴移动（后移）"
    elseif i <= 100 then
      time_effect_source_name = "时间主动效果：时间静止"
   end
  return time_effect_source_name
end
  

--已修改：时间被动效果


function get_time_effect_target()
  local death_effect_target_name =""
  local i = random(100)
  if i <= 50 then
      time_effect_target_name = "时间被动效果：时间倒流"
    elseif i <= 100 then
      time_effect_target_name = "时间被动效果：流速变动"
   end
  return time_effect_target_name
end
  

--已修改：空间主动效果

function get_space_effect_source()
  local space_effect_source_name =""
  local i = random(100)
  if i <= 20 then
      space_effect_source_name = "空间主动效果：连接"
    elseif i <= 40 then
      space_effect_source_name = "空间主动效果：空间移动"
    elseif i <= 60 then
      space_effect_source_name = "空间主动效果：探知"
    elseif i <= 70 then
      space_effect_source_name = "空间主动效果：多重空间镜像"
    elseif i <= 100 then
      space_effect_source_name = "空间主动效果：维度压缩"
   end
  return space_effect_source_name
end
  
--已修改：空间被动效果

function get_space_effect_target()
  local space_effect_target_name =""
  local i = random(100)
  if i <= 30 then
      space_effect_target_name = "空间被动效果：空间形变"
    elseif i <= 60 then
      space_effect_target_name = "空间被动效果：封锁"
    elseif i <= 80 then
      space_effect_target_name = "空间被动效果：撕裂"
    elseif i <= 100 then
      space_effect_target_name = "空间被动效果：置换"
   end
  return space_effect_target_name
end

--已修改：灵魂主动效果

function get_soul_effect_source()
  local soul_effect_source_name =""
  local i = random(100)
  if i <= 30 then
      soul_effect_source_name = "灵魂主动效果：锚定"
    elseif i <= 38 then
      soul_effect_source_name = "灵魂主动效果：链接"
    elseif i <= 57 then
      soul_effect_source_name = "灵魂主动效果：显现"
    elseif i <= 77 then
      soul_effect_source_name = "灵魂主动效果：抽取"
    elseif i <= 90 then
      soul_effect_source_name = "灵魂主动效果：融入"
    elseif i <= 100 then
      soul_effect_source_name = "灵魂主动效果：投射"
   end
  return soul_effect_source_name
end
  
--已修改：灵魂被动效果

function get_soul_effect_target()
  local soul_effect_target_name =""
  local i = random(100)
  if i <= 50 then
      soul_effect_target_name = "灵魂被动效果：封闭"
    elseif i <= 100 then
      soul_effect_target_name = "灵魂被动效果：读取"
   end
  return soul_effect_target_name
end

--已修改：命运主动效果

function get_luck_effect_source()
  local luck_effect_source_name =""
  local i = random(100)
  if i <= 33 then
      luck_effect_source_name = "命运主动效果：连接"
    elseif i <= 66 then
      luck_effect_source_name = "命运主动效果：预言"
    elseif i <= 95 then
      luck_effect_source_name = "命运主动效果：置换"
    elseif i <= 100 then
      luck_effect_source_name = "命运主动效果：预知"
   end
  return luck_effect_source_name
end

--已修改：命运被动效果

function get_luck_effect_target()
  local luck_effect_source_name =""
  local i = random(100)
  if i <= 100 then
      luck_effect_target_name = "命运被动效果：誓约"
   end
  return luck_effect_target_name
end    

--已修改：创造主动效果

function get_creat_effect_source()
  local creat_effect_source_name =""
  local i = random(100)
  if i <= 100 then
      creat_effect_source_name = "创造主动效果：创造"
   end
  return creat_effect_source_name
end    

--已修改：创造被动效果

function get_creat_effect_target()
  local creat_effect_target_name =""
  local i = random(100)
  if i <= 100 then
      creat_effect_target_name = "创造主动效果：创造"
   end
  return creat_effect_target_name
end    
   
--已修改：湮灭主动效果

function get_destroy_effect_source()
  local destroy_effect_source_name =""
  local i = random(100)
  if i <= 100 then
      destroy_effect_source_name = "创造主动效果：创造"
   end
  return destroy_effect_source_name
end    

--已修改：湮灭被动效果

function get_destroy_effect_target()
  local destroy_effect_target_name =""
  local i = random(100)
  if i <= 100 then
      destroy_effect_target_name = "创造主动效果：创造"
   end
  return destroy_effect_target_name
end    

function get_source_name()
  local i = random (100)
    if i<=20 then
      source_name = get_substance()
      source_level = 1
      effect_source_text = get_substance_effect_source()
      source_class = 1
    elseif i <= 40 then
      source_name = get_energy()
      source_level = 1
      effect_source_text = get_energy_effect_source()
      source_class = 2
    elseif i <= 60 then
      source_name = get_field()
      source_level = 1
      effect_source_text = get_field_effect_source()
      source_class = 3
    elseif i <= 70 then
      source_name = get_life()
      source_level = 2
      effect_source_text = get_life_effect_source()
      source_class = 4
    elseif i <= 75 then
      source_name = get_death()
      source_level = 2
      effect_source_text = get_death_effect_source()
      source_class = 5
    elseif i <= 85 then
      source_name = get_time()
      source_level = 2
      effect_source_text = get_time_effect_source()
      source_class = 6
    elseif i <= 90 then
      source_name = get_soul()
      source_level = 3
      effect_source_text = get_soul_effect_source()
      source_class = 7
    elseif i <= 95 then
      source_name = get_luck()
      source_level = 3
      effect_source_text = get_luck_effect_source()
      source_class = 8
    elseif i <= 98 then
      source_name = get_creat()
      source_level = 4
      effect_source_text = get_creat_effect_source()
      source_class = 9
    elseif i <= 100 then
      source_name = get_destroy()
      source_level = 4
      effect_source_text = get_destroy_effect_source()
      source_class = 10
  end
  return source_level,source_name,effect_source_text
end

function get_target_chance(min_target_level)
  chance_table={0,60,85,95}
  --这里的定义是输入最小target_level，返回对应的概率区间起点。
  --例如source_level=4，那么target_level最小也是4，对应最小概率起点是95。
  return chance_table[min_target_level]
end

function get_target_name(i)
  local target_name=""
    print("get_target_name, i:"..i)
    if i <= 20 then
      target_type = get_substance()
      target_level = 1
      effect_target_text = get_substance_effect_target()
    elseif i <= 40 then
      target_type = get_energy()
      target_level = 1
      effect_target_text = get_energy_effect_target()
    elseif i <= 60 then
      target_type = get_field()
      target_level = 1
      effect_target_text = get_field_effect_target()
    elseif i <= 70 then
      target_type = get_life()
      target_level = 2
      effect_target_text = get_life_effect_target()
    elseif i <= 75 then
      target_type = get_death()
      target_level = 2
      effect_target_text = get_death_effect_target()
    elseif i <= 85 then
      target_type = get_time()
      target_level = 2
      effect_target_text = get_time_effect_target()
    elseif i <= 90 then
      target_type = get_soul()
      target_level = 3
      effect_target_text = get_soul_effect_target()
    elseif i <= 95 then
      target_type = get_luck()
      target_level = 3
      effect_target_text = get_luck_effect_target()
    elseif i <= 98 then
      target_type = get_creat()
      target_level = 4
      effect_target_text = get_creat_effect_target()
    else
      effect_target_text = get_substance()
    end
    return target_type, effect_target_text
end

--未修改：有逻辑代码（但替换了elseif）


function get_medium_name() 
  i = random(100)
  if i <= 0 then
    medium_type = get_substance()
    medium_class = 1
  elseif i <= 40 then
    medium_type = get_energy()
    medium_class = 2
  elseif i <= 60 then
    medium_type = get_field()
    medium_class = 3
  elseif i <= 70 then
    medium_type = get_life()
    medium_class = 4
  elseif i <= 75 then
    medium_type = get_death()
    medium_class = 5
  elseif i <= 85 then
    medium_type = get_time()
    medium_class = 6
  elseif i <= 90 then
    medium_type = get_soul()
    medium_class = 7
  elseif i <= 95 then
    medium_type = get_luck()
    medium_class = 8
  elseif i <= 98 then
    medium_type = get_creat()
    medium_class = 9
	else
	  medium_type = get_substance()
	end
	print("medium_type: "..medium_type)
  return medium_type
end


--未修改：有逻辑代码（但替换了elseif）



function get_consumable_name()
  i = random(100)
  if i <= 50 then
    consumable_type = "存在点"
  elseif i <= 56 then
    consumable_type = get_substance()
  elseif i <= 64 then
    consumable_type = get_energy()
  elseif i <= 70 then
    consumable_type = get_field()
  elseif i <= 75 then
    consumable_type = get_life()
  elseif i <= 80 then
    consumable_type = get_death()
  elseif i <= 90 then
    consumable_type = get_soul()
  elseif i <= 95 then
    consumable_type = get_luck()
  elseif i <= 98 then
    consumable_type = get_creat()
  else
     consumable_type = get_substance()
  end
  return consumable_type
end



function yineng(msg,msg_time,buddy_name,buddy_num,qun_name,qun_num)
  l_msg=string.lower(msg)
  if string.match(l_msg, "^%.yineng")==nil then return end

  --roll source and target
  i = random(100)
  source_level, source_name=get_source_name(i)
  --print(source_level,source_name)
  min_target_chance=get_target_chance(source_level)
  j = random(min_target_chance,100)
  target_type, effect_target_text=get_target_name(j)
  print(target_type,effect_target_text)

  local result=msg_time.."\n"
  ..buddy_name.."投异能:\n"
  .."起源: "..source_name.."\n"
  .."目标: "..target_type.."\n"
  .."介质: "..get_medium_name().."\n"
  .."作用效果: "..effect_target_text.."\n"
  .."消耗:"..get_consumable_name()
  
  say_qun(result,qun_num)
end

