local function Bank(msg)
local text = msg.content_.text_
if not Devmuh:get(KOIA..'muh:Lock:Bank'..msg.chat_id_) then
if text == "بنك" and ChCheck(msg) then
if Redis:get(KOIA.. "Bank"..msg.chat_id) then
    if Redis:get(KOIA..'Warning:Chat'..msg.chat_id)  then
        LuaTele.sendText(msg.chat_id,msg.id,Reply_Status(msg.sender_id.user_id,"⌔︙البنك معطله من قبل مالك المجموعة \n").Warning,"md",true)
    end
    return false
end
LuaTele.sendText(msg.chat_id,msg.id,[[
⌔︙اوامر البنك ⇟⇟
 ━─━─────━─────━─━
⌔︙انشاء حساب بنكي
⌔︙حسابي 
⌔︙فلوسي 
⌔︙الكنز
⌔︙قرض تاخذ قرض من البنك 
⌔︙تسديد قرض تسدد قرض اذا عليك
⌔︙راتب 
⌔︙بخشيش
⌔︙زرف بالرد
⌔︙زواج بالرد +المهر
⌔︙فلوسه بالرد
⌔︙حسابه بالرد 
⌔︙تحويل + المبلغ بالرد
⌔︙استثمار + المبلغ
⌔︙حظ + المبلغ
⌔︙مضاربه + المبلغ
⌔︙توب الفلوس
⌔︙توب المتزوجين
⌔︙توب الحراميه
⌔︙توب الزواجات
⌔︙ ترتيبي
⌔︙ميدالياتي
⌔︙انشاء كوبون
⌔︙كوبون + رقم
⌔︙متجر الرتب كي تشتري رتبه في المجموعة
⌔︙هجوم + مبلغ بالرد

]],"md",true)  
return false
end

