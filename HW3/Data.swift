//
//  Data.swift
//  HW3
//
//  Created by User15 on 2020/5/19.
//  Copyright © 2020 test. All rights reserved.
//

import Foundation

struct spell {
    var name: String
    var description: String
}

let episode1: [spell] = [
    spell(name:"復復修(Reparo)",description:"修復損壞物品的咒語"),
    spell(name:"阿咯哈姆拉(Alohomora)",description:"開鎖咒，可以解開「麻瓜」的鎖以及結構較簡單的咒語鎖。但可以事先對門鎖下咒，防止門被開鎖咒打開"),
    spell(name:"整整石化(Petrificus Totalus)",description:"全身鎖咒，可以使中咒者的四肢、身體無法動彈，如同被石化一般"),
    spell(name:"溫咖癲啦唯啊薩(Wingardium Leviosa)",description:"飄浮咒，可以使物體在半空飄浮或是緩緩飛過"),
    spell(name:"榫頭(Locomotor Mortis)",description:"鎖腿咒，中咒者的雙腳會黏在一起")
]

let episode2: [spell] = [
    spell(name:"路摸思(Lumos)",description:"此咒會使施咒者的魔杖頂端發光，形同一把手電筒"),
    spell(name:"去去武器走(Expelliarmus)"
,description:"繳械咒，能夠使中咒者手中的物品（一般是魔杖）飛離掌握之中，而過於強大施行出問題時則會使中咒者向後飛開。這個咒語是洛哈教授和石內卜教授在《哈利波特—消失的密室》中決鬥社時教授的。一般被食死人認為是哈利的招牌動作"),
    spell(name:"哩吐三卜啦(Rictusempra)"
        ,description:"呵癢咒，可以使中咒者全身很癢，捧腹大笑"),
    spell(name:"塔朗泰拉跳(Tarantallegra)"
        ,description:"此咒語會使中咒者的雙腳不由自主的舞動"),
    spell(name:"止止魔咒消(Finite Incantatem)",description:"可以解除一般的惡咒"),
    spell(name:"蛇蛇攻(Serpensortia)",description:"此咒可以使施咒者的魔杖召喚出一條蛇"),
    spell(name:"阿八拉象(Aparecium)",description:"此咒能使隱形墨水現形"),
    spell(name:"空空遺忘(Obliviate)"
        ,description:"記憶咒，能修改或刪去中咒者記憶，並有稍微精神恍惚的副作用"),
    spell(name:"吃蛞蝓(Eat Slugs)",description:"可以使中咒者不停地吐出蛞蝓")
]

let episode3: [spell] = [
    spell(name:"終極路摸思(Lumos Maxima)",description:"路摸思的最大化"),
    spell(name:"哇嘀哇唏(Waddiwasi)",description:"此咒能使物體像子彈般飛快地發射出去"),
    spell(name:"叱叱荒唐(Riddikulus)"
        ,description:"對付幻形怪的咒語，能使幻形怪變成施咒者心中的形態"),
    spell(name:"止止不透(Impervius)",description:"令到物品不會被水弄濕"),
    spell(name:"惡作劇完成(Mischief managed)"
,description:"隱藏劫盜地圖劫盜地圖的密語，是哈利在《哈利波特—阿茲卡班的逃犯》中從弗雷和喬治學來的。此後，每當哈利用完地圖後，便會用此密語將之隱藏"),
    spell(name:"浮浮僵屍行(Mobiliarbus):"
,description:"能夠使物品移動，但不會像飄浮咒（溫咖癲啦唯啊薩）般飛離地面，而是只會浮起幾吋"),
    spell(name:"疾疾護法現身(Expecto Patronum)"
,description:"護法咒，是非常高深的防禦魔法，施法前需要想著開心的事，用魔杖召喚出一隻銀色的閃亮護法，可以用來擊退催狂魔一類無實體的危險魔法生物。其形狀獨一無二，因人而異"),
    spell(name:"吶剋斯(Nox)",description:"熄滅路摸思光線的符咒")
]