if text == 'انشاء حساب بنكي' or text == 'انشاء حساب البنكي' or text =='انشاء الحساب بنكي' or text =='انشاء الحساب البنكي' or text == "انشاء حساب" or text == "فتح حساب بنكي" then
cobnum = tonumber(Redis:get("bandid"..msg.sender_id.user_id))
if cobnum == msg.sender_id.user_id then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ حسابك محظور من لعبة البنك","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
creditcc = math.random(5000000000000000,5999999999999999);
creditvi = math.random(4000000000000000,4999999999999999);
creditex = math.random(6000000000000000,6999999999999999);
balas = 50
if Redis:sismember("booob",msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ لديك حساب بنكي مسبقاً\n\n⌔ لعرض معلومات حسابك اكتب\n» `حسابي`","md",true)
end
Redis:setex("booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id,60, true)
LuaTele.sendText(msg.chat_id,msg.id,[[
⌔ لانشاء حساب قم باختيار نوع البطاقة
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
⌔ `بنك الرافدين`
⌔ `بنك الرشيد`
⌔ `بنك الدولي`
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ 
- اضغط للنسخ
⌔ مدة الطلب دقيقة واحدة ويطردك الموظف
]],"md",true)  
return false
end
if Redis:get("booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
if text == "بنك الرافدين" then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = msg.sender_id.user_id
Redis:set("bobna"..msg.sender_id.user_id,news)
Redis:set("boob"..msg.sender_id.user_id,balas)
Redis:set("boobb"..msg.sender_id.user_id,creditcc)
Redis:set("bbobb"..msg.sender_id.user_id,text)
Redis:set("boballname"..creditcc,news)
Redis:set("boballbalc"..creditcc,balas)
Redis:set("boballcc"..creditcc,creditcc)
Redis:set("boballban"..creditcc,text)
Redis:set("boballid"..creditcc,banid)
Redis:sadd("booob",msg.sender_id.user_id)
Redis:del("booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id, "\n⌔  تم انشاء حساب في بنك ريسكس  🏦\n⌔  وشحنالك 50 دولار هديه\n\n⌔ رقم حسابك ⌔ ( `"..creditcc.."` )\n⌔ نوع البطاقة ⌔ ( بنك الرافدين 💳 )\n⌔ فلوسك ⌔ ( 50 دولار 💰 )  ","md",true)  
end 
if text == "بنك الرشيد" then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = msg.sender_id.user_id
Redis:set("bobna"..msg.sender_id.user_id,news)
Redis:set("boob"..msg.sender_id.user_id,balas)
Redis:set("boobb"..msg.sender_id.user_id,creditvi)
Redis:set("bbobb"..msg.sender_id.user_id,text)
Redis:set("boballname"..creditvi,news)
Redis:set("boballbalc"..creditvi,balas)
Redis:set("boballcc"..creditvi,creditvi)
Redis:set("boballban"..creditvi,text)
Redis:set("boballid"..creditvi,banid)
Redis:sadd("booob",msg.sender_id.user_id)
Redis:del("booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id, "\n⌔  تم انشاء حساب في بنك ريسكس  🏦\n⌔  وشحنالك 50 دولار هدية\n\n⌔ رقم حسابك ⌔ ( `"..creditvi.."` )\n⌔ نوع البطاقة ⌔ ( بنك الرشيد 💳 )\n⌔ فلوسك ⌔ ( 50 دولار 💰 )  ","md",true)   
end 
if text == "بنك الدولي" then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = msg.sender_id.user_id
Redis:set("bobna"..msg.sender_id.user_id,news)
Redis:set("boob"..msg.sender_id.user_id,balas)
Redis:set("boobb"..msg.sender_id.user_id,creditex)
Redis:set("bbobb"..msg.sender_id.user_id,text)
Redis:set("boballname"..creditex,news)
Redis:set("boballbalc"..creditex,balas)
Redis:set("boballcc"..creditex,creditex)
Redis:set("boballban"..creditex,text)
Redis:set("boballid"..creditex,banid)
Redis:sadd("booob",msg.sender_id.user_id)
Redis:del("booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id, "\n⌔  تم انشاء حساب في بنك ريسكس  🏦\n⌔  وشحنالك 50 دولار هديه\n\n⌔ رقم حسابك ⌔ ( `"..creditex.."` )\n⌔ نوع البطاقة ⌔ ( بنك الدولي 💳 )\n⌔ فلوسك ⌔ ( 50 دولار 💰 )  ","md",true)   
end 
end
if text == 'مسح حساب بنكي' or text == 'مسح حساب البنكي' or text =='مسح الحساب بنكي' or text =='مسح الحساب البنكي' or text == "مسح حسابي البنكي" or text == "مسح حسابي بنكي" or text == "مسح حسابي" then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("booob",msg.sender_id.user_id) then
Redis:srem("booob", msg.sender_id.user_id)
Redis:del("boob"..msg.sender_id.user_id)
Redis:del("boobb"..msg.sender_id.user_id)
Redis:del("rrfff"..msg.sender_id.user_id)
Redis:srem("rrfffid", msg.sender_id.user_id)
Redis:srem("roogg1", msg.sender_id.user_id)
Redis:srem("roogga1", msg.sender_id.user_id)
Redis:del("roog1"..msg.sender_id.user_id)
Redis:del("rooga1"..msg.sender_id.user_id)
Redis:del("rahr1"..msg.sender_id.user_id)
Redis:del("rahrr1"..msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ مسحت حسابك البنكي 🏦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'تثبيت النتائج' or text == 'تثبيت نتائج' then
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
time = os.date("*t")
month = time.month
day = time.day
local_time = month.."/"..day
local bank_users = Redis:smembers("booob")
if #bank_users == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يوجد حسابات في البنك","md",true)
end
mony_list = {}
for k,v in pairs(bank_users) do
local mony = Redis:get("boob"..v)
table.insert(mony_list, {tonumber(mony) , v})
end
table.sort(mony_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇",
"🥈",
"🥉"
}
for k,v in pairs(mony_list) do
local user_name = LuaTele.getUser(v[2]).first_name or Redis:get(v[2].."first_name:") or "لا يوجد اسم"
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
Redis:set("medal"..v[2],convert_mony)
Redis:set("medal2"..v[2],emo)
Redis:set("medal3"..v[2],local_time)
Redis:sadd("medalid",v[2])
Redis:set("medal"..v[2],convert_mony)
Redis:set("medal2"..v[2],emo)
Redis:set("medal3"..v[2],local_time)
Redis:sadd("medalid",v[2])
local user_name = LuaTele.getUser(v[2]).first_name or Redis:get(v[2].."first_name:") or "لا يوجد اسم"
local user_tag = '['..user_name..'](tg://user?id='..v[2]..')'
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
Redis:set("medal"..v[2],convert_mony)
Redis:set("medal2"..v[2],emo)
Redis:set("medal3"..v[2],local_time)
Redis:sadd("medalid",v[2])
if num == 4 then
return end
end
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ثبتت النتائج","md",true)
end
end
if text == 'مسح كل الفلوس' or text == 'مسح كل فلوس' then
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
local bank_users = Redis:smembers("booob")
for k,v in pairs(bank_users) do
Redis:del("boob"..v)
Redis:del("kreednum"..v)
Redis:del("kreed"..v)
Redis:del("rrfff"..v)
end
local bank_usersr = Redis:smembers("rrfffid")
for k,v in pairs(bank_usersr) do
Redis:del("boob"..v)
Redis:del("rrfff"..v)
end
LuaTele.sendText(msg.chat_id,msg.id, "⌔ مسحت كل فلوس اللعبة 🏦","md",true)
end
end

if text == 'تصفير النتائج' or text == 'مسح لعبه البنك' then
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
local bank_users = Redis:smembers("booob")
for k,v in pairs(bank_users) do
Redis:del("boob"..v)
Redis:del("kreednum"..v)
Redis:del("kreed"..v)
Redis:del("rrfff"..v)
Redis:del("numattack"..v)
end
local bank_usersr = Redis:smembers("rrfffid")
for k,v in pairs(bank_usersr) do
Redis:del("boob"..v)
Redis:del("rrfff"..v)
end
Redis:del("rrfffid")
Redis:del("booob")
LuaTele.sendText(msg.chat_id,msg.id, "⌔ مسحت لعبه البنك 🏦","md",true)
end
end
if text == 'ميدالياتي' or text == 'ميداليات' then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("medalid",msg.sender_id.user_id) then
local medaa2 = Redis:get("medal2"..msg.sender_id.user_id)
if medaa2 == "🥇" then
local medaa = Redis:get("medal"..msg.sender_id.user_id)
local medaa2 = Redis:get("medal2"..msg.sender_id.user_id)
local medaa3 = Redis:get("medal3"..msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "ميدالياتك :\n\nالتاريخ : "..medaa3.." \nالفلوس : "..medaa.." 💰\nالمركز : "..medaa2.." كونكر "..medaa2.."","md",true)
elseif medaa2 == "🥈" then
local medaa = Redis:get("medal"..msg.sender_id.user_id)
local medaa2 = Redis:get("medal2"..msg.sender_id.user_id)
local medaa3 = Redis:get("medal3"..msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "ميدالياتك :\n\nالتاريخ : "..medaa3.." \nالفلوس : "..medaa.." 💰\nالمركز : "..medaa2.." ايس "..medaa2.."","md",true)
else
local medaa = Redis:get("medal"..msg.sender_id.user_id)
local medaa2 = Redis:get("medal2"..msg.sender_id.user_id)
local medaa3 = Redis:get("medal3"..msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "ميدالياتك :\n\nالتاريخ : "..medaa3.." \nالفلوس : "..medaa.." 💰\nالمركز : "..medaa2.." تاج "..medaa2.."","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك ميداليات","md",true)
end
end

if text == 'فلوسي' or text == 'فلوس' and tonumber(msg.reply_to_message_id) == 0 then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("booob",msg.sender_id.user_id) then
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 1 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك فلوس ارسل الالعاب وابدأ بجمع الفلوس ","md",true)
end
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ فلوسك `"..convert_mony.."` دولار 💰","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'فلوسه' or text == 'فلوس' and tonumber(msg.reply_to_message_id) ~= 0 then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ لا يمتلك حساب بالبنك*","md",true)  
return false
end
if Redis:sismember("booob",Remsg.sender_id.user_id) then
ballanceed = Redis:get("boob"..Remsg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballanceed)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ فلوسه `"..convert_mony.."` دولار 💰","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ لا يمتلك حساب بنكي ","md",true)
end
end

if text == 'حسابي' or text == 'حسابي البنكي' or text == 'رقم حسابي' then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember("booob",msg.sender_id.user_id) then
cccc = Redis:get("boobb"..msg.sender_id.user_id)
uuuu = Redis:get("bbobb"..msg.sender_id.user_id)
pppp = Redis:get("rrfff"..msg.sender_id.user_id) or 0
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ الاسم ↫ "..news.."\n⌔ الحساب ↫ `"..cccc.."`\n⌔ بنك ↫ ( ريسكس  )\n⌔ نوع ↫ ( "..uuuu.." )\n⌔ الرصيد ↫ ( "..convert_mony.." دولار 💰 )\n⌔ الزرف ( "..pppp.." دولار 💰 )","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'مسح حسابه' and tonumber(msg.reply_to_message_id) ~= 0 then
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ لا يمتلك حساب بالبنك*","md",true)  
return false
end
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember("booob",Remsg.sender_id.user_id) then
ccccc = Redis:get("boobb"..Remsg.sender_id.user_id)
uuuuu = Redis:get("bbobb"..Remsg.sender_id.user_id)
ppppp = Redis:get("rrfff"..Remsg.sender_id.user_id) or 0
ballanceed = Redis:get("boob"..Remsg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballanceed)
Redis:srem("booob", Remsg.sender_id.user_id)
Redis:del("boob"..Remsg.sender_id.user_id)
Redis:del("boobb"..Remsg.sender_id.user_id)
Redis:del("rrfff"..Remsg.sender_id.user_id)
Redis:del("numattack"..Remsg.sender_id.user_id)
Redis:srem("rrfffid", Remsg.sender_id.user_id)
Redis:srem("roogg1", Remsg.sender_id.user_id)
Redis:srem("roogga1", Remsg.sender_id.user_id)
Redis:del("roog1"..Remsg.sender_id.user_id)
Redis:del("rooga1"..Remsg.sender_id.user_id)
Redis:del("rahr1"..Remsg.sender_id.user_id)
Redis:del("rahrr1"..Remsg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ الاسم ↫ "..news.."\n⌔ الحساب ↫ `"..ccccc.."`\n⌔ بنك ↫ ( ريسكس  )\n⌔ نوع ↫ ( "..uuuuu.." )\n⌔ الرصيد ↫ ( "..convert_mony.." دولار 💰 )\n⌔ الزرف ⌔ ( "..ppppp.." دولار 💰 )\n⌔ مسكين مسحت حسابه ","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ لا يمتلك حساب بنكي ","md",true)
end
end
end

if text == 'حسابه' and tonumber(msg.reply_to_message_id) ~= 0 then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ لا يمتلك حساب بالبنك*","md",true)  
return false
end
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember("booob",Remsg.sender_id.user_id) then
ccccc = Redis:get("boobb"..Remsg.sender_id.user_id)
uuuuu = Redis:get("bbobb"..Remsg.sender_id.user_id)
ppppp = Redis:get("rrfff"..Remsg.sender_id.user_id) or 0
ballanceed = Redis:get("boob"..Remsg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballanceed)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ الاسم ↫ "..news.."\n⌔ الحساب ↫ `"..ccccc.."`\n⌔ بنك ↫ ( ريسكس  )\n⌔ نوع ↫ ( "..uuuuu.." )\n⌔ الرصيد ↫ ( "..convert_mony.." دولار 💰 )\n⌔ الزرف ⌔ ( "..ppppp.." دولار 💰 )","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديه حساب بنكي ","md",true)
end
end

if text and text:match('^مسح حساب (.*)$') or text and text:match('^مسح حسابه (.*)$') then
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
local UserName = text:match('^مسح حساب (.*)$') or text:match('^مسح حسابه (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
local ban = LuaTele.getUser(coniss)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد "
end
if Redis:sismember("booob",coniss) then
ccccc = Redis:get("boobb"..coniss)
uuuuu = Redis:get("bbobb"..coniss)
ppppp = Redis:get("rrfff"..coniss) or 0
ballanceed = Redis:get("boob"..coniss) or 0
local convert_mony = string.format("%.0f",ballanceed)
Redis:srem("booob", coniss)
Redis:del("boob"..coniss)
Redis:del("boobb"..coniss)
Redis:del("rrfff"..coniss)
Redis:srem("roogg1", coniss)
Redis:srem("roogga1", coniss)
Redis:del("roog1"..coniss)
Redis:del("rooga1"..coniss)
Redis:del("rahr1"..coniss)
Redis:del("rahrr1"..coniss)
Redis:del("numattack"..coniss)
Redis:srem("rrfffid", coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ الاسم ↫ "..news.."\n⌔ الحساب ↫ `"..ccccc.."`\n⌔ بنك ↫ ( ريسكس  )\n⌔ نوع ↫ ( "..uuuuu.." )\n⌔ الرصيد ↫ ( "..convert_mony.." دولار 💰 )\n⌔ الزرف ⌔ ( "..ppppp.." دولار 💰 )\n⌔ مسكين مسحت حسابه ","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديه حساب بنكي ","md",true)
end
end
end

if text and text:match('^حساب (.*)$') or text and text:match('^حسابه (.*)$') then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local UserName = text:match('^حساب (.*)$') or text:match('^حسابه (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if Redis:get("boballcc"..coniss) then
local yty = Redis:get("boballname"..coniss)
local bobpkh = Redis:get("boballid"..coniss)
ballancee = Redis:get("boob"..bobpkh) or 0
local convert_mony = string.format("%.0f",ballancee)
local dfhb = Redis:get("boballbalc"..coniss)

local fsvhh = Redis:get("boballban"..coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ الاسم ↫ "..yty.."\n⌔ الحساب ↫ `"..coniss.."`\n⌔ بنك ↫ ( ريسكس  )\n⌔ نوع ↫ ( "..fsvhh.." )\n⌔ الرصيد ↫ ( "..convert_mony.." دولار 💰 )","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ لا يوجده حساب بنكي كذا","md",true)
end
end

if text == 'مضاربه' then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
if Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 15 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 14 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 13 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 12 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 660 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 11 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 1 دقيقة )","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`مضاربه` المبلغ","md",true)
end

if text and text:match('^مضاربه (.*)$') or text and text:match('^مضاربة (.*)$') then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local UserName = text:match('^مضاربه (.*)$') or text:match('^مضاربة (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if Redis:sismember("booob",msg.sender_id.user_id) then
if Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 15 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 14 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 13 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 12 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 660 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 11 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("iiooooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تضارب الآن\n⌔ تعال بعد ( 1 دقيقة )","md",true)
end
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 99 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ الحد الادنى المسموح هو 100 دولار 💰","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسك لا تكفي*","md",true)
end
local modarba = {"1", "2", "3", "4️",}
local Descriptioontt = modarba[math.random(#modarba)]
local modarbaa = math.random(1,90);
if Descriptioontt == "1" or Descriptioontt == "3" then
ballanceekku = coniss / 100 * modarbaa
ballanceekkku = ballancee - ballanceekku
local convert_mony = string.format("%.0f",ballanceekku)
local convert_mony1 = string.format("%.0f",ballanceekkku)
Redis:set("boob"..msg.sender_id.user_id , math.floor(ballanceekkku))
Redis:setex("iiooooo" .. msg.sender_id.user_id,900, true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ مضاربة فاشلة ❎\n⌔ نسبة الخسارة "..modarbaa.."%\n⌔ المبلغ الذي خسرته ( "..convert_mony.." دولار 💰 )\n⌔ فلوسك اصبحت ( "..convert_mony1.." دولار 💰 )","md",true)
elseif Descriptioontt == "2" or Descriptioontt == "4" then
ballanceekku = coniss / 100 * modarbaa
ballanceekkku = ballancee + ballanceekku
local convert_mony = string.format("%.0f",ballanceekku)
local convert_mony1 = string.format("%.0f",ballanceekkku)
Redis:set("boob"..msg.sender_id.user_id , math.floor(ballanceekkku))
Redis:setex("iiooooo" .. msg.sender_id.user_id,900, true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ مضاربة ناجحة ✅\n⌔ نسبة الربح "..modarbaa.."%\n⌔ المبلغ الذي ربحته ( "..convert_mony.." دولار 💰 )\n⌔ فلوسك اصبحت ( "..convert_mony1.." دولار 💰 )","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'استثمار' then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
if Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 1180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 20 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 1120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 19 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 1060 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 18 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 1000 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 17 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 940 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 16 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 15 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 14 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 13 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 12 دقيقة )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 11 دقيقة )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 1 دقيقة )","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`استثمار` المبلغ","md",true)
end

if text and text:match('^استثمار (.*)$') then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local UserName = text:match('^استثمار (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if Redis:sismember("booob",msg.sender_id.user_id) then
if Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 1180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 20 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 1120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 19 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 1060 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 18 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 1000 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 17 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 940 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 16 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 15 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 14 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 13 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 12 دقيقة )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 11 دقيقة )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("iioooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تستثمر الآن\n⌔ تعال بعد ( 1 دقيقة )","md",true)
end
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 99 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ الحد الادنى المسموح هو 100 دولار 💰","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسك لا تكفي*","md",true)
end
if tonumber(ballancee) < 100000 then
local hadddd = math.random(10,15);
ballanceekk = coniss / 100 * hadddd
ballanceekkk = ballancee + ballanceekk
local convert_mony = string.format("%.0f",ballanceekk)
local convert_mony1 = string.format("%.0f",ballanceekkk)
Redis:set("boob"..msg.sender_id.user_id , math.floor(ballanceekkk))
Redis:setex("iioooo" .. msg.sender_id.user_id,1200, true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ استثمار ناجح 💰\n⌔ نسبة الربح ⌔ "..hadddd.."%\n⌔ مبلغ الربح ⌔ ( "..convert_mony.." دولار 💰 )\n⌔ فلوسك اصبحت ⌔ ( "..convert_mony1.." دولار 💰 )","md",true)
else
local hadddd = math.random(1,9);
ballanceekk = coniss / 100 * hadddd
ballanceekkk = ballancee + ballanceekk
local convert_mony = string.format("%.0f",ballanceekk)
local convert_mony1 = string.format("%.0f",ballanceekkk)
Redis:set("boob"..msg.sender_id.user_id , math.floor(ballanceekkk))
Redis:setex("iioooo" .. msg.sender_id.user_id,1200, true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ استثمار ناجح 💰\n⌔ نسبة الربح ⌔ "..hadddd.."%\n⌔ مبلغ الربح ⌔ ( "..convert_mony.." دولار 💰 )\n⌔ فلوسك اصبحت ⌔ ( "..convert_mony1.." دولار 💰 )","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'حظ' then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
if Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 15 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 14 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 13 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 12 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 11 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 1 دقيقة )","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`حظ` المبلغ","md",true)
end

if text and text:match('^حظ (.*)$') then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local UserName = text:match('^حظ (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if Redis:sismember("booob",msg.sender_id.user_id) then
if Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 15 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 14 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 13 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 12 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 11 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("iiooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تلعب لعبة الحظ الآن\n⌔ تعال بعد ( 1 دقيقة )","md",true)
end
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسك لا تكفي*","md",true)
end

local daddd = {"1", "2",}
local haddd = daddd[math.random(#daddd)]
if haddd == "1" then
local ballanceek = ballancee + coniss
local convert_mony = string.format("%.0f",ballancee)
local convert_mony1 = string.format("%.0f",ballanceek)
Redis:set("boob"..msg.sender_id.user_id , math.floor(ballanceek))
Redis:setex("iiooo" .. msg.sender_id.user_id,900, true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ مبروك لقد فزت بالحظ\n⌔ فلوسك قبل ⌔ ( "..convert_mony.." دولار 💰 )\n⌔ فلوسك الآن ⌔ ( "..convert_mony1.." دولار 💰 ) .","md",true)
else
local ballanceekk = ballancee - coniss
local convert_mony = string.format("%.0f",ballancee)
local convert_mony1 = string.format("%.0f",ballanceekk)
Redis:set("boob"..msg.sender_id.user_id , math.floor(ballanceekk))
Redis:setex("iiooo" .. msg.sender_id.user_id,900, true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ للاسف خسرت بالحظ 👁️\n⌔ فلوسك قبل ⌔ ( "..convert_mony.." دولار 💰 )\n⌔ فلوسك الآن ⌔ ( "..convert_mony1.." دولار 💰 ) .","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'تحويل' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`تحويل` المبلغ","md",true)
end

if text and text:match('^تحويل (.*)$') then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` لكي تستطيع التحويل","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local UserName = text:match('^تحويل (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if not Redis:sismember("booob",msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ","md",true)
end
if tonumber(coniss) < 100 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ الحد الادنى المسموح به هو 100 دولار ","md",true)
end
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 100 then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسك لا تكفي*","md",true)
end

if tonumber(coniss) > tonumber(ballancee) then
return LuaTele.sendText(msg.chat_id,msg.id, "عذرا فلوسك لا تكفي","md",true)
end

Redis:set("transn"..msg.sender_id.user_id,coniss)
Redis:setex("trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id,60, true)
LuaTele.sendText(msg.chat_id,msg.id,[[
⌔ ارسل الآن رقم الحساب البنكي الذي تريد التحويل له

⌔ معاك دقيقة وحدة والغي طلب التحويل .

]],"md",true)  
return false
end
if Redis:get("trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
cccc = Redis:get("boobb"..msg.sender_id.user_id)
uuuu = Redis:get("bbobb"..msg.sender_id.user_id)
if text ~= text:match('^(%d+)$') then
Redis:del("trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del("transn" .. msg.sender_id.user_id)
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ارسل رقم حساب بنكي ","md",true)
end
if text == cccc then
Redis:del("trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del("transn" .. msg.sender_id.user_id)
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يمكنك تحول لنفسك ","md",true)
end
if Redis:get("boballcc"..text) then
local UserNamey = Redis:get("transn"..msg.sender_id.user_id)
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد "
end
local fsvhhh = Redis:get("boballid"..text)
local bann = LuaTele.getUser(fsvhhh)
if bann.first_name then
newss = "["..bann.first_name.."](tg://user?id="..bann.id..")"
else
newss = " لا يوجد "
end
local fsvhh = Redis:get("boballban"..text)
UserNameyr = UserNamey / 10
UserNameyy = UserNamey - UserNameyr
local convert_mony = string.format("%.0f",UserNameyy)
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
deccde = ballancee - UserNamey
Redis:set("boob"..msg.sender_id.user_id , math.floor(deccde))
-----------
decdecb = Redis:get("boob"..fsvhhh) or 0
deccde2 = decdecb + UserNameyy
Redis:set("boob"..fsvhhh , math.floor(deccde2))

LuaTele.sendText(msg.chat_id,msg.id, "حوالة صادرة من بنك ريسكس \n\nالمرسل : "..news.."\nرقم الحساب : `"..cccc.."`\nنوع البطاقة : "..uuuu.."\nالمستلم : "..newss.."\nرقم الحساب : `"..text.."`\nنوع البطاقة : "..fsvhh.."\nخصمت 10% رسوم تحويل\nالمبلغ : "..convert_mony.." دولار 💰","md",true)
LuaTele.sendText(fsvhhh,0, "حوالة واردة من بنك ريسكس \n\nالمرسل : "..news.."\nرقم الحساب : `"..cccc.."`\nنوع البطاقة : "..uuuu.."\nالمبلغ : "..convert_mony.." دولار 💰","md",true)
Redis:del("trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del("transn" .. msg.sender_id.user_id)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ لا يوجده حساب بنكي كذا","md",true)
Redis:del("trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del("transn" .. msg.sender_id.user_id)
end
end


if text == "ترتيبي" then
if Redis:sismember("booob",msg.sender_id.user_id) then
local bank_users = Redis:smembers("booob")
my_num_in_bank = {}
for k,v in pairs(bank_users) do
local mony = Redis:get("boob"..v)
table.insert(my_num_in_bank, {math.floor(tonumber(mony)) , v})
end
table.sort(my_num_in_bank, function(a, b) return a[1] > b[1] end)
for k,v in pairs(my_num_in_bank) do
if tonumber(v[2]) == tonumber(msg.sender_id.user_id) then
local mony = v[1]
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ترتيبك ( "..k.." )","md",true)
end
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == "توب فلوس" or text == "توب الفلوس" then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local bank_users = Redis:smembers("booob")
if #bank_users == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يوجد حسابات في البنك","md",true)
end
top_mony = "توب اغنى 25 شخص في بنك ريسكس  :\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n"
mony_list = {}
for k,v in pairs(bank_users) do
local mony = Redis:get("boob"..v)
table.insert(mony_list, {tonumber(mony) , v})
end
table.sort(mony_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4 ",
"5 ",
"6 ",
"7 ",
"8 ",
"9 ",
"10 ",
"11 ",
"12 ",
"13 ",
"14 ",
"15 ",
"16 ",
"17 ",
"18 ",
"19 ",
"20 ",
"21 ",
"22 ",
"23 ",
"24 ",
"25 "
}
for k,v in pairs(mony_list) do
if num <= 25 then
local user_name = LuaTele.getUser(v[2]).first_name or Redis:get(v[2].."first_name:") or "لا يوجد اسم"
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
top_mony = top_mony..emo.." "..convert_mony.." || "..user_name.."\n"
end
end
top_monyy = top_mony.."\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n⌔ اي اسم مخالف او غش باللعب راح يتصفر وينحظر اللاعب"
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '‹ 𝖳𝗐𝖲 𝖱𝗌𝖤𝗑𝖲 ›', url="t.me/vvvznn"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,top_monyy,"html",false, false, false, false, reply_markup)
end

if text == "توب الحراميه" or text == "توب الحرامية" or text == "توب حراميه" or text == "توب الزرف" or text == "توب زرف" then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local ty_users = Redis:smembers("rrfffid")
if #ty_users == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يوجد احد","md",true)
end
ty_anubis = "توب 20 شخص زرفوا فلوس في بنك ريسكس  :\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n"
ty_list = {}
for k,v in pairs(ty_users) do
local mony = Redis:get("rrfff"..v)
table.insert(ty_list, {tonumber(mony) , v})
end
table.sort(ty_list, function(a, b) return a[1] > b[1] end)
num_ty = 1
emojii ={ 
"🥇" ,
"🥈",
"🥉",
"4 ",
"5 ",
"6 ",
"7 ",
"8 ",
"9 ",
"10 ",
"11 ",
"12 ",
"13 ",
"14 ",
"15 ",
"16 ",
"17 ",
"18 ",
"19 ",
"20)"
}
for k,v in pairs(ty_list) do
if num_ty <= 20 then
local user_name = LuaTele.getUser(v[2]).first_name or Redis:get(v[2].."first_name:") or "لا يوجد اسم"
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emoo = emojii[k]
num_ty = num_ty + 1
ty_anubis = ty_anubis..emoo.." "..convert_mony.." || "..user_name.."\n"
end
end
ty_anubiss = ty_anubis.."\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n⌔ اي اسم مخالف او غش باللعب راح يتصفر وينحظر اللاعب"
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '‹ 𝖳𝗐𝖲 𝖱𝗌𝖤𝗑𝖲 ›', url="t.me/vvvznn"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,ty_anubiss,"md",false, false, false, false, reply_markup)
end

if text == 'تسديد قرضه' and tonumber(msg.reply_to_message_id) ~= 0 then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ لا يمتلك حساب بالبنك*","md",true)  
return false
end
if Redis:sismember("booob",Remsg.sender_id.user_id) then
if Redis:get("kreed"..msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ سدد قرضك اول شي بعدين اعمل راعي النشامى ","md",true)
end
if not Redis:get("kreed"..Remsg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ ماعليه قرض","md",true)
else
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..Remsg.sender_id.user_id))
if tonumber(ballanceed) < tonumber(krses) then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسك لا تكفي*","md",true)
end
nshme = ballanceed - krses
Redis:set("boob"..msg.sender_id.user_id,math.floor(nshme))
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
Redis:del("kreed"..Remsg.sender_id.user_id)
Redis:del("kreednum"..Remsg.sender_id.user_id)
local convert_mony = string.format("%.0f",ballanceed)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ اشعار تسديد قرض عن "..news.."\n\nالقرض : "..krses.." دولار 💰\nتم اقتطاع المبلغ من فلوسك\nفلوسك الآن : "..convert_mony.." دولار 💰 ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديه حساب بنكي ","md",true)
end
end

if text == 'تسديد قرض' or text == 'تسديد القرض' or text == 'تسديد قرضي' and tonumber(msg.reply_to_message_id) == 0 then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("booob",msg.sender_id.user_id) then
if not Redis:get("kreed"..msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ ماعليك قرض ","md",true)
end
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if tonumber(ballanceed) < tonumber(krses) then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسك لا تكفي*","md",true)
end
tsded = ballanceed - krses
Redis:set("boob"..msg.sender_id.user_id,math.floor(tsded))
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
Redis:del("kreed"..msg.sender_id.user_id)
Redis:del("kreednum"..msg.sender_id.user_id)
local convert_mony = string.format("%.0f",ballanceed)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ اشعار تسديد قرض\n\nالقرض : "..krses.." دولار 💰\nتم اقتطاع المبلغ من فلوسك\nفلوسك الآن : "..convert_mony.." دولار 💰","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'القرض' or text == 'قرض' then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ سحبت قرض قبل بقيمة "..krses.." دولار 💰","md",true)
end
if Redis:sismember("booob",msg.sender_id.user_id) then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballanceed) < 100000 then
kredd = tonumber(ballanceed) + 900000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,900000)
Redis:set("kreed"..msg.sender_id.user_id,true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم وهو قرض بقيمة 900000 دولار 💰","md",true)
elseif tonumber(ballanceed) < 200000 then
kredd = tonumber(ballanceed) + 800000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,800000)
Redis:set("kreed"..msg.sender_id.user_id,true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم وهو قرض بقيمة 800000 دولار 💰","md",true)
elseif tonumber(ballanceed) < 300000 then
kredd = tonumber(ballanceed) + 700000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,700000)
Redis:set("kreed"..msg.sender_id.user_id,true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم وهو قرض بقيمة 700000 دولار 💰","md",true)
elseif tonumber(ballanceed) < 400000 then
kredd = tonumber(ballanceed) + 600000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,600000)
Redis:set("kreed"..msg.sender_id.user_id,true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم وهو قرض بقيمة 600000 دولار 💰","md",true)
elseif tonumber(ballanceed) < 500000 then
kredd = tonumber(ballanceed) + 500000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,500000)
Redis:set("kreed"..msg.sender_id.user_id,true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم وهو قرض بقيمة 500000 دولار 💰","md",true)
elseif tonumber(ballanceed) < 600000 then
kredd = tonumber(ballanceed) + 400000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,400000)
Redis:set("kreed"..msg.sender_id.user_id,true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم وهو قرض بقيمة 400000 دولار 💰","md",true)
elseif tonumber(ballanceed) < 700000 then
kredd = tonumber(ballanceed) + 300000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,300000)
Redis:set("kreed"..msg.sender_id.user_id,true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم وهو قرض بقيمة 300000 دولار 💰","md",true)
elseif tonumber(ballanceed) < 800000 then
kredd = tonumber(ballanceed) + 200000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,200000)
Redis:set("kreed"..msg.sender_id.user_id,true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم وهو قرض بقيمة 200000 دولار 💰","md",true)
elseif tonumber(ballanceed) < 900000 then
kredd = tonumber(ballanceed) + 100000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,100000)
Redis:set("kreed"..msg.sender_id.user_id,true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم وهو قرض بقيمة 100000 دولار 💰","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ فلوسك فوق المليون مايطلعلك قرض","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'بخشيش' or text == 'بقشيش' then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("booob",msg.sender_id.user_id) then
if Redis:ttl("iioo" .. msg.sender_id.user_id) >=1 then
local hours = Redis:ttl("iioo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ اخذت منذ قليل بخشيش استنى "..math.floor(hours).." دقيقة","md",true)
end

local jjjo = math.random(200,1000);
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
bakigcj = ballanceed + jjjo
Redis:set("boob"..msg.sender_id.user_id , bakigcj)
LuaTele.sendText(msg.chat_id,msg.id,"⌔ دلعتك وعطيتك "..jjjo.." دولار 💰","md",true)
Redis:setex("iioo" .. msg.sender_id.user_id,600, true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'زرف' and tonumber(msg.reply_to_message_id) == 0 then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`زرف` بالرد","md",true)
end

if text == 'زرف' or text == 'زرفو' or text == 'زرفه' and tonumber(msg.reply_to_message_id) ~= 0 then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("booob",msg.sender_id.user_id) then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ لا يمتلك حساب بالبنك*","md",true)  
return false
end
if Remsg.sender_id.user_id == msg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ بدك تزرف نفسك 🤡*","md",true)  
return false
end
if Redis:ttl("polic" .. msg.sender_id.user_id) >= 280 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ انتا بالسجن 🏤 استنى ( 5 دقائق )","md",true)
elseif Redis:ttl("polic" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ انتا بالسجن 🏤 استنى ( 4 دقائق )","md",true)
elseif Redis:ttl("polic" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ انتا بالسجن 🏤 استنى ( 3 دقائق )","md",true)
elseif Redis:ttl("polic" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ انتا بالسجن 🏤 استنى ( 2 دقيقة )","md",true)
elseif Redis:ttl("polic" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ انتا بالسجن 🏤 استنى ( 1 دقيقة )","md",true)
end
if Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 15 دقيقة )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 14 دقيقة )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 13 دقيقة )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 12 دقيقة )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 11 دقيقة )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("hrame" .. Remsg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ذا المسكين مزروف قبل شوي\n⌔ يمديك تزرفه بعد ( 1 دقيقة )","md",true)
end
if Redis:sismember("booob",Remsg.sender_id.user_id) then
ballanceed = Redis:get("boob"..Remsg.sender_id.user_id) or 0
if tonumber(ballanceed) < 199 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ لا يمكنك تزرفه فلوسه اقل من 200 دولار 💰","md",true)
end
local hrame = math.floor(math.random() * 200) + 1;
local hramee = math.floor(math.random() * 5) + 1;
if hramee == 1 or hramee == 2 or hramee == 3 or hramee == 4 then
local ballanceed = Redis:get("boob"..Remsg.sender_id.user_id) or 0
local ballancope = Redis:get("boob"..msg.sender_id.user_id) or 0
zrfne = ballanceed - hrame
zrfnee = ballancope + hrame
Redis:set("boob"..msg.sender_id.user_id , math.floor(zrfnee))
Redis:set("boob"..Remsg.sender_id.user_id , math.floor(zrfne))
Redis:setex("hrame" .. Remsg.sender_id.user_id,900, true)
local zoropeo = Redis:get("rrfff"..msg.sender_id.user_id) or 0
zoroprod = zoropeo + hrame
Redis:set("rrfff"..msg.sender_id.user_id,zoroprod)
Redis:sadd("rrfffid",msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ خذ يالحرامي زرفته "..hrame.." دولار 💰","md",true)
else
Redis:setex("polic" .. msg.sender_id.user_id,300, true)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ مسكتك الشرطة وانتا تزرف 🚔","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديه حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'راتب' or text == 'راتبي' then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("booob",msg.sender_id.user_id) then
if Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("iiioo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ راتبك بينزل بعد ( 1 دقيقة )","md",true)
end

local Textinggt = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52",}
local Descriptioont = Textinggt[math.random(#Textinggt)]
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد "
end
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if Descriptioont == "1" then
local ratpep = ballancee + 3000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3000 دولار 💰\nوظيفتك : كابتن كريم 🚙\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "2" then
local ratpep = ballancee + 3500
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3500 دولار 💰\nوظيفتك : شرطي 👮🏻‍♂️\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "3" then
local ratpep = ballancee + 3500
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3500 دولار 💰\nوظيفتك : بياع حبوب 🍻\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "4" then
local ratpep = ballancee + 3000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3000 دولار 💰\nوظيفتك : سواق تاكسي 🚕\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "5" then
local ratpep = ballancee + 5000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 5000 دولار 💰\nوظيفتك : قاضي 👨\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "6" then
local ratpep = ballancee + 2500
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 2500 دولار 💰\nوظيفتك : نوم 🛌\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "7" then
local ratpep = ballancee + 2700
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 2700 دولار 💰\nوظيفتك : مغني 🎤\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "8" then
local ratpep = ballancee + 2900
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 2900 دولار 💰\nوظيفتك : كوفيره 💆\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "9" then
local ratpep = ballancee + 2500
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 2500 دولار 💰\nوظيفتك : ربة منزل 🤷\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "10" then
local ratpep = ballancee + 2900
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 2900 دولار 💰\nوظيفتك : مربيه اطفال 💁\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "11" then
local ratpep = ballancee + 3700
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3700 دولار 💰\nوظيفتك : كهربائي 💡\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "12" then
local ratpep = ballancee + 3600
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3600 دولار 💰\nوظيفتك : نجار ⛏\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "13" then
local ratpep = ballancee + 2400
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 2400 دولار 💰\nوظيفتك : متذوق طعام 🍕\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "14" then
local ratpep = ballancee + 3000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3000 دولار 💰\nوظيفتك : فلاح 👨\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "15" then
local ratpep = ballancee + 5000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 5000 دولار 💰\nوظيفتك : كاشير بنده 🙋\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "16" then
local ratpep = ballancee + 6000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 6000 دولار 💰\nوظيفتك : ممرض 👨\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "17" then
local ratpep = ballancee + 3100
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3100 دولار 💰\nوظيفتك : مهرج 🤹\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "18" then
local ratpep = ballancee + 3300
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3300 دولار 💰\nوظيفتك : عامل توصيل 🚴\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "19" then
local ratpep = ballancee + 4800
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 4800 دولار 💰\nوظيفتك : عسكري 👮\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "20" then
local ratpep = ballancee + 6000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 6000 دولار 💰\nوظيفتك : مهندس 👨\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "21" then
local ratpep = ballancee + 8000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 8000 دولار 💰\nوظيفتك : وزير 👨\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "22" then
local ratpep = ballancee + 5500
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 5500 دولار 💰\nوظيفتك : محامي ⚖️\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "23" then
local ratpep = ballancee + 5500
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 5500 دولار 💰\nوظيفتك : تاجر 💰\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "24" then
local ratpep = ballancee + 7000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 7000 دولار 💰\nوظيفتك : دكتور 👨\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "25" then
local ratpep = ballancee + 2600
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 2600 دولار 💰\nوظيفتك : حفار قبور ⚓\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "26" then
local ratpep = ballancee + 3000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3000 دولار 💰\nوظيفتك : حلاق ✂\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "27" then
local ratpep = ballancee + 5000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 5000 دولار 💰\nوظيفتك : إمام مسجد 📿\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "28" then
local ratpep = ballancee + 3000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3000 دولار 💰\nوظيفتك : صياد 🎣\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "29" then
local ratpep = ballancee + 2300
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 2300 دولار 💰\nوظيفتك : خياط 🧵\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "30" then
local ratpep = ballancee + 7100
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 7100 دولار 💰\nوظيفتك : طيار 🛩\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "31" then
local ratpep = ballancee + 5300
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 5300 دولار 💰\nوظيفتك : مودل 🕴\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "32" then
local ratpep = ballancee + 10000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 10000 دولار 💰\nوظيفتك : ملك 👑\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "33" then
local ratpep = ballancee + 2700
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 2700 دولار 💰\nوظيفتك : سباك 🔧\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "34" then
local ratpep = ballancee + 3900
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3900 دولار 💰\nوظيفتك : موزع 🗺\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "35" then
local ratpep = ballancee + 4100
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 4100 دولار 💰\nوظيفتك : سكيورتي 👮\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "36" then
local ratpep = ballancee + 3500
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3500 دولار 💰\nوظيفتك : معلم شاورما 🌯\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "37" then
local ratpep = ballancee + 6700
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 6700 دولار 💰\nوظيفتك : دكتور ولاده 👨\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "38" then
local ratpep = ballancee + 6600
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 6600 دولار 💰\nوظيفتك : مذيع 🗣\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "39" then
local ratpep = ballancee + 3400
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3400 دولار 💰\nوظيفتك : عامل مساج 💆\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "40" then
local ratpep = ballancee + 6300
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 6300 دولار 💰\nوظيفتك : ممثل 🤵\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "41" then
local ratpep = ballancee + 3000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3000 دولار 💰\nوظيفتك : جزار 🥩\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "42" then
local ratpep = ballancee + 7000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 7000 دولار 💰\nوظيفتك : مدير بنك 💳\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "43" then
local ratpep = ballancee + 6000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 6000 دولار 💰\nوظيفتك : مبرمج 👨\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "44" then
local ratpep = ballancee + 5000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 5000 دولار 💰\nوظيفتك : رقاصه 💃\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "45" then
local ratpep = ballancee + 4900
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 4900 دولار 💰\nوظيفتك : 👩🏼‍💻 صحفي\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "46" then
local ratpep = ballancee + 5300
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 5300 دولار 💰\nوظيفتك : 🥷 حرامي\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "47" then
local ratpep = ballancee + 6000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 6000 دولار 💰\nوظيفتك : 🔮 ساحر\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "48" then
local ratpep = ballancee + 6500
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 6500 دولار 💰\nوظيفتك : ⚽ لاعب️\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "49" then
local ratpep = ballancee + 4000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 4000 دولار 💰\nوظيفتك : 🖼 مصور\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "50" then
local ratpep = ballancee + 3000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3000 دولار 💰\nوظيفتك : ☎️ عامل مقسم\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "51" then
local ratpep = ballancee + 3200
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 3200 دولار 💰\nوظيفتك : 📖 كاتب\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "52" then
local ratpep = ballancee + 4000
Redis:set("boob"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 4000 دولار 💰\nوظيفتك : 🧪 مخبري\nنوع العملية : اضافة راتب\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("iiioo" .. msg.sender_id.user_id,600, true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'هجوم' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`هجوم` المبلغ ( بالرد )","md",true)
end
if text and text:match("^هجوم (%d+)$") and msg.reply_to_message_id == 0 then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`هجوم` المبلغ ( بالرد )","md",true)
end

if text and text:match('^هجوم (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^هجوم (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("booob",msg.sender_id.user_id) then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ لا يمتلك حساب بالبنك*","md",true)  
return false
end
if Remsg.sender_id.user_id == msg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ تهاجم نفسك 🤡*","md",true)  
return false
end
if Redis:ttl("attack" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 10 دقائق )","md",true)
elseif Redis:ttl("attack" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 9 دقائق )","md",true)
elseif Redis:ttl("attack" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 8 دقائق )","md",true)
elseif Redis:ttl("attack" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 7 دقائق )","md",true)
elseif Redis:ttl("attack" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 6 دقائق )","md",true)
elseif Redis:ttl("attack" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 5 دقائق )","md",true)
elseif Redis:ttl("attack" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 4 دقائق )","md",true)
elseif Redis:ttl("attack" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 3 دقائق )","md",true)
elseif Redis:ttl("attack" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 2 دقيقة )","md",true)
elseif Redis:ttl("attack" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ خسرت بأخر معركة استنى ( 1 دقيقة )","md",true)
end
if Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1780 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 30 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1740 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 29 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1680 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 28 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1620 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 27 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1560 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 26 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1500 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 25 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1440 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 24 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1380 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 23 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1320 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 22 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1260 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 21 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1200 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 20 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1140 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 19 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1080 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 18 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 1020 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 17 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 960 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 16 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 900 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 15 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 840 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 14 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 780 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 13 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 720 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 12 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 660 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 11 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 600 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("defen" .. Remsg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ الخصم خسر بأخر معركة\n⌔ يمديك تهاجمه بعد ( 1 دقيقة )","md",true)
end
if Redis:sismember("booob",Remsg.sender_id.user_id) then
ballancope = Redis:get("boob"..msg.sender_id.user_id) or 0
ballanceed = Redis:get("boob"..Remsg.sender_id.user_id) or 0
if tonumber(ballancope) < 100000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ لا يمكنك تهجم فلوسك اقل من 100000 دولار 💰","md",true)
end
if tonumber(ballanceed) < 100000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ لا يمكنك تهجم عليه فلوسه اقل من 100000 دولار 💰","md",true)
end
if tonumber(coniss) < 9999 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ الحد الادنى المسموح هو 10000 دولار 💰","md",true)
end
if tonumber(ballancope) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسك لا تكفي*","md",true)
end
if tonumber(ballanceed) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسه لا تكفي*","md",true)
end
local Textinggt = {"1", "2", "3", "4", "5", "6", "7", "8",}
local Descriptioont = Textinggt[math.random(#Textinggt)]
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد "
end
local bann = LuaTele.getUser(Remsg.sender_id.user_id)
if bann.first_name then
neewss = "["..bann.first_name.."](tg://user?id="..bann.id..")"
else
neewss = " لا يوجد "
end
if Descriptioont == "1" or Descriptioont == "3" then
local ballanceed = Redis:get("boob"..Remsg.sender_id.user_id) or 0
local ballancope = Redis:get("boob"..msg.sender_id.user_id) or 0
zrfne = ballancope - coniss
zrfnee = ballanceed + coniss
Redis:set("boob"..msg.sender_id.user_id , math.floor(zrfne))
Redis:set("boob"..Remsg.sender_id.user_id , math.floor(zrfnee))
Redis:setex("attack" .. msg.sender_id.user_id,600, true)
local convert_mony = string.format("%.0f",coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ لقد خسرت في المعركة "..neews.." 🛡\nالفائز : "..neewss.."\nالخاسر : "..neews.."\nالجائزة : "..convert_mony.." دولار 💰","md",true)
elseif Descriptioont == "2" or Descriptioont == "4" or Descriptioont == "5" or  Descriptioont == "6" or Descriptioont == "8" then
local ballanceed = Redis:get("boob"..Remsg.sender_id.user_id) or 0
local ballancope = Redis:get("boob"..msg.sender_id.user_id) or 0
begaatt = Redis:get("numattack"..msg.sender_id.user_id) or 1000
numattackk = tonumber(begaatt) - 1
if numattackk == 0 then
numattackk = 1
end
attack = coniss / numattackk
zrfne = ballancope + math.floor(attack)
zrfnee = ballanceed - math.floor(attack)
Redis:set("boob"..msg.sender_id.user_id , math.floor(zrfne))
Redis:set("boob"..Remsg.sender_id.user_id , math.floor(zrfnee))
Redis:setex("defen" .. Remsg.sender_id.user_id,1800, true)
Redis:set("numattack"..msg.sender_id.user_id , math.floor(numattackk))
local convert_mony = string.format("%.0f",math.floor(attack))
LuaTele.sendText(msg.chat_id,msg.id, "⌔ لقد فزت في المعركة\nودمرت قلعة "..neewss.." 🏰\nالفائز : "..neews.."\nالخاسر : "..neewss.."\nالجائزة : "..convert_mony.." دولار 💰\nنسبة قوة المهاجم اصبحت "..numattackk.." 🩸","md",true)
elseif Descriptioont == "7" then
local ballanceed = Redis:get("boob"..Remsg.sender_id.user_id) or 0
local ballancope = Redis:get("boob"..msg.sender_id.user_id) or 0
halfzrf = coniss / 2
zrfne = ballancope - halfzrf
zrfnee = ballanceed + halfzrf
Redis:set("boob"..msg.sender_id.user_id , math.floor(zrfne))
Redis:set("boob"..Remsg.sender_id.user_id , math.floor(zrfnee))
Redis:setex("attack" .. msg.sender_id.user_id,600, true)
local convert_mony = string.format("%.0f",math.floor(halfzrf))
LuaTele.sendText(msg.chat_id,msg.id, "⌔ لقد خسرت في المعركة "..neews.." .\nولكن استطعت اعادة نصف الموارد\nالفائز : "..neewss.."\nالخاسر : "..neews.."\nالجائزة : "..convert_mony.." دولار 💰","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديه حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'مسح لعبه الزواج' then
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
local zwag_users = Redis:smembers("roogg1")
for k,v in pairs(zwag_users) do
Redis:del("roog1"..v)
Redis:del("rooga1"..v)
Redis:del("rahr1"..v)
Redis:del("rahrr1"..v)
Redis:del("roogte1"..v)
end
local zwaga_users = Redis:smembers("roogga1")
for k,v in pairs(zwaga_users) do
Redis:del("roog1"..v)
Redis:del("rooga1"..v)
Redis:del("rahr1"..v)
Redis:del("rahrr1"..v)
Redis:del("roogte1"..v)
end
Redis:del("roogga1")
Redis:del("roogg1")
LuaTele.sendText(msg.chat_id,msg.id, "⌔ مسحت لعبه الزواج","md",true)
end
end
if text == 'زواج' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`زواج` المهر","md",true)
end
if text and text:match("^زواج (%d+)$") and msg.reply_to_message_id == 0 then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`زواج` المهر ( بالرد )","md",true)
end
if text and text:match("^زواج (.*)$") and msg.reply_to_message_id ~= 0 then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local UserName = text:match('^زواج (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ زوجتك نفسي 😂❤️*","md",true)  
return false
end
if tonumber(coniss) < 10000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ الحد الادنى المسموح به هو 10000 دولار ","md",true)
end
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 10000 then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسك لا تكفي*","md",true)
end
if tonumber(coniss) > tonumber(ballancee) then
return LuaTele.sendText(msg.chat_id,msg.id, "عذرا فلوسك لا تكفي","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ ليست للزواج*","md",true)  
return false
end
if Redis:get("roog1"..msg.sender_id.user_id) then
LuaTele.sendText(msg.chat_id,msg.id, "⌔ انت متزوج سابقا !","md",true)
return false
end
if Redis:get("rooga1"..msg.sender_id.user_id) then
LuaTele.sendText(msg.chat_id,msg.id, "⌔ انت متزوج سابقا !","md",true)
return false
end
if Redis:get("roog1"..Remsg.sender_id.user_id) then
LuaTele.sendText(msg.chat_id,msg.id, "⌔ هذا الشخص متزوج|متزوجه","md",true)
return false
end
if Redis:get("rooga1"..Remsg.sender_id.user_id) then
LuaTele.sendText(msg.chat_id,msg.id, "⌔ هذا الشخص متزوج|متزوجه","md",true)
return false
end
local bandd = LuaTele.getUser(msg.sender_id.user_id)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end
if Redis:sismember("booob",msg.sender_id.user_id) then
local hadddd = tonumber(coniss)
ballanceekk = tonumber(coniss) / 100 * 15
ballanceekkk = tonumber(coniss) - ballanceekk
local convert_mony = string.format("%.0f",ballanceekkk)
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
ballanceea = Redis:get("boob"..Remsg.sender_id.user_id) or 0
zogtea = ballanceea + ballanceekkk
zeugh = ballancee - tonumber(coniss)
Redis:set("boob"..msg.sender_id.user_id , math.floor(zeugh))
Redis:set("boob"..Remsg.sender_id.user_id , math.floor(zogtea))
Redis:sadd("roogg1",msg.sender_id.user_id)
Redis:sadd("roogga1",Remsg.sender_id.user_id)
Redis:set("roog1"..msg.sender_id.user_id,msg.sender_id.user_id)
Redis:set("rooga1"..msg.sender_id.user_id,Remsg.sender_id.user_id)
Redis:set("roogte1"..Remsg.sender_id.user_id,Remsg.sender_id.user_id)
Redis:set("rahr1"..msg.sender_id.user_id,tonumber(coniss))
Redis:set("rahr1"..Remsg.sender_id.user_id,tonumber(coniss))

Redis:set("roog1"..Remsg.sender_id.user_id,msg.sender_id.user_id)
Redis:set("rahrr1"..msg.sender_id.user_id,math.floor(ballanceekkk))

Redis:set("rooga1"..Remsg.sender_id.user_id,Remsg.sender_id.user_id)
Redis:set("rahrr1"..Remsg.sender_id.user_id,math.floor(ballanceekkk))

LuaTele.sendText(msg.chat_id,msg.id, "⌔ زواجا مبارك\nالزوج "..neews.."\nالزوجة "..newws.." \nالمهر : "..convert_mony.." دولار بعد الضريبة 15%\nعشان تشوفون وثيقة زواجكم اكتبوا : *زواجي*","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == "زواجات غش" then
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
  local zwag_users = Redis:smembers("roogg1")
  if #zwag_users == 0 then
  return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يوجد زواجات حاليا","md",true)
  end
  top_zwag = "توب 20 اغلى زواجات :\n\n"
  zwag_list = {}
  for k,v in pairs(zwag_users) do
  local mahr = Redis:get("rahr1"..v)
  local zwga = Redis:get("rooga1"..v)
  table.insert(zwag_list, {tonumber(mahr) , v , zwga})
  end
  table.sort(zwag_list, function(a, b) return a[1] > b[1] end)
  znum = 1
  zwag_emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4 ",
"5 ",
"6 ",
"7 ",
"8 ",
"9 ",
"10 ",
"11 ",
"12 ",
"13 ",
"14 ",
"15 ",
"16 ",
"17 ",
"18 ",
"19 ",
"20 "
  }
  for k,v in pairs(zwag_list) do
  if znum <= 20 then
  local zwg_name = LuaTele.getUser(v[2]).first_name or Redis:get(v[2].."first_name:") or "لا يوجد اسم"
  local zwg_tag = '['..zwg_name..'](tg://user?id='..v[2]..')'
  local zwga_name = LuaTele.getUser(v[3]).first_name or Redis:get(v[3].."first_name:") or "لا يوجد اسم"
  local zwga_tag = '['..zwg_name..'](tg://user?id='..v[3]..')'
  local mahr = v[1]
  local convert_mony = string.format("%.0f",mahr)
  local emo = zwag_emoji[k]
  znum = znum + 1
  top_zwag = top_zwag..emo.." "..convert_mony.." || "..zwg_tag.." 👫 "..zwga_tag.."\n"
  end
  end
  local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '‹ 𝖳𝗐𝖲 𝖱𝗌𝖤𝗑𝖲 ›', url="t.me/vvvznn"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,top_zwag,"md",false, false, false, false, reply_markup)
  end
  end

if text == "توب زواج" or text == "توب متزوجات" or text == "توب زوجات" or text == "توب زواجات" or text == "زواجات" or text == "الزواجات" then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
  local zwag_users = Redis:smembers("roogg1")
  if #zwag_users == 0 then
  return LuaTele.sendText(msg.chat_id,msg.id,"⌔ لا يوجد زواجات حاليا","md",true)
  end
  top_zwag = "توب 20 اغلى زواجات :\n\n"
  zwag_list = {}
  for k,v in pairs(zwag_users) do
  local mahr = Redis:get("rahr1"..v)
  local zwga = Redis:get("rooga1"..v)
  table.insert(zwag_list, {tonumber(mahr) , v , zwga})
  end
  table.sort(zwag_list, function(a, b) return a[1] > b[1] end)
  znum = 1
  zwag_emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4 ",
"5 ",
"6 ",
"7 ",
"8 ",
"9 ",
"10 ",
"11 ",
"12 ",
"13 ",
"14 ",
"15 ",
"16 ",
"17 ",
"18 ",
"19 ",
"20 "
  }
  for k,v in pairs(zwag_list) do
  if znum <= 20 then
  local zwg_name = LuaTele.getUser(v[2]).first_name or Redis:get(v[2].."first_name:") or "لا يوجد اسم"
  local zwga_name = LuaTele.getUser(v[3]).first_name or Redis:get(v[3].."first_name:") or "لا يوجد اسم"
  local mahr = v[1]
  local convert_mony = string.format("%.0f",mahr)
  local emo = zwag_emoji[k]
  znum = znum + 1
  top_zwag = top_zwag..emo.." "..convert_mony.." || "..zwg_name.." 👫 "..zwga_name.."\n"
  end
  end
  local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '‹ 𝖳𝗐𝖲 𝖱𝗌𝖤𝗑𝖲 ›', url="t.me/vvvznn"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,top_zwag,"md",false, false, false, false, reply_markup)
  end

if text == 'زواجي' then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("roogg1",msg.sender_id.user_id) or Redis:sismember("roogga1",msg.sender_id.user_id) then
local zoog = Redis:get("roog1"..msg.sender_id.user_id)
local zooga = Redis:get("rooga1"..msg.sender_id.user_id)
local mahr = Redis:get("rahr1"..msg.sender_id.user_id)
local convert_mony = string.format("%.0f",mahr)
local bandd = LuaTele.getUser(zoog)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = LuaTele.getUser(zooga)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end
LuaTele.sendText(msg.chat_id,msg.id, "وثيقة الزواج الخاصه بك :\nالزوج "..neews.."\nالزوجة "..newws.."\nالمهر : "..convert_mony.." دولار 💰","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "*⌔ انت اعزب*","md",true)
end
end

if text == 'زوجها' or text == "زوجته" or text == "جوزها" or text == "زوجتو" or text == "زواجه" and msg.reply_to_message_id ~= 0 then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ لا تكشف نفسك وتخسر فلوس عالفاضي\n اكتب `زواجي`*","md",true)  
return false
end
if Redis:sismember("roogg1",Remsg.sender_id.user_id) or Redis:sismember("roogga1",Remsg.sender_id.user_id) then
if Redis:sismember("booob",msg.sender_id.user_id) then
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 100 then
return LuaTele.sendText(msg.chat_id,msg.id, "*⌔ عذرا فلوسك لا تكفي*","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⌔ لا يوجد*","md",true)  
return false
end
local zoog = Redis:get("roog1"..Remsg.sender_id.user_id)
local zooga = Redis:get("rooga1"..Remsg.sender_id.user_id)
local mahr = Redis:get("rahr1"..Remsg.sender_id.user_id)
local bandd = LuaTele.getUser(zoog)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = LuaTele.getUser(zooga)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end
local otheka = ballancee - 100
local convert_mony = string.format("%.0f",mahr)
Redis:set("boob"..msg.sender_id.user_id , math.floor(otheka))
LuaTele.sendText(msg.chat_id,msg.id, "وثيقة الزواج :\nالزوج "..neews.."\nالزوجة "..newws.."\nالمهر : "..convert_mony.." دولار 💰","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ مسكين اعزب مو متزوج","md",true)
end
end

if text == 'طلاق' then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("roogg1",msg.sender_id.user_id) or Redis:sismember("roogga1",msg.sender_id.user_id) then
local zoog = Redis:get("roog1"..msg.sender_id.user_id)
local zooga = tonumber(Redis:get("rooga1"..msg.sender_id.user_id))
if tonumber(zoog) == msg.sender_id.user_id then
local bandd = LuaTele.getUser(zoog)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = LuaTele.getUser(zooga)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end

Redis:srem("roogg1", msg.sender_id.user_id)
Redis:srem("roogga1", msg.sender_id.user_id)
Redis:del("roog1"..msg.sender_id.user_id)
Redis:del("rooga1"..msg.sender_id.user_id)
Redis:del("rahr1"..msg.sender_id.user_id)
Redis:del("rahrr1"..msg.sender_id.user_id)

Redis:srem("roogg1", zooga)
Redis:srem("roogga1", zooga)
Redis:del("roog1"..zooga)
Redis:del("rooga1"..zooga)
Redis:del("rahr1"..zooga)
Redis:del("rahrr1"..zooga)
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم طلقتك من زوجتك "..newws.."","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ الطلاق للزوج فقط","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ انت اعزب","md",true)
end
end

if text == 'خلع' then
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("roogg1",msg.sender_id.user_id) or Redis:sismember("roogga1",msg.sender_id.user_id) then
local zoog = Redis:get("roog1"..msg.sender_id.user_id)
local zooga = Redis:get("rooga1"..msg.sender_id.user_id)
if tonumber(zooga) == msg.sender_id.user_id then
local mahrr = Redis:get("rahrr1"..msg.sender_id.user_id)
local bandd = LuaTele.getUser(zoog)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = LuaTele.getUser(zooga)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end

ballancee = Redis:get("boob"..zoog) or 0
kalea = ballancee + mahrr
Redis:set("boob"..zoog , kalea)
local convert_mony = string.format("%.0f",mahrr)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ خلعت زوجك "..neews.."\n⌔ ورجعت له المهر ( "..convert_mony.." دولار 💰 )","md",true)

Redis:srem("roogg1", zoog)
Redis:srem("roogga1", zoog)
Redis:del("roog1"..zoog)
Redis:del("rooga1"..zoog)
Redis:del("rahr1"..zoog)
Redis:del("rahrr1"..zoog)

Redis:srem("roogg1", msg.sender_id.user_id)
Redis:srem("roogga1", msg.sender_id.user_id)
Redis:del("roog1"..msg.sender_id.user_id)
Redis:del("rooga1"..msg.sender_id.user_id)
Redis:del("rahr1"..msg.sender_id.user_id)
Redis:del("rahrr1"..msg.sender_id.user_id)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ الخلع للزوجات فقط","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ انت اعزب","md",true)
end
end
-------------------------------
if text == 'كنز' then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⌔ عليك قرض بقيمة "..krses.." دولار 💰 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = LuaTele.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("booob",msg.sender_id.user_id) then
if Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1780 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 30 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1720 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 29 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1660 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 28 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1600 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 27 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 26 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 25 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 24 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 23 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 22 دقيقة )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 21 دقيقة )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 20 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 19 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1060 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 18 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 1000 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 17 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 940 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 16 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 15 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 14 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 13 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 12 دقيقة )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 11 دقيقة )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 10 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 9 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 8 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 7 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 6 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 5 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 4 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 3 دقائق )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl("yiioooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فرصة ايجاد كنز آخر بعد ( 1 دقيقة )","md",true)
end
local Textinggt = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22","23",}
local Descriptioont = Textinggt[math.random(#Textinggt)]
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد "
end
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if Descriptioont == "1" then
local knez = ballancee + 40000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : قطعة اثرية 🗳\nسعره : 40000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "2" then
local knez = ballancee + 35000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : حجر الماسي 💎\nسعره : 35000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "3" then
local knez = ballancee + 10000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : لباس قديم 🥻\nسعره : 10000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "4" then
local knez = ballancee + 23000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : عصى سحرية 🪄\nسعره : 23000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "5" then
local knez = ballancee + 8000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جوال نوكيا 📱\nسعره : 8000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "6" then
local knez = ballancee + 27000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : صدف 🏝\nسعره : 27000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "7" then
local knez = ballancee + 18000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : ابريق صدئ ⚗️\nسعره : 18000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "8" then
local knez = ballancee + 100000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : قناع فرعوني 🗿\nسعره : 100000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "9" then
local knez = ballancee + 50000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جرة ذهب 💰\nسعره : 50000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "10" then
local knez = ballancee + 36000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : مصباح فضي 🔦\nسعره : 36000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "11" then
local knez = ballancee + 29000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : لوحة نحاسية 🌇\nسعره : 29000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "12" then
local knez = ballancee + 1000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جوارب قديمة 🧦\nسعره : 1000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "13" then
local knez = ballancee + 16000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : اناء فخاري ⚱️\nسعره : 16000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "14" then
local knez = ballancee + 12000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : خوذة محارب 🪖\nسعره : 12000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "15" then
local knez = ballancee + 19000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : سيف جدي مرزوق 🗡\nسعره : 19000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "16" then
local knez = ballancee + 14000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : مكنسة جدتي رقية 🧹\nسعره : 14000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "17" then
local knez = ballancee + 26000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : فأس ارطغرل 🪓\nسعره : 26000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "18" then
local knez = ballancee + 22000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : بندقية 🔫\nسعره : 22000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "19" then
local knez = ballancee + 11000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : كبريت ناري 🪔\nسعره : 11000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "20" then
local knez = ballancee + 33000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : فرو ثعلب 🦊\nسعره : 33000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "21" then
local knez = ballancee + 40000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جلد تمساح 🐊\nسعره : 40000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "22" then
local knez = ballancee + 17000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : باقة ورود 💐\nسعره : 17000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "23" then
local Textinggtt = {"1", "2",}
local Descriptioontt = Textinggtt[math.random(#Textinggtt)]
if Descriptioontt == "1" then
local knez = ballancee + 17000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : باقة ورود 💐\nسعره : 17000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioontt == "2" then
local Textinggttt = {"1", "2",}
local Descriptioonttt = Textinggttt[math.random(#Textinggttt)]
if Descriptioonttt == "1" then
local knez = ballancee + 40000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جلد تمساح 🐊\nسعره : 40000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioonttt == "2" then
local knez = ballancee + 10000000
Redis:set("boob"..msg.sender_id.user_id , knez)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : حقيبة محاسب البنك 💼\nسعره : 10000000 دولار 💰\nرصيدك الآن : "..convert_mony.." دولار 💰","md",true)
Redis:setex("yiioooo" .. msg.sender_id.user_id,1800, true)
end
end
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ارسل ↫ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^حظر حساب (.*)$') then
local UserName = text:match('^حظر حساب (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
Redis:set("bandid"..coniss,coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم حظر الحساب "..coniss.." من لعبة البنك","md",true)
end
end

if text and text:match('^الغاء حظر حساب (.*)$') then
local UserName = text:match('^الغاء حظر حساب (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
Redis:del("bandid"..coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ تم الغاء حظر الحساب "..coniss.." من لعبة البنك","md",true)
end
end

if text and text:match('^انشاء كوبون (.*)$') then
local UserName = text:match('^انشاء كوبون (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
numcobo = math.random(1000000000000,9999999999999);
Redis:set("cobonum"..numcobo,numcobo)
Redis:set("cobon"..numcobo,coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ وصل كوبون \n\nالمبلغ : "..coniss.." دولار 💰\nرقم الكوبون : `"..numcobo.."`\n\n⌔ طريقة استخدام الكوبون :\nتكتب ( كوبون + رقمه )\nمثال : كوبون 4593875","md",true)
end
end

if text == "كوبون" or text == "الكوبون" then
LuaTele.sendText(msg.chat_id,msg.id, "⌔ طريقة استخدام الكوبون :\nتكتب ( كوبون + رقمه )\nمثال : كوبون 4593875\n\n- ملاحظة : الكوبون يستخدم لمرة واحدة ولشخص واحد","md",true)
end

if text and text:match('^كوبون (.*)$') then
local UserName = text:match('^كوبون (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if Redis:sismember("booob",msg.sender_id.user_id) then
cobnum = Redis:get("cobonum"..coniss)
if coniss == tonumber(cobnum) then
cobblc = Redis:get("cobon"..coniss)
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
cobonplus = ballancee + cobblc
Redis:set("boob"..msg.sender_id.user_id , cobonplus)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
Redis:del("cobon"..coniss)
Redis:del("cobonum"..coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⌔ وصل كوبون \n\nالمبلغ : "..cobblc.." دولار 💰\nرقم الكوبون : `"..coniss.."`\nفلوسك الآن : "..convert_mony.." دولار 💰","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ لا يوجد كوبون بهذا الرقم `"..coniss.."`.","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⌔ ليس لديك حساب بنكي ","md",true)
end
end

-----------------------> By Java
if text and Redis:get(KOIA..msg.chat_id..msg.sender_id.user_id.."txtrtb") then
    local balance = Redis:get("boob"..msg.sender_id.user_id)
    if text == 'مميز' and tonumber(balance)  >= 25000 then
    Redis:decrby("boob"..msg.sender_id.user_id , 25000)
    Redis:sadd(KOIA.."Special:Group"..msg_chat_id,msg.sender_id.user_id) 
    Redis:del(KOIA..msg.chat_id..msg.sender_id.user_id.."txtrtb") 
    return LuaTele.sendText(msg.chat_id,msg.id,"⌔ تم رفعك مميز بنجاح وخصم 25,000 دولار من فلوسك")
    elseif text == "ادمن" and tonumber(balance)  >= 30000 then
    Redis:decrby("boob"..msg.sender_id.user_id , 30000)
    Redis:sadd(KOIA.."Admin:Group"..msg_chat_id,msg.sender_id.user_id) 
    Redis:del(KOIA..msg.chat_id..msg.sender_id.user_id.."txtrtb") 
    return LuaTele.sendText(msg.chat_id,msg.id,"⌔ تم رفعك ادمن بنجاح وخصم 30,000 دولار من فلوسك")
    elseif text == "مدير" and tonumber(balance)  >= 35000 then
    Redis:decrby("boob"..msg.sender_id.user_id , 35000)
    Redis:sadd(KOIA.."Manger:Group"..msg_chat_id,msg.sender_id.user_id) 
    Redis:del(KOIA..msg.chat_id..msg.sender_id.user_id.."txtrtb") 
    return LuaTele.sendText(msg.chat_id,msg.id,"⌔ تم رفعك مدير بنجاح وخصم 35,000 دولار من فلوسك")
    elseif text == "منشئ" and tonumber(balance)  >= 40000 then 
    Redis:decrby("boob"..msg.sender_id.user_id , 40000)
    Redis:sadd(KOIA.."Creator:Group"..msg_chat_id,msg.sender_id.user_id) 
    Redis:del(KOIA..msg.chat_id..msg.sender_id.user_id.."txtrtb") 
    return LuaTele.sendText(msg.chat_id,msg.id,"⌔ تم رفعك منشئ بنجاح وخصم 40,000 دولار من فلوسك")
    end
    end
    if text == "متجر الرتب" or text == "شراء رتبه" then
    if not Redis:sismember("booob",msg.sender_id.user_id) then
    return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ليس لديك حساب بنكي \n⌔ ارسل انشاء حساب بنكي","md")
    end
    local balance = Redis:get("boob"..msg.sender_id.user_id)
    if tonumber(balance) == tonumber(0) then
    return LuaTele.sendText(msg.chat_id,msg.id,"⌔ ليس لديك اي فلوس تشتري بيها")
    end
    if tonumber(balance) < 25000 then
    return LuaTele.sendText(msg.chat_id,msg.id,"⌔ فلوسك لا تكفي لشراء اي رتبه")
    end
    if tonumber(balance)  >= 25000 and tonumber(balance) < 30000 then
    Txtrtb = "⌔ الرتب اللتي يمكنك شرائها هي \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n⌔ `مميز` (25000 دولار) \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n ⌔ اضغط علي الرتبه ليتم نسخها"
    elseif tonumber(balance) >= 30000 and tonumber(balance) < 35000 then
    Txtrtb = "⌔ الرتب اللتي يمكنك شرائها هي \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n⌔ `مميز` (25000 دولار)\n⌔ `ادمن` (30000 دولار) \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n⌔ اضغط علي الرتبه ليتم نسخها"
    elseif tonumber(balance) >= 35000 and tonumber(balance) < 40000 then
    Txtrtb = "⌔ الرتب اللتي يمكنك شرائها هي \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n⌔ `مميز` (25000 دولار)\n⌔ `ادمن` (30000 دولار) \n⌔ `مدير` (35000 دولار)\n\n⌔ اضغط علي الرتبه ليتم نسخها"
    elseif tonumber(balance) >= 40000 then
    Txtrtb = "⌔ الرتب اللتي يمكنك شرائها هي \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n⌔ `مميز` (25000 دولار)\n⌔ `ادمن` (30000 دولار) \n⌔ `مدير` (35000 دولار)\n⌔ `منشئ` (40000 دولار)\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n⌔ اضغط علي الرتبه ليتم نسخها"
    end
    Redis:setex(KOIA..msg.chat_id..msg.sender_id.user_id.."txtrtb",180,true)
    return LuaTele.sendText(msg.chat_id,msg.id,Txtrtb,"md")
    end


end
return {
KOIA = Bank
}