let episode4: [spell] = [
    spell(name:"吼吼燒(Incendio)",description:"可以使施咒者的魔杖頂端射出火焰"),
    spell(name:"速速前(Accio)"
        ,description:"召喚咒，可以把施咒者心中想著的物件迅速召喚到他的身邊"),
    spell(name:"哄哄響(Sonorus)"
        ,description:"此咒能夠使中咒者的嗓音放大，效果形同麻瓜的麥克風"),
    spell(name:"魔魔斃(Morsmordre)"
        ,description:"召出「黑魔標記」的咒語，只有食死人和佛地魔本人才懂得施展此咒"),
    spell(name:"咄咄失(Stupefy)"
,description:"昏擊咒，施咒者的魔杖會射出一束紅色的光束使中咒者陷入昏迷。同時多人使用的話能夠昏擊龍一類的強大魔法生物，但多發同時擊中人類可能有生命危險。正確的昏擊咒可以令被擊中的生物暫時失去意識"),
    spell(name:"萎萎起(Enervate)",description:"使被昏擊咒打中的人醒過來的咒語"),
    spell(name:"呼呼，前咒現(Prior Incantato)"
    ,description:"此為驅使「符咒倒轉效應」的咒語，會使中咒的魔杖顯現上一次施的咒語的影像"),
    spell(name:"噩噩令(Imperio)"
,description:"蠻橫咒，可以完全地控制被下咒的對象做出自己想要他們做的事情。但只要要集中注意力及毅力對抗腦袋中的聲音，也可能成功破解"),
    spell(name:"咒咒虐(Crucio)"
        ,description:"酷刑咒，極可怕的肉體折磨，被酷刑咒擊中會激烈的抽搐、痙攣，痛不欲生"),
    spell(name:"啊哇呾喀呾啦(Avada Kedavra)"
,description:"索命咒，需要強大法力才能施展的咒語。施咒時魔杖會射出炫目的綠光，並發出咻咻的聲音，中咒者會立即斃命，完全沒有任何解咒術可以破解"),
    spell(name:"熔熔沸(Furnunculus)"
        ,description:"擊中任何一種物件的話，該物件會給咒語發出的岩漿燒燬"),
    spell(name:"涎涎牙(Densaugeo)",description:"被咒語擊中，門牙就會以驚人的速度增長"),
    spell(name:"吩吩綻(Diffindo)",description:"切除咒"),
    spell(name:"噴噴障(Impedimenta)"
,description:"障礙惡咒，不管別人用什麼方法攻擊，譬如接近，抽出魔杖，揮拳毆擊等，這個咒語都可以遲延對象的攻擊動作，甚至可以將對手往後擊飛"),
    spell(name:"啾啾縮(Reducio)"
,description:"被施了咒語的動物或人身體會瞬間縮小，和『暴暴吞』相對的咒語。可以解除暴食咒的咒語"),
    spell(name:"嚗嚗消(Reducto)"
,description:"消除咒。將擋路的固體物炸開的咒語，但只能消除固體物，和「噴噴障」相反的咒語")
]

let episode5: [spell] = [
    spell(name:"港口現(Portus)",description:"可把任何物品變成港口鑰"),
    spell(name:"破破心(Legilimens)",description:"可知道被施咒人的記憶或過去"),
    spell(name:"破心護(Protego)"
,description:"屏障咒，召喚出一道屏障來保護施咒者免受於某些較簡單的惡咒。至少可以減弱惡咒的威力，法力強大的巫師使用此咒語甚至可以將敵人的惡咒反射回去"),
    spell(name:"消消藏(Evanesco)",description:"消失咒"),
    spell(name:"滅滅淨(Scourgify)",description:"清潔用的咒"),
    spell(name:"密密膠(Colloportus)",description:"對準一道門射出咒語，該門便會給膠封閉"),
    spell(name:"默默靜(Silencio)",description:"給咒語擊中的人會者暫時啞聲"),
    spell(name:"打包(pack)",description:"使用此咒語，可以自動為你打包行李"),
    spell(name:"疾疾動箱(Locomotor Trunk)",description:"能使行李自動自發的遵守指揮"),
    spell(name:"多身咒(Protean Charm)"
,description:"比複製咒再更高難度，但也更精準，被複製的東西發生任何變化，複製出來的東西也會跟著改變"),
    spell(name:"倒倒吊(Levicorpus)"
        ,description:"石內卜上學時發明的咒文，可把人整個倒轉吊起在空中"),
    spell(name:"驅逐咒(Banishing Charm)"
        ,description:"與『速速前』相反的咒語，可以把施咒者心中想著的物件迅速離開他"),
    spell(name:"繩繩禁(Incarcerous)"
        ,description:"這個咒語可以化出繩索捆綁敵人，也可以利用綑綁咽喉的方式令對方窒息或喪命")
]

let episode6: [spell] = [
    spell(name:"撕淌三步殺(Sectum Sempra)"
,description:"石內卜上學時發明的咒文，能使對方好像被一把無形的劍劃了好幾刀而鮮血直湧。只有石內卜才知道最有效破解方法"),
    spell(name:"速速癒合(Vulnera Sanentur)",description:"撕淌三步殺咒唯一已知的解咒"),
    spell(name:"水水噴(Aguamenti)"
,description:"需要用水時的好用咒語，不論是想喝水，或是火場需要救火，只要這一句就能搞定"),
    spell(name:"哆哆潔(Tergeo)",description:"瞬間清除污漬最好用咒語"),
    spell(name:"路路通(Anapneo)",description:"可以使氣管暢通的咒語"),
    spell(name:"嗡嗡鳴(Muffliato)"
        ,description:"這個咒文能讓別人耳朵里發出嗡嗡聲，從而聽不到自己和朋友們的談話聲"),
    spell(name:"衝衝攻(Oppugno)",description:"可令多個物件向特定方向發射"),
    spell(name:"退退降(Liberacorpus)",description:"倒倒吊的解咒")
]

let episode7: [spell] = [
    spell(name:"窟窿現(Deprimo)",description:"令地板出現一個洞"),
    spell(name:"洞洞鑿(Defodio)",description:"鑿洞咒"),
    spell(name:"爆爆炸(Confringo)"
        ,description:"令目標物品爆炸，比它威力小一些的咒語是「轟轟破」"),
    spell(name:"人人現(Homenum Revelio)",description:"令使用者知道附近有甚麼人"),
    spell(name:"撒撒氣象(Meteolojinx Recanto)",description:"消除氣象咒"),
    spell(name:"雕像行行起(Piertotum Locomotor)",description:"令雕像和盔甲行動"),
    spell(name:"破心護(Protego Horribilis)",description:"防止黑魔法進入某個範圍"),
    spell(name:"全全破心護(Protego Totalum)",description:"為某個範圍提供保護"),
    spell(name:"去去麻瓜走(Repello Muggletum)",description:"麻瓜驅逐咒"),
    spell(name:"安安除惡咒(Salvio Hexia)",description:"防止咒語進入某個範圍"),
    spell(name:"雙雙製(Geminio)",description:"可複製物品"),
    spell(name:"光光滑(Glisseo)",description:"可使樓梯瞬間拉成一條直線，變成滑梯"),
    spell(name:"硬硬堅(Duro)"
        ,description:"能使任何東西變成堅硬的石塊，形狀、大小、體積不變，但會變的非常堅硬"),
    spell(name:"糊糊迷(Confundo)"
        ,description:"迷糊咒。能讓人變迷糊，搞不清楚身邊所發生的事，變的好像完全沒腦袋的樣子")
]
