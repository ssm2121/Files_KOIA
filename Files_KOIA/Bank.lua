local function Reply(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if not Devmuh:get(KOIA..'muh:Lock:Reply'..msg.chat_id_) then
if text == 'بنك' or text == 'البنك' then
LuaTele.sendText(msg.chat_id,msg.id,[[
☆ اوامر البنك

⌯ انشاء حساب بنكي  ↢ تسوي حساب وتقدر تحول فلوس مع مزايا ثانيه

⌯ مسح حساب بنكي  ↢ تلغي حسابك البنكي

⌯ تحويل ↢ تطلب رقم حساب الشخص وتحول له فلوس

⌯ حسابي  ↢ يطلع لك رقم حسابك عشان تعطيه للشخص اللي بيحول لك

⌯ فلوسي ↢ يعلمك كم فلوسك

⌯ راتب ↢ يعطيك راتب كل ١٠ دقائق

⌯ بخشيش ↢ يعطيك بخشيش كل ١٠ دقايق

⌯ زرف ↢ تزرف فلوس اشخاص كل ١٠ دقايق

⌯ استثمار ↢ تستثمر بالمبلغ اللي تبيه مع نسبة ربح مضمونه من ١٪؜ الى ١٥٪؜

⌯ حظ ↢ تلعبها بأي مبلغ ياتدبله ياتخسره انت وحظك

⌯ مضاربه ↢ تضارب بأي مبلغ تبيه والنسبة من ٩٠٪؜ الى -٩٠٪؜ انت وحظك

⌯ هجوم ↢ تهجم عالخصم مع زيادة نسبة كل هجوم

⌯ كنز ↢ يعطيك كنز بسعر مختلف انتا وحظك

⌯ مراهنه ↢ تحط مبلغ وتراهن عليه

⌯ توب الفلوس ↢ يطلع توب اكثر ناس معهم فلوس بكل القروبات

⌯ توب الحراميه ↢ يطلع لك اكثر ناس زرفوا

⌯ زواج  ↢ تكتبه بالرد على رسالة شخص مع المهر ويزوجك

⌯ زواجي  ↢ يطلع وثيقة زواجك اذا متزوج

⌯ طلاق ↢ يطلقك اذا متزوج

⌯ خلع  ↢ يخلع زوجك ويرجع له المهر

⌯ زواجات ↢ يطلع اغلى ٣٠ زواجات

⌯ ترتيبي ↢ يطلع ترتيبك باللعبة

⌯ المعرض ↢ يمديك تشتري سيارات وعقارات وكثير اشياء

⌯ ممتلكاتي ↢ يطلع لك مشترياتك من المعرض

⌯ عجله الحظ ↢ انتا وحظك يطلعلك جوائز كثيرة

⌯ تبرع ↢ تتبرع الى افقر اللاعبين

⌯ انشاء شركه ↢ تنشئ شركتك وتضيف اصدقائك

✦
]],"md",true)  
return false
end
if text == 'انشاء حساب بنكي' or text == 'انشاء حساب البنكي' or text =='انشاء الحساب بنكي' or text =='انشاء الحساب البنكي' or text == "انشاء حساب" or text == "فتح حساب بنكي" then
cobnum = tonumber(redis:get(KOIA.."bandid"..msg.sender_id.user_id))
if cobnum == msg.sender_id.user_id then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ حسابك محظور من لعبة البنك","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ لديك حساب بنكي مسبقاً\n\n⇜ لعرض معلومات حسابك اكتب\n⇠ `حسابي`","md",true)
end
ttshakse = '⇜ عشان تسوي حساب لازم تختار نوع البطاقة\n✦'
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'ماستر', data = msg.sender_id.user_id..'/master'},{text = 'فيزا', data = msg.sender_id.user_id..'/visaa'},{text = 'ريد بول', data = msg.sender_id.user_id..'/express'},
},
{text = 'RedBull',url="t.me/allush3"}, 
}
}
return LuaTele.sendText(msg.chat_id,msg.id,ttshakse,"md",false, false, false, false, reply_markup)
end
if text == 'مسح حساب بنكي' or text == 'مسح حساب البنكي' or text =='مسح الحساب بنكي' or text =='مسح الحساب البنكي' or text == "مسح حسابي البنكي" or text == "مسح حسابي بنكي" or text == "مسح حسابي" then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:get(KOIA.."in_company:name:"..msg.sender_id.user_id) then
local Cname = redis:get(KOIA.."in_company:name:"..msg.sender_id.user_id)
for k,v in pairs(redis:smembers(KOIA.."company:mem:"..Cname)) do
redis:srem(KOIA.."in_company:", v)
end
redis:del(KOIA.."company:mem:"..Cname)
redis:srem(KOIA.."in_company:", msg.sender_id.user_id)
redis:del(KOIA.."in_company:name:"..msg.sender_id.user_id, Cname)
end
redis:srem(KOIA.."booob", msg.sender_id.user_id)
redis:srem(KOIA.."taza", msg.sender_id.user_id)
redis:del(KOIA.."pirlo"..msg.sender_id.user_id)
redis:del(KOIA.."pirlob"..msg.sender_id.user_id)
redis:del(KOIA.."rrfff"..msg.sender_id.user_id)
redis:srem(KOIA.."rrfffid", msg.sender_id.user_id)
redis:srem(KOIA.."roogg1", msg.sender_id.user_id)
redis:srem(KOIA.."roogga1", msg.sender_id.user_id)
redis:del(KOIA.."roog1"..msg.sender_id.user_id)
redis:del(KOIA.."rooga1"..msg.sender_id.user_id)
redis:del(KOIA.."rahr1"..msg.sender_id.user_id)
redis:del(KOIA.."rahrr1"..msg.sender_id.user_id)
redis:del(KOIA.."tabbroat"..msg.sender_id.user_id)
redis:del(KOIA.."shkse"..msg.sender_id.user_id)
redis:del(KOIA.."ratbinc"..msg.sender_id.user_id)
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:del(KOIA.."mgrmasname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrmasnum"..msg.sender_id.user_id)
redis:del(KOIA.."mgrkldname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrkldnum"..msg.sender_id.user_id)
redis:del(KOIA.."mgrswrname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrswrnum"..msg.sender_id.user_id)
redis:del(KOIA.."mgrktmname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrktmnum"..msg.sender_id.user_id)
redis:del(KOIA.."akrksrname"..msg.sender_id.user_id)
redis:del(KOIA.."akrksrnum"..msg.sender_id.user_id)
redis:del(KOIA.."akrfelname"..msg.sender_id.user_id)
redis:del(KOIA.."akrfelnum"..msg.sender_id.user_id)
redis:del(KOIA.."akrmnzname"..msg.sender_id.user_id)
redis:del(KOIA.."akrmnznum"..msg.sender_id.user_id)
redis:del(KOIA.."airshbhname"..msg.sender_id.user_id)
redis:del(KOIA.."airshbhnum"..msg.sender_id.user_id)
redis:del(KOIA.."airsfarname"..msg.sender_id.user_id)
redis:del(KOIA.."airsfarnum"..msg.sender_id.user_id)
redis:del(KOIA.."airkhasname"..msg.sender_id.user_id)
redis:del(KOIA.."airkhasnum"..msg.sender_id.user_id)
redis:del(KOIA.."carrangname"..msg.sender_id.user_id)
redis:del(KOIA.."carrangnum"..msg.sender_id.user_id)
redis:del(KOIA.."caraccename"..msg.sender_id.user_id)
redis:del(KOIA.."caraccenum"..msg.sender_id.user_id)
redis:del(KOIA.."carcamrname"..msg.sender_id.user_id)
redis:del(KOIA.."carcamrnum"..msg.sender_id.user_id)
redis:del(KOIA.."caralntrname"..msg.sender_id.user_id)
redis:del(KOIA.."caralntrnum"..msg.sender_id.user_id)
redis:del(KOIA.."carhilxname"..msg.sender_id.user_id)
redis:del(KOIA.."carhilxnum"..msg.sender_id.user_id)
redis:del(KOIA.."carsonaname"..msg.sender_id.user_id)
redis:del(KOIA.."carsonanum"..msg.sender_id.user_id)
redis:del(KOIA.."carcoroname"..msg.sender_id.user_id)
redis:del(KOIA.."carcoronum"..msg.sender_id.user_id)
namfra = redis:get(KOIA.."namefram"..msg.sender_id.user_id)
redis:del(KOIA.."toplvfarm"..msg.sender_id.user_id)
redis:del(KOIA.."btatatime"..msg.sender_id.user_id)
redis:del(KOIA.."btatanum"..msg.sender_id.user_id)
redis:del(KOIA.."btataname"..msg.sender_id.user_id)
redis:del(KOIA.."lemontime"..msg.sender_id.user_id)
redis:del(KOIA.."lemonnum"..msg.sender_id.user_id)
redis:del(KOIA.."lemonname"..msg.sender_id.user_id)
redis:del(KOIA.."khesstime"..msg.sender_id.user_id)
redis:del(KOIA.."khessnum"..msg.sender_id.user_id)
redis:del(KOIA.."khessname"..msg.sender_id.user_id)
redis:del(KOIA.."kheartime"..msg.sender_id.user_id)
redis:del(KOIA.."khearnum"..msg.sender_id.user_id)
redis:del(KOIA.."khearname"..msg.sender_id.user_id)
redis:del(KOIA.."jzartime"..msg.sender_id.user_id)
redis:del(KOIA.."jzarnum"..msg.sender_id.user_id)
redis:del(KOIA.."jzarname"..msg.sender_id.user_id)
redis:del(KOIA.."fleflatime"..msg.sender_id.user_id)
redis:del(KOIA.."fleflanum"..msg.sender_id.user_id)
redis:del(KOIA.."fleflaname"..msg.sender_id.user_id)
redis:del(KOIA.."freaztime"..msg.sender_id.user_id)
redis:del(KOIA.."freaznum"..msg.sender_id.user_id)
redis:del(KOIA.."freazname"..msg.sender_id.user_id)
redis:del(KOIA.."tfahtime"..msg.sender_id.user_id)
redis:del(KOIA.."tfahnum"..msg.sender_id.user_id)
redis:del(KOIA.."tfahname"..msg.sender_id.user_id)
redis:del(KOIA.."enabtime"..msg.sender_id.user_id)
redis:del(KOIA.."enabnum"..msg.sender_id.user_id)
redis:del(KOIA.."enabname"..msg.sender_id.user_id)
redis:del(KOIA.."zetontime"..msg.sender_id.user_id)
redis:del(KOIA.."zetonnum"..msg.sender_id.user_id)
redis:del(KOIA.."zetonname"..msg.sender_id.user_id)
redis:del(KOIA.."mozztime"..msg.sender_id.user_id)
redis:del(KOIA.."mozznum"..msg.sender_id.user_id)
redis:del(KOIA.."mozzname"..msg.sender_id.user_id)
redis:del(KOIA.."sizefram"..msg.sender_id.user_id)
redis:del(KOIA.."namefram"..msg.sender_id.user_id)
redis:del(KOIA.."mzroatsize"..msg.sender_id.user_id)
redis:srem(KOIA.."farmarname", namfra)
redis:srem(KOIA.."ownerfram",msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مسحت حسابك البنكي 🏦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'تثبيت النتائج' or text == 'تثبيت نتائج' then
if devS(msg.sender_id.user_id) then
time = os.date("*t")
month = time.month
day = time.day
local_time = month.."/"..day
local bank_users = redis:smembers(KOIA.."booob")
if #bank_users == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ لا يوجد حسابات في البنك","md",true)
end
mony_list = {}
for k,v in pairs(bank_users) do
local mony = redis:get(KOIA.."pirlo"..v)
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
local user_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
redis:set(KOIA.."medal"..v[2],convert_mony)
redis:set(KOIA.."medal2"..v[2],emo)
redis:set(KOIA.."medal3"..v[2],local_time)
redis:sadd(KOIA.."medalid",v[2])
redis:set(KOIA.."medal"..v[2],convert_mony)
redis:set(KOIA.."medal2"..v[2],emo)
redis:set(KOIA.."medal3"..v[2],local_time)
redis:sadd(KOIA.."medalid",v[2])
local user_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"
local user_tag = '['..user_name..'](tg://user?id='..v[2]..')'
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
redis:set(KOIA.."medal"..v[2],convert_mony)
redis:set(KOIA.."medal2"..v[2],emo)
redis:set(KOIA.."medal3"..v[2],local_time)
redis:sadd(KOIA.."medalid",v[2])
if num == 4 then
return end
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم تثبيت النتائج","md",true)
end
end

if text == 'حذف لعبة البنك' or text == 'حذف لعبه البنك' then
if devS(msg.sender_id.user_id) then
redis:del(KOIA.."rrfffid")
redis:del(KOIA.."booob")
redis:del(KOIA.."taza")
redis:del(KOIA.."ownerfram")
redis:del(KOIA.."farmarname")
LuaTele.sendText(msg.chat_id,msg.id, "⇜ حذفت لعبه البنك 🏦","md",true)
end
end

if text == "مسح تخزين البوت" or text == "مسح تخزين البوت" then
if tonumber(msg.sender_id.user_id) == tonumber(5148378105) then 
local keys = redis:keys(KOIA..'*')
for i = 1, #keys do
redis:del(keys[i])
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مسحت تخزين بوت كامل","md",true)
end
end

if text == 'مسح لعبة البنك' or text == 'مسح لعبه البنك' then
if devS(msg.sender_id.user_id) then
local bank_users = redis:smembers(KOIA.."booob")
for k,v in pairs(bank_users) do
redis:del(KOIA.."pirlo"..v)
redis:del(KOIA.."kreednum"..v)
redis:del(KOIA.."kreed"..v)
redis:del(KOIA.."rrfff"..v)
redis:del(KOIA.."numattack"..v)
redis:del(KOIA.."tabbroat"..v)
redis:del(KOIA.."shkse"..v)
redis:del(KOIA.."ratbinc"..v)
redis:del(KOIA.."ratbtrans"..v)
redis:del(KOIA.."mgrmasname"..v)
redis:del(KOIA.."mgrmasnum"..v)
redis:del(KOIA.."mgrkldname"..v)
redis:del(KOIA.."mgrkldnum"..v)
redis:del(KOIA.."mgrswrname"..v)
redis:del(KOIA.."mgrswrnum"..v)
redis:del(KOIA.."mgrktmname"..v)
redis:del(KOIA.."mgrktmnum"..v)
redis:del(KOIA.."akrksrname"..v)
redis:del(KOIA.."akrksrnum"..v)
redis:del(KOIA.."akrfelname"..v)
redis:del(KOIA.."akrfelnum"..v)
redis:del(KOIA.."akrmnzname"..v)
redis:del(KOIA.."akrmnznum"..v)
redis:del(KOIA.."airshbhname"..v)
redis:del(KOIA.."airshbhnum"..v)
redis:del(KOIA.."airsfarname"..v)
redis:del(KOIA.."airsfarnum"..v)
redis:del(KOIA.."airkhasname"..v)
redis:del(KOIA.."airkhasnum"..v)
redis:del(KOIA.."carrangname"..v)
redis:del(KOIA.."carrangnum"..v)
redis:del(KOIA.."caraccename"..v)
redis:del(KOIA.."caraccenum"..v)
redis:del(KOIA.."carcamrname"..v)
redis:del(KOIA.."carcamrnum"..v)
redis:del(KOIA.."caralntrname"..v)
redis:del(KOIA.."caralntrnum"..v)
redis:del(KOIA.."carhilxname"..v)
redis:del(KOIA.."carhilxnum"..v)
redis:del(KOIA.."carsonaname"..v)
redis:del(KOIA.."carsonanum"..v)
redis:del(KOIA.."carcoroname"..v)
redis:del(KOIA.."carcoronum"..v)
redis:del(KOIA.."rotpa"..v)
redis:del(KOIA.."rddd"..v)
redis:del(KOIA.."rotpagrid"..v)
redis:del(KOIA.."rotpaid"..v)
redis:del(KOIA.."rdddgr"..v)
redis:del(KOIA.."rdddid"..v)
redis:del(KOIA.."rdddtex"..v)
end
for k,v in pairs(redis:smembers(KOIA.."company_owners:")) do 
local Cname = redis:get(KOIA.."companys_name:"..v)
redis:del(KOIA.."companys_owner:"..Cname)
redis:del(KOIA.."companys_id:"..Cname)
redis:del(KOIA.."company:mem:"..Cname)
redis:del(KOIA.."companys_name:"..v)
end
redis:del(KOIA.."company_owners:")
redis:del(KOIA.."companys:")
redis:del(KOIA.."in_company:")
local bank_usersr = redis:smembers(KOIA.."rrfffid")
for k,v in pairs(bank_usersr) do
redis:del(KOIA.."pirlo"..v)
redis:del(KOIA.."rrfff"..v)
end
for k,v in pairs(redis:smembers(KOIA.."ownerfram")) do 
redis:del(KOIA.."toplvfarm"..v)
redis:del(KOIA.."btatatime"..v)
redis:del(KOIA.."btatanum"..v)
redis:del(KOIA.."btataname"..v)
redis:del(KOIA.."lemontime"..v)
redis:del(KOIA.."lemonnum"..v)
redis:del(KOIA.."lemonname"..v)
redis:del(KOIA.."khesstime"..v)
redis:del(KOIA.."khessnum"..v)
redis:del(KOIA.."khessname"..v)
redis:del(KOIA.."kheartime"..v)
redis:del(KOIA.."khearnum"..v)
redis:del(KOIA.."khearname"..v)
redis:del(KOIA.."jzartime"..v)
redis:del(KOIA.."jzarnum"..v)
redis:del(KOIA.."jzarname"..v)
redis:del(KOIA.."fleflatime"..v)
redis:del(KOIA.."fleflanum"..v)
redis:del(KOIA.."fleflaname"..v)
redis:del(KOIA.."freaztime"..v)
redis:del(KOIA.."freaznum"..v)
redis:del(KOIA.."freazname"..v)
redis:del(KOIA.."tfahtime"..v)
redis:del(KOIA.."tfahnum"..v)
redis:del(KOIA.."tfahname"..v)
redis:del(KOIA.."enabtime"..v)
redis:del(KOIA.."enabnum"..v)
redis:del(KOIA.."enabname"..v)
redis:del(KOIA.."zetontime"..v)
redis:del(KOIA.."zetonnum"..v)
redis:del(KOIA.."zetonname"..v)
redis:del(KOIA.."mozztime"..v)
redis:del(KOIA.."mozznum"..v)
redis:del(KOIA.."mozzname"..v)
redis:del(KOIA.."sizefram"..v)
redis:del(KOIA.."namefram"..v)
redis:del(KOIA.."mzroatsize"..v)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مسحت لعبه البنك 🏦","md",true)
end
end
if text == 'ميدالياتي' or text == 'ميداليات' then
if redis:sismember(KOIA.."medalid",msg.sender_id.user_id) then
local medaa2 = redis:get(KOIA.."medal2"..msg.sender_id.user_id)
if medaa2 == "🥇" then
local medaa = redis:get(KOIA.."medal"..msg.sender_id.user_id)
local medaa2 = redis:get(KOIA.."medal2"..msg.sender_id.user_id)
local medaa3 = redis:get(KOIA.."medal3"..msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "ميدالياتك :\n\nالتاريخ : "..medaa3.." \nالفلوس : "..medaa.." 💵\nالمركز : "..medaa2.." كونكر "..medaa2.."\n✦","md",true)
elseif medaa2 == "🥈" then
local medaa = redis:get(KOIA.."medal"..msg.sender_id.user_id)
local medaa2 = redis:get(KOIA.."medal2"..msg.sender_id.user_id)
local medaa3 = redis:get(KOIA.."medal3"..msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "ميدالياتك :\n\nالتاريخ : "..medaa3.." \nالفلوس : "..medaa.." 💵\nالمركز : "..medaa2.." ايس "..medaa2.."\n✦","md",true)
else
local medaa = redis:get(KOIA.."medal"..msg.sender_id.user_id)
local medaa2 = redis:get(KOIA.."medal2"..msg.sender_id.user_id)
local medaa3 = redis:get(KOIA.."medal3"..msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "ميدالياتك :\n\nالتاريخ : "..medaa3.." \nالفلوس : "..medaa.." 💵\nالمركز : "..medaa2.." كراون "..medaa2.."\n✦","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك ميداليات","md",true)
end
end
if text == 'فلوسي' or text == 'فلوس' and tonumber(msg.reply_to_message_id) == 0 then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 1 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك فلوس ارسل الالعاب وابدأ بجمع الفلوس \n✦","md",true)
end
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك `"..convert_mony.."` دينار 💵","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match("^فلوس @(%S+)$") or text and text:match("^فلوسه @(%S+)$") then
local UserName = text:match("^فلوس @(%S+)$") or text:match("^فلوسه @(%S+)$")
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg.chat_id,msg.id,"\n⇜ مافيه حساب كذا ","md",true)
end
local UserInfo = LuaTele.getUser(UserId_Info.id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg.chat_id,msg.id,"\n⇜ هذا بوت 🤡 ","md",true)  
end
if redis:sismember(KOIA.."booob",UserId_Info.id) then
ballanceed = redis:get(KOIA.."pirlo"..UserId_Info.id) or 0
local convert_mony = string.format("%.0f",ballanceed)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسه `"..convert_mony.."` دينار 💵","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
end
if text == 'فلوسه' or text == 'فلوس' and tonumber(msg.reply_to_message_id) ~= 0 then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballanceed)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسه `"..convert_mony.."` دينار 💵","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
end
if text == 'حسابي' or text == 'حسابي البنكي' or text == 'رقم حسابي' then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
cccc = redis:get(KOIA.."pirlob"..msg.sender_id.user_id)
uuuu = redis:get(KOIA.."bbobb"..msg.sender_id.user_id)
pppp = redis:get(KOIA.."rrfff"..msg.sender_id.user_id) or 0
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
shkse = redis:get(KOIA.."shkse"..msg.sender_id.user_id)
local convert_mony = string.format("%.0f",ballancee)
if shkse == "طيبة" then
shkseemg = "طيبة 😇"
else
shkseemg = "شريرة 😈"
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ `"..cccc.."`\n⇜ بنك ↢ ( ريد بول )\n⇜ نوع ↢ ( "..uuuu.." )\n⇜ الرصيد ↢ ( "..convert_mony.." دينار 💵 )\n⇜ الزرف ( "..math.floor(pppp).." دينار 💵 )\n⇜ شخصيتك : "..shkseemg.."\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'مسح حسابه' and tonumber(msg.reply_to_message_id) ~= 0 then
if devS(msg.sender_id.user_id) or devB(msg.sender_id.user_id) then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)  
return false
end
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local Cname = redis:get(KOIA.."in_company:name:"..msg.sender_id.user_id) or 0
redis:srem(KOIA.."company:mem:"..Cname, msg.sender_id.user_id)
redis:srem(KOIA.."in_company:", msg.sender_id.user_id)
redis:del(KOIA.."in_company:name:"..msg.sender_id.user_id, Cname)
ccccc = redis:get(KOIA.."pirlob"..Remsg.sender_id.user_id)
uuuuu = redis:get(KOIA.."bbobb"..Remsg.sender_id.user_id)
ppppp = redis:get(KOIA.."rrfff"..Remsg.sender_id.user_id) or 0
ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballanceed)
redis:srem(KOIA.."booob", Remsg.sender_id.user_id)
redis:srem(KOIA.."taza", Remsg.sender_id.user_id)
redis:del(KOIA.."pirlo"..Remsg.sender_id.user_id)
redis:del(KOIA.."pirlob"..Remsg.sender_id.user_id)
redis:del(KOIA.."rrfff"..Remsg.sender_id.user_id)
redis:del(KOIA.."numattack"..Remsg.sender_id.user_id)
redis:srem(KOIA.."rrfffid", Remsg.sender_id.user_id)
redis:srem(KOIA.."roogg1", Remsg.sender_id.user_id)
redis:srem(KOIA.."roogga1", Remsg.sender_id.user_id)
redis:del(KOIA.."roog1"..Remsg.sender_id.user_id)
redis:del(KOIA.."rooga1"..Remsg.sender_id.user_id)
redis:del(KOIA.."rahr1"..Remsg.sender_id.user_id)
redis:del(KOIA.."rahrr1"..Remsg.sender_id.user_id)
redis:del(KOIA.."tabbroat"..Remsg.sender_id.user_id)
redis:del(KOIA.."shkse"..Remsg.sender_id.user_id)
redis:del(KOIA.."ratbinc"..Remsg.sender_id.user_id)
redis:del(KOIA.."ratbtrans"..Remsg.sender_id.user_id)
redis:del(KOIA.."mgrmasname"..Remsg.sender_id.user_id)
redis:del(KOIA.."mgrmasnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."mgrkldname"..Remsg.sender_id.user_id)
redis:del(KOIA.."mgrkldnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."mgrswrname"..Remsg.sender_id.user_id)
redis:del(KOIA.."mgrswrnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."mgrktmname"..Remsg.sender_id.user_id)
redis:del(KOIA.."mgrktmnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."akrksrname"..Remsg.sender_id.user_id)
redis:del(KOIA.."akrksrnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."akrfelname"..Remsg.sender_id.user_id)
redis:del(KOIA.."akrfelnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."akrmnzname"..Remsg.sender_id.user_id)
redis:del(KOIA.."akrmnznum"..Remsg.sender_id.user_id)
redis:del(KOIA.."airshbhname"..Remsg.sender_id.user_id)
redis:del(KOIA.."airshbhnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."airsfarname"..Remsg.sender_id.user_id)
redis:del(KOIA.."airsfarnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."airkhasname"..Remsg.sender_id.user_id)
redis:del(KOIA.."airkhasnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."carrangname"..Remsg.sender_id.user_id)
redis:del(KOIA.."carrangnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."caraccename"..Remsg.sender_id.user_id)
redis:del(KOIA.."caraccenum"..Remsg.sender_id.user_id)
redis:del(KOIA.."carcamrname"..Remsg.sender_id.user_id)
redis:del(KOIA.."carcamrnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."caralntrname"..Remsg.sender_id.user_id)
redis:del(KOIA.."caralntrnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."carhilxname"..Remsg.sender_id.user_id)
redis:del(KOIA.."carhilxnum"..Remsg.sender_id.user_id)
redis:del(KOIA.."carsonaname"..Remsg.sender_id.user_id)
redis:del(KOIA.."carsonanum"..Remsg.sender_id.user_id)
redis:del(KOIA.."carcoroname"..Remsg.sender_id.user_id)
redis:del(KOIA.."carcoronum"..Remsg.sender_id.user_id)
redis:del(KOIA.."rotpa"..Remsg.sender_id.user_id)
redis:del(KOIA.."rddd"..Remsg.sender_id.user_id)
redis:del(KOIA.."rotpagrid"..Remsg.sender_id.user_id)
redis:del(KOIA.."rotpaid"..Remsg.sender_id.user_id)
redis:del(KOIA.."rdddgr"..Remsg.sender_id.user_id)
redis:del(KOIA.."rdddid"..Remsg.sender_id.user_id)
redis:del(KOIA.."rdddtex"..Remsg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ `"..ccccc.."`\n⇜ بنك ↢ ( ريد بول )\n⇜ نوع ↢ ( "..uuuuu.." )\n⇜ الرصيد ↢ ( "..convert_mony.." دينار 💵 )\n⇜ الزرف ↢ ( "..math.floor(ppppp).." دينار 💵 )\n⇜ مسكين مسحت حسابه \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي اصلاً ","md",true)
end
end
end
if text == 'حسابه' and tonumber(msg.reply_to_message_id) ~= 0 then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)  
return false
end
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ccccc = redis:get(KOIA.."pirlob"..Remsg.sender_id.user_id)
uuuuu = redis:get(KOIA.."bbobb"..Remsg.sender_id.user_id)
ppppp = redis:get(KOIA.."rrfff"..Remsg.sender_id.user_id) or 0
ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
shkse = redis:get(KOIA.."shkse"..Remsg.sender_id.user_id)
local convert_mony = string.format("%.0f",ballanceed)
if shkse == "طيبة" then
shkseemg = "طيبة 😇"
else
shkseemg = "شريرة 😈"
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ `"..ccccc.."`\n⇜ بنك ↢ ( ريد بول )\n⇜ نوع ↢ ( "..uuuuu.." )\n⇜ الرصيد ↢ ( "..convert_mony.." دينار 💵 )\n⇜ الزرف ↢ ( "..math.floor(ppppp).." دينار 💵 )\n⇜ شخصيته : "..shkseemg.."\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
end
if text and text:match('^مسح حساب (.*)$') or text and text:match('^مسح حسابه (.*)$') then
if devS(msg.sender_id.user_id) or devB(msg.sender_id.user_id) then
local UserName = text:match('^مسح حساب (.*)$') or text:match('^مسح حسابه (.*)$')
local coniss = coin(UserName)
local ban = LuaTele.getUser(coniss)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد "
end
if redis:sismember(KOIA.."booob",coniss) then
local Cname = redis:get(KOIA.."in_company:name:"..coniss) or 0
redis:srem(KOIA.."company:mem:"..Cname, coniss)
redis:srem(KOIA.."in_company:", coniss)
redis:del(KOIA.."in_company:name:"..coniss, Cname)
ccccc = redis:get(KOIA.."pirlob"..coniss)
uuuuu = redis:get(KOIA.."bbobb"..coniss)
ppppp = redis:get(KOIA.."rrfff"..coniss) or 0
ballanceed = redis:get(KOIA.."pirlo"..coniss) or 0
local convert_mony = string.format("%.0f",ballanceed)
redis:srem(KOIA.."booob", coniss)
redis:srem(KOIA.."taza", coniss)
redis:del(KOIA.."pirlo"..coniss)
redis:del(KOIA.."pirlob"..coniss)
redis:del(KOIA.."rrfff"..coniss)
redis:srem(KOIA.."roogg1", coniss)
redis:srem(KOIA.."roogga1", coniss)
redis:del(KOIA.."roog1"..coniss)
redis:del(KOIA.."rooga1"..coniss)
redis:del(KOIA.."rahr1"..coniss)
redis:del(KOIA.."rahrr1"..coniss)
redis:del(KOIA.."tabbroat"..coniss)
redis:del(KOIA.."shkse"..coniss)
redis:del(KOIA.."ratbinc"..coniss)
redis:del(KOIA.."ratbtrans"..coniss)
redis:del(KOIA.."numattack"..coniss)
redis:del(KOIA.."mgrmasname"..coniss)
redis:del(KOIA.."mgrmasnum"..coniss)
redis:del(KOIA.."mgrkldname"..coniss)
redis:del(KOIA.."mgrkldnum"..coniss)
redis:del(KOIA.."mgrswrname"..coniss)
redis:del(KOIA.."mgrswrnum"..coniss)
redis:del(KOIA.."mgrktmname"..coniss)
redis:del(KOIA.."mgrktmnum"..coniss)
redis:del(KOIA.."akrksrname"..coniss)
redis:del(KOIA.."akrksrnum"..coniss)
redis:del(KOIA.."akrfelname"..coniss)
redis:del(KOIA.."akrfelnum"..coniss)
redis:del(KOIA.."akrmnzname"..coniss)
redis:del(KOIA.."akrmnznum"..coniss)
redis:del(KOIA.."airshbhname"..coniss)
redis:del(KOIA.."airshbhnum"..coniss)
redis:del(KOIA.."airsfarname"..coniss)
redis:del(KOIA.."airsfarnum"..coniss)
redis:del(KOIA.."airkhasname"..coniss)
redis:del(KOIA.."airkhasnum"..coniss)
redis:del(KOIA.."carrangname"..coniss)
redis:del(KOIA.."carrangnum"..coniss)
redis:del(KOIA.."caraccename"..coniss)
redis:del(KOIA.."caraccenum"..coniss)
redis:del(KOIA.."carcamrname"..coniss)
redis:del(KOIA.."carcamrnum"..coniss)
redis:del(KOIA.."caralntrname"..coniss)
redis:del(KOIA.."caralntrnum"..coniss)
redis:del(KOIA.."carhilxname"..coniss)
redis:del(KOIA.."carhilxnum"..coniss)
redis:del(KOIA.."carsonaname"..coniss)
redis:del(KOIA.."carsonanum"..coniss)
redis:del(KOIA.."carcoroname"..coniss)
redis:del(KOIA.."carcoronum"..coniss)
redis:srem(KOIA.."rrfffid", coniss)
redis:del(KOIA.."rotpa"..coniss)
redis:del(KOIA.."rddd"..coniss)
redis:del(KOIA.."rotpagrid"..coniss)
redis:del(KOIA.."rotpaid"..coniss)
redis:del(KOIA.."rdddgr"..coniss)
redis:del(KOIA.."rdddid"..coniss)
redis:del(KOIA.."rdddtex"..coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ `"..ccccc.."`\n⇜ بنك ↢ ( ريد بول )\n⇜ نوع ↢ ( "..uuuuu.." )\n⇜ الرصيد ↢ ( "..convert_mony.." دينار 💵 )\n⇜ الزرف ↢ ( "..math.floor(ppppp).." دينار 💵 )\n⇜ مسكين مسحت حسابه \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي اصلاً ","md",true)
end
end
end
if text and text:match('^حساب (.*)$') or text and text:match('^حسابه (.*)$') then
local UserName = text:match('^حساب (.*)$') or text:match('^حسابه (.*)$')
local coniss = coin(UserName)
if redis:get(KOIA.."boballcc"..coniss) then
local yty = redis:get(KOIA.."boballname"..coniss)
local bobpkh = redis:get(KOIA.."boballid"..coniss)
ballancee = redis:get(KOIA.."pirlo"..bobpkh) or 0
local convert_mony = string.format("%.0f",ballancee)
local dfhb = redis:get(KOIA.."boballbalc"..coniss)
local fsvhh = redis:get(KOIA.."boballban"..coniss)
shkse = redis:get(KOIA.."shkse"..coniss)
if shkse == "طيبة" then
shkseemg = "طيبة 😇"
else
shkseemg = "شريرة 😈"
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..yty.."\n⇜ الحساب ↢ `"..coniss.."`\n⇜ بنك ↢ ( ريد بول )\n⇜ نوع ↢ ( "..fsvhh.." )\n⇜ الرصيد ↢ ( "..convert_mony.." دينار 💵 )\n⇜ شخصيته : "..shkseemg.."\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مافيه حساب بنكي كذا","md",true)
end
end
if text and text:match('اكشط (.*)') then
local TextAksht = text:match('اكشط (.*)')
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if not redis:sismember(KOIA.."Akshtd:Games:",TextAksht) then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ الرمز مستخدم قبل !")
end
local list ={"10000","20000","30000","40000","50000","60000"}
local Number = tonumber(list[math.random(#list)])
redis:srem(KOIA.."Akshtd:Games:",TextAksht)
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
cobonplus = tonumber(ballancee) + Number
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , cobonplus)
local UserInfoo = LuaTele.getUser(msg.sender_id.user_id)
local GetName = '- ['..UserInfoo.first_name..'](tg://user?id='..msg.sender_id.user_id..')'
return LuaTele.sendText(msg.chat_id,msg.id,GetName.."\n\n*⇜ مبروك كشطتها واخذت : "..Number.. " دينار 💵*\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ","md",true)
end
end
if text == "قائمه اكشطها" then
if not devS(msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id,'\n*هذا الامر يخص المطور الاساسي* ',"md",true)  
end
local Text = redis:smembers(KOIA.."Akshtd:Games:") 
if #Text == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"لا يوجد رموز اكشطها","md",true)  
end
local Texter = "\nقائمه اكشطها : \n\n"
for k, v in pairs(Text) do
Texter = Texter.."*"..k.."-* `"..v.."`\n"
end
return LuaTele.sendText(msg.chat_id,msg.id,Texter,"md")
end
if text == "صنع اكشطها" then
if not devS(msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id,'\n*هذا الامر يخص المطور الاساسي* ',"md",true)  
end
redis:del(KOIA.."Akshtd:Games:")
local list ={"q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m"}
local En = list[math.random(#list)]
local En1 = list[math.random(#list)]
local En2 = list[math.random(#list)]
local En3 = list[math.random(#list)]
local En4 = list[math.random(#list)]
local En5 = list[math.random(#list)]
local En6 = list[math.random(#list)]
local En7 = list[math.random(#list)]
local En8 = list[math.random(#list)]
local En9 = list[math.random(#list)]
local Num = En..En1..En2..En3..En4..En5..En6..En7..En8..En9
local Num1 = En..En1..En9..En8..En6..En7..En5..En4..En3..En2
local Num2 = En1..En2..En3..En4..En5..En6..En7..En8..En9..En
local Num3 = En9..En2..En..En4..En6..En5..En8..En3..En1..En7
local Num4 = En6..En7..En8..En9..En..En1..En2..En3..En4..En5
local Num5 = En5..En4..En3..En2..En1..En..En9..En8..En7..En6
local Num6 = En6..En7..En3..En2..En1..En5..En4..En..En9..En8
local Num7 = En1..En..En2..En7..En4..En3..En6..En5..En9..En8
local Num8 = En2..En4..En5..En6..En4..En8..En3..En7..En..En9
local Num9 = En1..En..En3..En5..En7..En9..En2..En4..En6..En8
redis:sadd(KOIA.."Akshtd:Games:",Num)
redis:sadd(KOIA.."Akshtd:Games:",Num1)
redis:sadd(KOIA.."Akshtd:Games:",Num2)
redis:sadd(KOIA.."Akshtd:Games:",Num3)
redis:sadd(KOIA.."Akshtd:Games:",Num4)
redis:sadd(KOIA.."Akshtd:Games:",Num5)
redis:sadd(KOIA.."Akshtd:Games:",Num6)
redis:sadd(KOIA.."Akshtd:Games:",Num7)
redis:sadd(KOIA.."Akshtd:Games:",Num8)
redis:sadd(KOIA.."Akshtd:Games:",Num9)
return LuaTele.sendText(msg.chat_id,msg.id,[[
تم صنع قائمة اكشط جديدة :

1 - `]]..Num..[[`

2 - `]]..Num1..[[`

3 - `]]..Num2..[[`

4 - `]]..Num3..[[`

5 - `]]..Num4..[[`

6 - `]]..Num5..[[`

7 - `]]..Num6..[[`

8 - `]]..Num7..[[`

9 - `]]..Num8..[[`

10 - `]]..Num9..[[`
]],"md")
end
if text == 'مضاربه' then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب الحين\n⇜ تعال بعد "..math.floor(hours).." دقيقة","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`مضاربه` المبلغ","md",true)
end
if text and text:match('^مضاربه (.*)$') or text and text:match('^مضاربة (.*)$') then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local UserName = text:match('^مضاربه (.*)$') or text:match('^مضاربة (.*)$')
local coniss = coin(UserName)
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب الحين\n⇜ تعال بعد "..math.floor(hours).." دقيقة","md",true)
end
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 99 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح هو 100 دينار 💵\n✦","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
local modarba = {"1", "2", "3", "4️",}
local Descriptioontt = modarba[math.random(#modarba)]
local modarbaa = math.random(1,90);
if Descriptioontt == "1" or Descriptioontt == "3" then
ballanceekku = coniss / 100 * modarbaa
ballanceekkku = ballancee - ballanceekku
local convert_mony = string.format("%.0f",ballanceekku)
local convert_mony1 = string.format("%.0f",ballanceekkku)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ballanceekkku))
redis:setex(KOIA.."iiooooo" .. msg.sender_id.user_id,920, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مضاربة فاشلة 📉\n⇜ نسبة الخسارة ↢ "..modarbaa.."%\n⇜ المبلغ الذي خسرته ↢ ( "..convert_mony.." دينار 💵 )\n⇜ فلوسك صارت ↢ ( "..convert_mony1.." دينار 💵 )\n✦","md",true)
else
ballanceekku = coniss / 100 * modarbaa
ballanceekkku = ballancee + ballanceekku
local convert_mony = string.format("%.0f",ballanceekku)
local convert_mony1 = string.format("%.0f",ballanceekkku)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ballanceekkku))
redis:setex(KOIA.."iiooooo" .. msg.sender_id.user_id,920, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مضاربة ناجحة 📈\n⇜ نسبة الربح ↢ "..modarbaa.."%\n⇜ المبلغ الذي ربحته ↢ ( "..convert_mony.." دينار 💵 )\n⇜ فلوسك صارت ↢ ( "..convert_mony1.." دينار 💵 )\n✦","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'استثمار' then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر الحين\n⇜ تعال بعد "..math.floor(hours).." دقيقة","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`استثمار` المبلغ","md",true)
end
if text and text:match('^استثمار (.*)$') then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local UserName = text:match('^استثمار (.*)$')
local coniss = coin(UserName)
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر الحين\n⇜ تعال بعد "..math.floor(hours).." دقيقة","md",true)
end
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 99 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح هو 100 دينار ??\n✦","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
if tonumber(ballancee) < 100000 then
local hadddd = math.random(10,15);
ballanceekk = coniss / 100 * hadddd
ballanceekkk = ballancee + ballanceekk
local convert_mony = string.format("%.0f",ballanceekk)
local convert_mony1 = string.format("%.0f",ballanceekkk)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ballanceekkk))
redis:setex(KOIA.."iioooo" .. msg.sender_id.user_id,1220, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ استثمار ناجح 💰\n⇜ نسبة الربح ↢ "..hadddd.."%\n⇜ مبلغ الربح ↢ ( "..convert_mony.." دينار 💵 )\n⇜ فلوسك صارت ↢ ( "..convert_mony1.." دينار 💵 )\n✦","md",true)
else
local hadddd = math.random(1,9);
ballanceekk = coniss / 100 * hadddd
ballanceekkk = ballancee + ballanceekk
local convert_mony = string.format("%.0f",ballanceekk)
local convert_mony1 = string.format("%.0f",ballanceekkk)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ballanceekkk))
redis:setex(KOIA.."iioooo" .. msg.sender_id.user_id,1220, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ استثمار ناجح 💰\n⇜ نسبة الربح ↢ "..hadddd.."%\n⇜ مبلغ الربح ↢ ( "..convert_mony.." دينار 💵 )\n⇜ فلوسك صارت ↢ ( "..convert_mony1.." دينار 💵 )\n✦","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'سحب' then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:ttl(KOIA.."iioood" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iioood" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب سحب الحين\n⇜ تعال بعد "..math.floor(hours).." دقيقة","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`سحب` المبلغ","md",true)
end
if text == 'حظ' then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب حظ الحين\n⇜ تعال بعد "..math.floor(hours).." دقيقة","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`حظ` المبلغ","md",true)
end
if text and text:match('^حظ (.*)$') then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local UserName = text:match('^حظ (.*)$')
local coniss = coin(UserName)
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب حظ الحين\n⇜ تعال بعد "..math.floor(hours).." دقيقة","md",true)
end
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 99 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح هو 100 دينار 💵\n✦","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
local daddd = {"1", "2"}
local haddd = daddd[math.random(#daddd)]
if haddd == "1" then
local ballanceek = ballancee + coniss
local convert_mony = string.format("%.0f",ballancee)
local convert_mony1 = string.format("%.0f",ballanceek)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ballanceek))
redis:setex(KOIA.."iiooo" .. msg.sender_id.user_id,920, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مبروك فزت بالحظ 🎉\n⇜ فلوسك قبل ↢ ( "..convert_mony.." دينار 💵 )\n⇜ رصيدك الان ↢ ( "..convert_mony1.." دينار 💵 )\n✦","md",true)
else
local ballanceekk = ballancee - coniss
local convert_mony = string.format("%.0f",ballancee)
local convert_mony1 = string.format("%.0f",ballanceekk)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ballanceekk))
redis:setex(KOIA.."iiooo" .. msg.sender_id.user_id,920, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ للاسف خسرت بالحظ 😬\n⇜ فلوسك قبل ↢ ( "..convert_mony.." دينار 💵 )\n⇜ رصيدك الان ↢ ( "..convert_mony1.." دينار 💵 )\n✦","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'تحويل' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`تحويل` المبلغ","md",true)
end
if text and text:match('^تحويل (.*)$') then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local UserName = text:match('^تحويل (.*)$')
local coniss = coin(UserName)
if not redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ","md",true)
end
if tonumber(coniss) < 100 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح به هو 100 دينار \n✦","md",true)
end
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 100 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
if tonumber(coniss) > tonumber(ballancee) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي\n✦","md",true)
end
redis:set(KOIA.."transn"..msg.sender_id.user_id,coniss)
redis:setex(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id,60, true)
LuaTele.sendText(msg.chat_id,msg.id,[[
⇜ ارسل الحين رقم الحساب البنكي الي تبي تحول له

– معاك دقيقة وحدة والغي طلب التحويل .
✦
]],"md",true)  
return false
end
if redis:get(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
cccc = redis:get(KOIA.."pirlob"..msg.sender_id.user_id)
uuuu = redis:get(KOIA.."bbobb"..msg.sender_id.user_id)
if text ~= text:match('^(%d+)$') then
redis:del(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
redis:del(KOIA.."transn" .. msg.sender_id.user_id)
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ارسل رقم حساب بنكي ","md",true)
end
if text == cccc then
redis:del(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
redis:del(KOIA.."transn" .. msg.sender_id.user_id)
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تحول لنفسك ","md",true)
end
if redis:get(KOIA.."boballcc"..text) then
local UserNamey = redis:get(KOIA.."transn"..msg.sender_id.user_id)
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد "
end
local fsvhhh = redis:get(KOIA.."boballid"..text)
local bann = LuaTele.getUser(fsvhhh)
if bann.first_name then
newss = "["..bann.first_name.."](tg://user?id="..bann.id..")"
else
newss = " لا يوجد "
end
local fsvhh = redis:get(KOIA.."boballban"..text)
UserNameyr = UserNamey / 10
UserNameyy = UserNamey - UserNameyr
local convert_mony = string.format("%.0f",UserNameyy)
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
deccde = ballancee - UserNamey
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(deccde))
decdecb = redis:get(KOIA.."pirlo"..fsvhhh) or 0
deccde2 = decdecb + UserNameyy
redis:set(KOIA.."pirlo"..fsvhhh , math.floor(deccde2))

LuaTele.sendText(msg.chat_id,msg.id, "⌯ حوالة صادرة من بنك ريد بول\n\n⇜ المرسل : "..news.."\n⇜ الحساب رقم : `"..cccc.."`\n⇜ نوع البطاقة : "..uuuu.."\n⇜ المستلم : "..newss.."\n⇜ الحساب رقم : `"..text.."`\n⇜ نوع البطاقة : "..fsvhh.."\n⇜ خصمت 10% رسوم تحويل\n⇜ المبلغ : "..convert_mony.." دينار 💵","md",true)
LuaTele.sendText(fsvhhh,0, "⌯ حوالة واردة من بنك ريد بول\n\n⇜ المرسل : "..news.."\n⇜ الحساب رقم : `"..cccc.."`\n⇜ نوع البطاقة : "..uuuu.."\n⇜ المبلغ : "..convert_mony.." دينار 💵","md",true)
redis:del(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
redis:del(KOIA.."transn" .. msg.sender_id.user_id)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مافيه حساب بنكي كذا","md",true)
redis:del(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
redis:del(KOIA.."transn" .. msg.sender_id.user_id)
end
end
if text == "ترتيبي" then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local bank_users = redis:smembers(KOIA.."booob")
my_num_in_bank = {}
for k,v in pairs(bank_users) do
local mony = redis:get(KOIA.."pirlo"..v)
table.insert(my_num_in_bank, {math.floor(tonumber(mony)) , v})
end
table.sort(my_num_in_bank, function(a, b) return a[1] > b[1] end)
for k,v in pairs(my_num_in_bank) do
if tonumber(v[2]) == tonumber(msg.sender_id.user_id) then
local mony = v[1]
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ترتيبك ( "..k.." )","md",true)
end
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == "ترتيبه" and tonumber(msg.reply_to_message_id) ~= 0 then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local bank_users = redis:smembers(KOIA.."booob")
my_num_in_bank = {}
for k,v in pairs(bank_users) do
local mony = redis:get(KOIA.."pirlo"..v)
table.insert(my_num_in_bank, {math.floor(tonumber(mony)) , v})
end
table.sort(my_num_in_bank, function(a, b) return a[1] > b[1] end)
for k,v in pairs(my_num_in_bank) do
if tonumber(v[2]) == tonumber(Remsg.sender_id.user_id) then
local mony = v[1]
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ترتيبه ( "..k.." )","md",true)
end
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي","md",true)
end
end
if text == "توب" or text == "التوب" then
local toptop = "⇜ اهلين فيك في قوائم التوب\nللمزيد من التفاصيل - [@allush3]\n✦"
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'الزرف', data = msg.sender_id.user_id..'/topzrf'},{text = 'الفلوس', data = msg.sender_id.user_id..'/topmon'},{text = 'زواجات', data = msg.sender_id.user_id..'/zoztee'},
},
{
{text = 'المتبرعين', data = msg.sender_id.user_id..'/motbra'},{text = 'الشركات', data = msg.sender_id.user_id..'/shrkatt'},
},
{
{text = 'اخفاء', data = msg.sender_id.user_id..'/delAmr'}, 
},
{
{text = 'RedBull', url="t.me/allush3"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,toptop,"md",false, false, false, false, reply_markup)
end
if text == "توب فلوس" or text == "توب الفلوس" then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
else
news = " لا يوجد"
end
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local bank_users = redis:smembers(KOIA.."booob")
if #bank_users == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ لا يوجد حسابات في البنك","md",true)
end
top_mony = "توب اغنى 20 شخص :\n\n"
mony_list = {}
for k,v in pairs(bank_users) do
local mony = redis:get(KOIA.."pirlo"..v)
table.insert(mony_list, {tonumber(mony) , v})
end
table.sort(mony_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(mony_list) do
if num <= 20 then
local user_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_mony = top_mony..emo.." "..gflos.." 💵 l "..tt.." \n"
gflous = string.format("%.0f", ballancee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = " ━━━━━━━━━\nyou ) "..gflous.." 💵 l "..news.." \n\nملاحظة : اي شخص مخالف للعبة بالحراميه او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'RedBull', url="t.me/allush3"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,top_mony..gg,"md",false, false, false, false, reply_markup)
end
if text == "توب الحراميه" or text == "توب الحرامية" or text == "توب حراميه" or text == "توب الزرف" or text == "توب زرف" then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
else
news = " لا يوجد"
end
zrfee = redis:get(KOIA.."rrfff"..msg.sender_id.user_id) or 0
local ty_users = redis:smembers(KOIA.."rrfffid")
if #ty_users == 0 then
return LuaTele.sendText(chat_id,msg_id,"⇜ لا يوجد احد","md",true)
end
ty_anubis = "توب 20 شخص زرفوا فلوس :\n\n"
ty_list = {}
for k,v in pairs(ty_users) do
local mony = redis:get(KOIA.."rrfff"..v)
table.insert(ty_list, {tonumber(mony) , v})
end
table.sort(ty_list, function(a, b) return a[1] > b[1] end)
num_ty = 1
emojii ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(ty_list) do
if num_ty <= 20 then
local user_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emoo = emojii[k]
num_ty = num_ty + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
ty_anubis = ty_anubis..emoo.." "..gflos.." 💵 l "..tt.." \n"
gflous = string.format("%.0f", zrfee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = " ━━━━━━━━━\n• you) "..gflous.." 💵 l "..news.." \n\nملاحظة : اي شخص مخالف للعبة بالحراميه او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'RedBull', url="t.me/allush3"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,ty_anubis..gg,"md",false, false, false, false, reply_markup)
end
if text == 'رشوة' or text == 'رشوه' or text == 'رشوى' or text == 'رشوا' then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخذت رشوة استنى "..math.floor(hours).." دقيقة","md",true)
end
if redis:ttl(KOIA.."polrsho" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."polrsho" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ انتا بالسجن 🏤\n⇜ استنى "..math.floor(hours).." دقيقة\n✦","md",true)
end
shkse = redis:get(KOIA.."shkse"..msg.sender_id.user_id)
if shkse == "طيبة" then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ شخصيتك طيبة مايمديك تاخذ رشوة","md",true)
end
local daddd = {"1", "2", "3", "4",}
local haddd = daddd[math.random(#daddd)]
if haddd == "1" or haddd == "2" or haddd == "3" then
local jjjo = math.random(200,7000);
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
bakigcj = ballanceed + jjjo
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , bakigcj)
LuaTele.sendText(msg.chat_id,msg.id,"⇜ هذه رشوة بطل زرف "..jjjo.." دينار 💵","md",true)
redis:setex(KOIA.."iioo" .. msg.sender_id.user_id,620, true)
else
redis:setex(KOIA.."polrsho" .. msg.sender_id.user_id,320, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مسكتك الشرطة وانتا ترتشي 🚔\n✦","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'بخشيش' or text == 'بقشيش' then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخذت بخشيش استنى "..math.floor(hours).." دقيقة","md",true)
end
shkse = redis:get(KOIA.."shkse"..msg.sender_id.user_id)
if shkse == "شريرة" then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ شخصيتك شريرة مايمديك تاخذ بخشيش","md",true)
end
local jjjo = math.random(200,5000);
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
bakigcj = ballanceed + jjjo
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , bakigcj)
LuaTele.sendText(msg.chat_id,msg.id,"⇜ تكرم وهي بخشيش "..jjjo.." دينار 💵","md",true)
redis:setex(KOIA.."iioo" .. msg.sender_id.user_id,620, true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'زرف' and tonumber(msg.reply_to_message_id) == 0 then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`زرف` بالرد","md",true)
end
if text == 'زرف' or text == 'زرفو' or text == 'زرفه' and tonumber(msg.reply_to_message_id) ~= 0 then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
shkse = redis:get(KOIA.."shkse"..msg.sender_id.user_id)
if shkse == "طيبة" then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ شخصيتك طيبة مايمديك تزرف العالم","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)
return false
end
if Remsg.sender_id.user_id == msg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ بدك تزرف نفسك 🤡*","md",true)  
return false
end
if redis:ttl(KOIA.."polic" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."polic" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ انتا بالسجن 🏤 استنى "..math.floor(hours).." دقائق\n✦","md",true)
end
if redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد "..math.floor(hours).." دقيقة","md",true)
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
if tonumber(ballanceed) < 199 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تزرفه فلوسه اقل من 200 دينار 💵","md",true)
end
shkseto = redis:get(KOIA.."shkse"..Remsg.sender_id.user_id)
if shkseto == "طيبة" then
local hrame = math.floor(math.random() * 200) + 1;
local ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
local ballancope = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
zrfne = ballanceed - hrame
zrfnee = ballancope + hrame
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(zrfnee))
redis:set(KOIA.."pirlo"..Remsg.sender_id.user_id , math.floor(zrfne))
redis:setex(KOIA.."hrame" .. Remsg.sender_id.user_id,620, true)
local zoropeo = redis:get(KOIA.."rrfff"..msg.sender_id.user_id) or 0
zoroprod = zoropeo + hrame
redis:set(KOIA.."rrfff"..msg.sender_id.user_id,zoroprod)
redis:sadd(KOIA.."rrfffid",msg.sender_id.user_id)
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد اسم"
end
redis:set(KOIA.."msrokid"..msg.chat_id..Remsg.sender_id.user_id,Remsg.sender_id.user_id)
redis:set(KOIA.."hrameid"..msg.chat_id..Remsg.sender_id.user_id,msg.sender_id.user_id)
redis:set(KOIA.."balcmsrok"..msg.chat_id..Remsg.sender_id.user_id,hrame)
redis:setex(KOIA.."timehrame"..msg.chat_id..msg.sender_id.user_id,30, true)
LuaTele.deleteMessages(msg.chat_id,{[1]= msg.id})
LuaTele.sendText(msg.chat_id,0, "⇜ "..news.." في حرامي زرفك "..hrame.." دينار 💵\n⇜ رد عليه بكلمة ( شرطه )\n⇜ معك 30 ثانية\n✦","md",true)
else
local hrame = math.floor(math.random() * 200) + 1;
local ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
local ballancope = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
zrfne = ballanceed - hrame
zrfnee = ballancope + hrame
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(zrfnee))
redis:set(KOIA.."pirlo"..Remsg.sender_id.user_id , math.floor(zrfne))
redis:setex(KOIA.."hrame" .. Remsg.sender_id.user_id,620, true)
local zoropeo = redis:get(KOIA.."rrfff"..msg.sender_id.user_id) or 0
zoroprod = zoropeo + hrame
redis:set(KOIA.."rrfff"..msg.sender_id.user_id,zoroprod)
redis:sadd(KOIA.."rrfffid",msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ خذ يالحرامي زرفته "..hrame.." دينار 💵\n✦","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text and text:match("^شرطه @(%S+)$") or text and text:match("^شرطة @(%S+)$") then
local UserName = text:match("^شرطه @(%S+)$") or text:match("^شرطة @(%S+)$")
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg.chat_id,msg.id,"\n⇜ مافيه حساب كذا ","md",true)
end
local UserInfo = LuaTele.getUser(UserId_Info.id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg.chat_id,msg.id,"\n⇜ هذا بوت 🤡 ","md",true)  
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local hrameid = redis:get(KOIA.."hrameid"..msg.chat_id..msg.sender_id.user_id)
shkse = redis:get(KOIA.."shkse"..msg.sender_id.user_id)
if shkse == "شريرة" then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ شخصيتك شريرة مايمديك تطلب الشرطة","md",true)
end
if redis:get(KOIA.."timehrame" .. hrameid) then
local hours = redis:ttl(KOIA.."timehrame" .. hrameid)
local msrokid = redis:get(KOIA.."msrokid"..msg.chat_id..msg.sender_id.user_id)
local hrameid = redis:get(KOIA.."hrameid"..msg.chat_id..msg.sender_id.user_id)
local balcmsrok = redis:get(KOIA.."balcmsrok"..msg.chat_id..msg.sender_id.user_id) or 0
if tonumber(hrameid) == UserId_Info.id and tonumber(msrokid) == msg.sender_id.user_id then
local ballancehrame = redis:get(KOIA.."pirlo"..hrameid) or 0
local ballancmsrok = redis:get(KOIA.."pirlo"..msrokid) or 0
ballancehramenow = tonumber(ballancehrame) - tonumber(balcmsrok)
ballancmsroknow = tonumber(ballancmsrok) + tonumber(balcmsrok)
redis:set(KOIA.."pirlo"..hrameid , ballancehramenow)
redis:set(KOIA.."pirlo"..msrokid , ballancmsroknow)
local ban = LuaTele.getUser(hrameid)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد اسم"
end
redis:setex(KOIA.."polic" .. hrameid,620, true)
redis:del(KOIA.."msrokid" ..msg.chat_id..msg.sender_id.user_id) 
redis:del(KOIA.."hrameid" ..msg.chat_id..msg.sender_id.user_id) 
redis:del(KOIA.."balcmsrok" ..msg.chat_id..msg.sender_id.user_id)
redis:del(KOIA.."timehrame" ..msg.chat_id..msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id,"⇜ كفو مسكته الشرطة 👨‍✈️\n⇜ الحرامي : "..news.."\n⇜ تم اعادة فلوسك : "..tonumber(balcmsrok).." دينار 💵\n⇜ سيتم سجن الحرامي\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id,"⇜ تم التحقيق معه وتبين مو هو الحرامي\n⇜ باقي معك "..math.floor(hours).." ثانية\n✦","md",true)
end
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'شرطه' or text == 'الشرطه' or text == 'شرطة' and tonumber(msg.reply_to_message_id) ~= 0 then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)
return false
end
local hrameid = redis:get(KOIA.."hrameid"..msg.chat_id..msg.sender_id.user_id)
shkse = redis:get(KOIA.."shkse"..msg.sender_id.user_id)
if shkse == "شريرة" then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ شخصيتك شريرة مايمديك تطلب الشرطة","md",true)
end
if redis:get(KOIA.."timehrame" .. hrameid) then
local hours = redis:ttl(KOIA.."timehrame" .. hrameid)
local msrokid = redis:get(KOIA.."msrokid"..msg.chat_id..msg.sender_id.user_id)
local hrameid = redis:get(KOIA.."hrameid"..msg.chat_id..msg.sender_id.user_id)
local balcmsrok = redis:get(KOIA.."balcmsrok"..msg.chat_id..msg.sender_id.user_id) or 0
if tonumber(hrameid) == Remsg.sender_id.user_id and tonumber(msrokid) == msg.sender_id.user_id then
local ballancehrame = redis:get(KOIA.."pirlo"..hrameid) or 0
local ballancmsrok = redis:get(KOIA.."pirlo"..msrokid) or 0
ballancehramenow = tonumber(ballancehrame) - tonumber(balcmsrok)
ballancmsroknow = tonumber(ballancmsrok) + tonumber(balcmsrok)
redis:set(KOIA.."pirlo"..hrameid , ballancehramenow)
redis:set(KOIA.."pirlo"..msrokid , ballancmsroknow)
local ban = LuaTele.getUser(hrameid)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد اسم"
end
redis:setex(KOIA.."polic" .. hrameid,620, true)
redis:del(KOIA.."msrokid" ..msg.chat_id..msg.sender_id.user_id) 
redis:del(KOIA.."hrameid" ..msg.chat_id..msg.sender_id.user_id) 
redis:del(KOIA.."balcmsrok" ..msg.chat_id..msg.sender_id.user_id) 
redis:del(KOIA.."timehrame" ..msg.chat_id..msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id,"⇜ كفو مسكته الشرطة 👨‍✈️\n⇜ الحرامي : "..news.."\n⇜ تم اعادة فلوسك : "..tonumber(balcmsrok).." دينار 💵\n⇜ سيتم سجن الحرامي\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id,"⇜ تم التحقيق معه وتبين مو هو الحرامي\n⇜ باقي معك "..math.floor(hours).." ثانية\n✦","md",true)
end
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'راتب' or text == 'راتبي' then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد "..math.floor(hours).." دقيقة","md",true)
end
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد "
end
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
shkse = redis:get(KOIA.."shkse"..msg.sender_id.user_id)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id) or 1
ratbtrans = redis:get(KOIA.."ratbtrans"..msg.sender_id.user_id) or 1
if shkse == "طيبة" then
if tonumber(ratbinc) >= 270 and tonumber(ratbtrans) == 10 then
local ratpep = ballancee + 500000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 300 or tonumber(ratbinc) == 301 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 500000 دينار 💵\n⇜ وظيفتك : ملك 👑\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,300)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 500000 دينار 💵\n⇜ وظيفتك : ملك 👑\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 240 and tonumber(ratbtrans) == 9 then
local ratpep = ballancee + 200000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id) or 0
if tonumber(ratbinc) == 270 or tonumber(ratbinc) == 271 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 200000 دينار 💵\n⇜ وظيفتك : امير 🤵‍♂️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,270)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 200000 دينار 💵\n⇜ وظيفتك : امير 🤵‍♂️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 210 and tonumber(ratbtrans) == 8 then
local ratpep = ballancee + 100000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 240 or tonumber(ratbinc) == 241 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 100000 دينار 💵\n⇜ وظيفتك : وزير 🤵‍♂️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,240)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 100000 دينار 💵\n⇜ وظيفتك : وزير 🤵‍♂️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 180 and tonumber(ratbtrans) == 7 then
local ratpep = ballancee + 70000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 210 or tonumber(ratbinc) == 211 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 70000 دينار 💵\n⇜ وظيفتك : بزنس مان كبير 💸\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,210)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 70000 دينار 💵\n⇜ وظيفتك : بزنس مان كبير 💸\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 150 and tonumber(ratbtrans) == 6 then
local ratpep = ballancee + 40000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 180 or tonumber(ratbinc) == 181 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 40000 دينار 💵\n⇜ وظيفتك : تاجر صغير 💰\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,180)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 40000 دينار 💵\n⇜ وظيفتك : تاجر صغير 💰\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 120 and tonumber(ratbtrans) == 5 then
local ratpep = ballancee + 25000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 150 or tonumber(ratbinc) == 151 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 25000 دينار 💵\n⇜ وظيفتك : طيار 👨‍✈️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,150)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 25000 دينار 💵\n⇜ وظيفتك : طيار 👨‍✈️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 90 and tonumber(ratbtrans) == 4 then
local ratpep = ballancee + 18000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 120 or tonumber(ratbinc) == 121 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 18000 دينار 💵\n⇜ وظيفتك : دكتور ??‍⚕️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,120)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 18000 دينار 💵\n⇜ وظيفتك : دكتور 👨‍⚕️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 60 and tonumber(ratbtrans) == 3 then
local ratpep = ballancee + 9000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 90 or tonumber(ratbinc) == 91 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 9000 دينار 💵\n⇜ وظيفتك : صيدلي 👨‍🔬\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,90)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 9000 دينار 💵\n⇜ وظيفتك : صيدلي 👨‍🔬\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 30 and tonumber(ratbtrans) == 2 then
local ratpep = ballancee + 2500
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 60 or tonumber(ratbinc) == 61 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 2500 دينار 💵\n⇜ وظيفتك : نجار 👨‍🔧\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,60)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 2500 دينار 💵\n⇜ وظيفتك : نجار 👨‍🔧\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 1 and tonumber(ratbtrans) == 1 then
local ratpep = ballancee + 500
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 30 or tonumber(ratbinc) == 31 then
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,30)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 500 دينار 💵\n⇜ وظيفتك : قروي 👨‍🌾\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 500 دينار 💵\n⇜ وظيفتك : قروي 👨‍🌾\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
end
else
if tonumber(ratbinc) >= 270 and tonumber(ratbtrans) == 10 then
local ratpep = ballancee + 500000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 300 or tonumber(ratbinc) == 301 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 500000 دينار 💵\n⇜ وظيفتك : ال تشابو 🧛‍♂️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,300)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 500000 دينار 💵\n⇜ وظيفتك : ال تشابو 🧛‍♂️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 240 and tonumber(ratbtrans) == 9 then
local ratpep = ballancee + 200000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 270 or tonumber(ratbinc) == 271 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 200000 دينار 💵\n⇜ وظيفتك : بائع ممنوعات دولي 🎩\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,270)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 200000 دينار 💵\n⇜ وظيفتك : بائع ممنوعات دولي 🎩\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 210 and tonumber(ratbtrans) == 8 then
local ratpep = ballancee + 100000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 240 or tonumber(ratbinc) == 241 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 100000 دينار 💵\n⇜ وظيفتك : تاجر ممنوعات 🧔‍♂️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,240)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 100000 دينار 💵\n⇜ وظيفتك : تاجر ممنوعات 🧔‍♂️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 180 and tonumber(ratbtrans) == 7 then
local ratpep = ballancee + 70000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 210 or tonumber(ratbinc) == 211 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 70000 دينار 💵\n⇜ وظيفتك : بق بوس العصابة 🗣\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,210)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 70000 دينار 💵\n⇜ وظيفتك : بق بوس العصابة 🗣\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 150 and tonumber(ratbtrans) == 6 then
local ratpep = ballancee + 40000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 180 or tonumber(ratbinc) == 181 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 40000 دينار 💵\n⇜ وظيفتك : مساعد رئيس العصابة 🦹‍♀️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,180)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 40000 دينار 💵\n⇜ وظيفتك : مساعد رئيس العصابة 🦹‍♀️\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 120 and tonumber(ratbtrans) == 5 then
local ratpep = ballancee + 25000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 150 or tonumber(ratbinc) == 151 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 25000 دينار 💵\n⇜ وظيفتك : عضو عصابة 🙍\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,150)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 25000 دينار 💵\n⇜ وظيفتك : عضو عصابة 🙍\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 90 and tonumber(ratbtrans) == 4 then
local ratpep = ballancee + 18000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 120 or tonumber(ratbinc) == 121 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 18000 دينار 💵\n⇜ وظيفتك : قاتل مأجور 🔫\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,120)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 18000 دينار 💵\n⇜ وظيفتك : قاتل مأجور 🔫\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 60 and tonumber(ratbtrans) == 3 then
local ratpep = ballancee + 9000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 90 or tonumber(ratbinc) == 91 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 9000 دينار 💵\n⇜ وظيفتك : قاتل 🕴\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,90)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 9000 دينار 💵\n⇜ وظيفتك : قاتل 🕴\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 30 and tonumber(ratbtrans) == 2 then
local ratpep = ballancee + 2500
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 60 or tonumber(ratbinc) == 61 then
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 2500 دينار 💵\n⇜ وظيفتك : سارق 🥷\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,60)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 2500 دينار 💵\n⇜ وظيفتك : سارق 🥷\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
elseif tonumber(ratbinc) >= 0 and tonumber(ratbtrans) == 1 then
local ratpep = ballancee + 500
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ratpep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,620, true)
redis:incrby(KOIA.."ratbinc"..msg.sender_id.user_id,1)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id)
if tonumber(ratbinc) == 30 or tonumber(ratbinc) == 31 then
redis:set(KOIA.."ratbinc"..msg.sender_id.user_id,30)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 500 دينار 💵\n⇜ وظيفتك : مشرد 👣\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n\nتستطيع الان تطوير راتبك ارسل ( `تطوير راتب` )\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار ايداع "..neews.."\n\n⇜ المبلغ : 500 دينار 💵\n⇜ وظيفتك : مشرد 👣\n⇜ نوع العملية : اضافة راتب\n⇜ تطوير الراتب : "..tonumber(ratbinc).."\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
end
end
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'تطوير راتب' or text == 'تطوير الراتب' or text == 'تطوير راتبي' then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
shkse = redis:get(KOIA.."shkse"..msg.sender_id.user_id)
ratbinc = redis:get(KOIA.."ratbinc"..msg.sender_id.user_id) or 0
ratbtrans = redis:get(KOIA.."ratbtrans"..msg.sender_id.user_id) or 1
if shkse == "طيبة" then
if tonumber(ratbinc) == 270 then
if tonumber(ballanceed) < 1000000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 1000000000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,10)
nowbalc = tonumber(ballancee) - 1000000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 1000000000 دينار 💵\n⇜ اصبحت وظيفتك : ملك 👑\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 240 then
if tonumber(ballanceed) < 200000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 200000000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,9)
nowbalc = tonumber(ballancee) - 200000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 200000000 دينار 💵\n⇜ اصبحت وظيفتك : امير 🤵\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 210 then
if tonumber(ballanceed) < 30000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 30000000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,8)
nowbalc = tonumber(ballancee) - 30000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 30000000 دينار 💵\n⇜ اصبحت وظيفتك : وزير 🤵\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 180 then
if tonumber(ballanceed) < 1000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 1000000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,7)
nowbalc = tonumber(ballancee) - 1000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 1000000 دينار 💵\n⇜ اصبحت وظيفتك : بزنس مان كبير 💸\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 150 then
if tonumber(ballanceed) < 300000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 300000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,6)
nowbalc = tonumber(ballancee) - 300000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 300000 دينار 💵\n⇜ اصبحت وظيفتك : تاجر صغير 💰\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 120 then
if tonumber(ballanceed) < 120000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 120000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,5)
nowbalc = tonumber(ballancee) - 120000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 120000 دينار 💵\n⇜ اصبحت وظيفتك : طيار 👨\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 90 then
if tonumber(ballanceed) < 80000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 80000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,4)
nowbalc = tonumber(ballancee) - 80000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 80000 دينار 💵\n⇜ اصبحت وظيفتك : دكتور 👨\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 60 then
if tonumber(ballanceed) < 30000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 30000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,3)
nowbalc = tonumber(ballancee) - 30000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 30000 دينار 💵\n⇜ اصبحت وظيفتك : صيدلي ‍👨\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 30 then
if tonumber(ballanceed) < 3000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 3000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,2)
nowbalc = tonumber(ballancee) - 3000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 3000 دينار 💵\n⇜ اصبحت وظيفتك : نجار 👨\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
else
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ لا تستطيع تطوير راتبك حالياً\n✦","md",true)
end
else
if tonumber(ratbinc) == 270 then
if tonumber(ballanceed) < 1000000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 1000000000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,10)
nowbalc = tonumber(ballancee) - 1000000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 1000000000 دينار 💵\n⇜ اصبحت وظيفتك : ال تشابو 🧛\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 240 then
if tonumber(ballanceed) < 200000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 200000000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,9)
nowbalc = tonumber(ballancee) - 200000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 200000000 دينار 💵\n⇜ اصبحت وظيفتك : بائع ممنوعات دولي 🎩\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 210 then
if tonumber(ballanceed) < 30000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 30000000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,8)
nowbalc = tonumber(ballancee) - 30000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 30000000 دينار 💵\n⇜ اصبحت وظيفتك : تاجر ممنوعات 🧔‍♂️\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 180 then
if tonumber(ballanceed) < 1000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 1000000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,7)
nowbalc = tonumber(ballancee) - 1000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 1000000 دينار 💵\n⇜ اصبحت وظيفتك : بق بوس العصابة 🗣\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 150 then
if tonumber(ballanceed) < 300000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 300000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,6)
nowbalc = tonumber(ballancee) - 300000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 300000 دينار 💵\n⇜ اصبحت وظيفتك : مساعد رئيس العصابة 🦹\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 120 then
if tonumber(ballanceed) < 120000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 120000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,5)
nowbalc = tonumber(ballancee) - 120000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 120000 دينار 💵\n⇜ اصبحت وظيفتك : عضو عصابة 🙍\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 90 then
if tonumber(ballanceed) < 80000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 80000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,4)
nowbalc = tonumber(ballancee) - 80000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 80000 دينار 💵\n⇜ اصبحت وظيفتك : قاتل مأجور 🔫\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 60 then
if tonumber(ballanceed) < 30000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 30000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,3)
nowbalc = tonumber(ballancee) - 30000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 30000 دينار 💵\n⇜ اصبحت وظيفتك : قاتل 🕴\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
elseif tonumber(ratbinc) == 30 then
if tonumber(ballanceed) < 3000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تطور راتبك تحتاج مبلغ 3000 دينار 💵","md",true)
end
redis:del(KOIA.."ratbtrans"..msg.sender_id.user_id)
redis:set(KOIA.."ratbtrans"..msg.sender_id.user_id,2)
nowbalc = tonumber(ballancee) - 3000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(nowbalc))
local convert_mony = string.format("%.0f",nowbalc)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ اشعار تطوير راتب\n\n⇜ المبلغ : 3000 دينار 💵\n⇜ اصبحت وظيفتك : سارق 🥷\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
else
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ لا تستطيع تطوير راتبك حالياً\n✦","md",true)
end
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
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
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)  
return false
end
if Remsg.sender_id.user_id == msg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهاجم نفسك 🤡*","md",true)  
return false
end
if redis:ttl(KOIA.."attack" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."attack" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ خسرت بأخر معركة استنى "..math.floor(hours).." دقيقة","md",true)
end
if redis:ttl(KOIA.."defen" .. Remsg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."defen" .. Remsg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ الخصم خسر بأخر معركة\n⇜ يمديك تهاجمه بعد "..math.floor(hours).." دقيقة","md",true)
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ballancope = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
if tonumber(ballancope) < 100000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تهجم فلوسك اقل من 100000 دينار 💵","md",true)
end
if tonumber(ballanceed) < 100000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تهجم عليه فلوسه اقل من 100000 دينار 💵","md",true)
end
if tonumber(coniss) < 9999 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح هو 10000 دينار 💵\n✦","md",true)
end
if tonumber(ballancope) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي","md",true)
end
if tonumber(ballanceed) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسه ماتكفي","md",true)
end
local Textinggt = {"1", "2", "3", "4", "5", "6", "7", "8",}
local Descriptioont = Textinggt[math.random(#Textinggt)]
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد اسم "
end
local bann = LuaTele.getUser(Remsg.sender_id.user_id)
if bann.first_name then
neewss = "["..bann.first_name.."](tg://user?id="..bann.id..")"
else
neewss = " لا يوجد اسم"
end
if Descriptioont == "1" or Descriptioont == "3" then
local ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
local ballancope = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
zrfne = ballancope - coniss
drebattack = tonumber(coniss) / 100 * 25
drebattackk = tonumber(coniss) - math.floor(drebattack)
zrfnee = ballanceed + math.floor(drebattackk)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(zrfne))
redis:set(KOIA.."pirlo"..Remsg.sender_id.user_id , math.floor(zrfnee))
redis:setex(KOIA.."attack" .. msg.sender_id.user_id,600, true)
local convert_mony = string.format("%.0f",drebattackk)
local convert_monyy = string.format("%.0f",drebattack)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ لقد خسرت في المعركة "..neews.." 🛡\n⇜ الفائز : "..neewss.."\n⇜ الخاسر : "..neews.."\n⇜ الجائزة : "..convert_mony.." دينار 💵\n⇜ الضريبة : "..convert_monyy.." دينار 💵\n✦","md",true)
elseif Descriptioont == "2" or Descriptioont == "4" or Descriptioont == "5" or  Descriptioont == "6" or Descriptioont == "8" then
local ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
local ballancope = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
begaatt = redis:get(KOIA.."numattack"..msg.sender_id.user_id) or 1000
numattackk = tonumber(begaatt) - 1
if numattackk == 0 then
numattackk = 1
end
attack = coniss / numattackk
zrfne = ballancope + math.floor(attack)
zrfnee = ballanceed - math.floor(attack)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(zrfne))
redis:set(KOIA.."pirlo"..Remsg.sender_id.user_id , math.floor(zrfnee))
redis:setex(KOIA.."defen" .. Remsg.sender_id.user_id,1800, true)
redis:set(KOIA.."numattack"..msg.sender_id.user_id , math.floor(numattackk))
local convert_mony = string.format("%.0f",math.floor(attack))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ لقد فزت في المعركة\n⇜ ودمرت قلعة "..neewss.." 🏰\n⇜ الفائز : "..neews.."\n⇜ الخاسر : "..neewss.."\n⇜ الجائزة : "..convert_mony.." دينار 💵\n⇜ نسبة قوة المهاجم اصبحت "..numattackk.." 🩸\n✦","md",true)
elseif Descriptioont == "7" then
local ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
local ballancope = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
halfzrf = coniss / 2
zrfne = ballancope - halfzrf
zrfnee = ballanceed + halfzrf
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(zrfne))
redis:set(KOIA.."pirlo"..Remsg.sender_id.user_id , math.floor(zrfnee))
redis:setex(KOIA.."attack" .. msg.sender_id.user_id,600, true)
local convert_mony = string.format("%.0f",math.floor(halfzrf))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ لقد خسرت في المعركة "..neews.." 🛡\n⇜ ولكن استطعت اعادة نصف الموارد\n⇜ الفائز : "..neewss.."\n⇜ الخاسر : "..neews.."\n⇜ الجائزة : "..convert_mony.." دينار 💵\n✦","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == "المعرض" or text == "معرض" then
redis:setex(KOIA.."marad" .. msg.chat_id .. ":" .. msg.sender_id.user_id,60, true)
LuaTele.sendText(msg.chat_id,msg.id,[[
– اهلين فيك بمعرض ريد بول
- يتوفر لدينا حالياً :

⇠ `سيارات`  🚗
⇠ `طيارات`  ✈️
⇠ `عقارات`  🏘
⇠ `مجوهرات`  💎

- اضغط للنسخ

✦
]],"md",true)  
return false
end
if text == "سيارات" and redis:get(KOIA.."marad" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
redis:del(KOIA.."marad" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id,[[
– السيارات المتوفرة لدينا حالياً :

⇠ `فيلار` - السعر : 10000000 💵
⇠ `اكسنت` - السعر : 9000000 💵
⇠ `كامري` - السعر : 8000000 💵
⇠ `النترا` - السعر : 7000000 💵
⇠ `هايلكس` - السعر : 6000000 💵
⇠ `سوناتا` - السعر : 5000000 💵
⇠ `كورولا` - السعر : 4000000 💵

- ارسل اسم السيارة والعدد
مثال : شراء سياره فيلار 2

✦
]],"md",true)  
return false
end
if text == "طيارات" and redis:get(KOIA.."marad" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
redis:del(KOIA.."marad" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id,[[
– الطيارات المتوفرة لدينا حالياً :

⇠ `شبح` - السعر : 1000000000 💵
⇠ `سفر` - السعر : 500000000 💵
⇠ `خاصه` - السعر : 200000000 💵

- ارسل اسم الطائرة والعدد
مثال : شراء طياره سفر 2

✦
]],"md",true)  
return false
end
if text == "عقارات" and redis:get(KOIA.."marad" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
redis:del(KOIA.."marad" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id,[[
– العقارات المتوفرة لدينا حالياً :

⇠ `قصر` - السعر : 1000000 💵
⇠ `فيلا` - السعر : 500000 💵
⇠ `منزل` - السعر : 100000 💵

- ارسل اسم العقار والعدد
مثال : شراء قصر 2

✦
]],"md",true)  
return false
end
if text == "مجوهرات" and redis:get(KOIA.."marad" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
redis:del(KOIA.."marad" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id,[[
– المجوهرات المتوفرة لدينا حالياً :

⇠ `ماسه` - السعر : 1000000 💵
⇠ `قلاده` - السعر : 500000 💵
⇠ `سوار` - السعر : 200000 💵
⇠ `خاتم` - السعر : 50000 💵

- ارسل الاسم والعدد
مثال : شراء سوار 2

✦
]],"md",true)  
return false
end
if text and text:match('^شراء ماسه (.*)$') or text and text:match('^شراء ماسة (.*)$') then
local UserName = text:match('^شراء ماسه (.*)$') or text:match('^شراء ماسة (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار ماسه بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
masmgr = tonumber(coniss) * 1000000
if tonumber(ballance) < tonumber(masmgr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local mgrmasname = redis:get(KOIA.."mgrmasname"..msg.sender_id.user_id)
local mgrmasprice = redis:get(KOIA.."mgrmasprice"..msg.sender_id.user_id) or 0
local mgrmasnum = redis:get(KOIA.."mgrmasnum"..msg.sender_id.user_id) or 0
local mgrmasnow = tonumber(mgrmasnum) + tonumber(coniss)
redis:set(KOIA.."mgrmasnum"..msg.sender_id.user_id , mgrmasnow)
masnamed = "ماسه"
redis:set(KOIA.."mgrmasname"..msg.sender_id.user_id , masnamed)
redis:set(KOIA.."mgrmasprice"..msg.sender_id.user_id , 1000000)
totalypalice = tonumber(ballance) - tonumber(masmgr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(masmgr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء مجوهرات\nالنوع : ماسه \nاجمالي السعر : "..convert_monyy.." 💵\nعدد ماساتك : `"..mgrmasnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء قلاده (.*)$') or text and text:match('^شراء قلادة (.*)$') then
local UserName = text:match('^شراء قلاده (.*)$') or text:match('^شراء قلادة (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار قلاده بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
kldmgr = tonumber(coniss) * 500000
if tonumber(ballance) < tonumber(kldmgr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local mgrkldname = redis:get(KOIA.."mgrkldname"..msg.sender_id.user_id)
local mgrkldprice = redis:get(KOIA.."mgrkldprice"..msg.sender_id.user_id) or 0
local mgrkldnum = redis:get(KOIA.."mgrkldnum"..msg.sender_id.user_id) or 0
local mgrkldnow = tonumber(mgrkldnum) + tonumber(coniss)
redis:set(KOIA.."mgrkldnum"..msg.sender_id.user_id , mgrkldnow)
kldnamed = "قلاده"
redis:set(KOIA.."mgrkldname"..msg.sender_id.user_id , kldnamed)
redis:set(KOIA.."mgrkldprice"..msg.sender_id.user_id , 500000)
totalypalice = tonumber(ballance) - tonumber(kldmgr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(kldmgr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء مجوهرات\nالنوع : قلاده \nاجمالي السعر : "..convert_monyy.." 💵\nعدد قلاداتك : `"..mgrkldnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء سوار (.*)$') then
local UserName = text:match('^شراء سوار (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار سوار بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
swrmgr = tonumber(coniss) * 200000
if tonumber(ballance) < tonumber(swrmgr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local mgrswrname = redis:get(KOIA.."mgrswrname"..msg.sender_id.user_id)
local mgrswrprice = redis:get(KOIA.."mgrswrprice"..msg.sender_id.user_id) or 0
local mgrswrnum = redis:get(KOIA.."mgrswrnum"..msg.sender_id.user_id) or 0
local mgrswrnow = tonumber(mgrswrnum) + tonumber(coniss)
redis:set(KOIA.."mgrswrnum"..msg.sender_id.user_id , mgrswrnow)
swrnamed = "سوار"
redis:set(KOIA.."mgrswrname"..msg.sender_id.user_id , swrnamed)
redis:set(KOIA.."mgrswrprice"..msg.sender_id.user_id , 200000)
totalypalice = tonumber(ballance) - tonumber(swrmgr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(swrmgr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء مجوهرات\nالنوع : سوار \nاجمالي السعر : "..convert_monyy.." 💵\nعدد اساورك : `"..mgrswrnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء خاتم (.*)$') then
local UserName = text:match('^شراء خاتم (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار خاتم بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
ktmmgr = tonumber(coniss) * 50000
if tonumber(ballance) < tonumber(ktmmgr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local mgrktmname = redis:get(KOIA.."mgrktmname"..msg.sender_id.user_id)
local mgrktmprice = redis:get(KOIA.."mgrktmprice"..msg.sender_id.user_id) or 0
local mgrktmnum = redis:get(KOIA.."mgrktmnum"..msg.sender_id.user_id) or 0
local mgrktmnow = tonumber(mgrktmnum) + tonumber(coniss)
redis:set(KOIA.."mgrktmnum"..msg.sender_id.user_id , mgrktmnow)
ktmnamed = "خاتم"
redis:set(KOIA.."mgrktmname"..msg.sender_id.user_id , ktmnamed)
redis:set(KOIA.."mgrktmprice"..msg.sender_id.user_id , 50000)
totalypalice = tonumber(ballance) - tonumber(ktmmgr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(ktmmgr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء مجوهرات\nالنوع : خاتم \nاجمالي السعر : "..convert_monyy.." 💵\nعدد خواتمك : `"..mgrktmnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع ماسه (.*)$') then
local UserName = text:match('^بيع ماسه (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local mgrmasnum = redis:get(KOIA.."mgrmasnum"..msg.sender_id.user_id) or 0
if tonumber(mgrmasnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك ماسات ","md",true)
end
if tonumber(mgrmasnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." ماسه","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local mgrmasname = redis:get(KOIA.."mgrmasname"..msg.sender_id.user_id)
local mgrmasprice = redis:get(KOIA.."mgrmasprice"..msg.sender_id.user_id) or 0
local mgrmasnum = redis:get(KOIA.."mgrmasnum"..msg.sender_id.user_id) or 0
local mgrmasnow = tonumber(mgrmasnum) - tonumber(coniss)
redis:set(KOIA.."mgrmasnum"..msg.sender_id.user_id , mgrmasnow)
sellmgr = tonumber(coniss) * 900000
totalypalice = tonumber(ballanceed) + sellmgr
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local mgrmasnum = redis:get(KOIA.."mgrmasnum"..msg.sender_id.user_id) or 0
if tonumber(mgrmasnum) == 0 then
redis:del(KOIA.."mgrmasname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrmasnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع مجوهرات\nالنوع : ماسه \nالعدد : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellmgr).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع قلاده (.*)$') or text and text:match('^شراء قلادة (.*)$') then
local UserName = text:match('^بيع قلاده (.*)$') or text:match('^شراء قلادة (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local mgrkldnum = redis:get(KOIA.."mgrkldnum"..msg.sender_id.user_id) or 0
if tonumber(mgrkldnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك قلادات ","md",true)
end
if tonumber(mgrkldnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." قلاده ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local mgrkldname = redis:get(KOIA.."mgrkldname"..msg.sender_id.user_id)
local mgrkldprice = redis:get(KOIA.."mgrkldprice"..msg.sender_id.user_id) or 0
local mgrkldnum = redis:get(KOIA.."mgrkldnum"..msg.sender_id.user_id) or 0
local mgrkldnow = tonumber(mgrkldnum) - tonumber(coniss)
redis:set(KOIA.."mgrkldnum"..msg.sender_id.user_id , mgrkldnow)
sellkld = tonumber(coniss) * 400000
totalypalice = tonumber(ballanceed) + sellkld
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local mgrkldnum = redis:get(KOIA.."mgrkldnum"..msg.sender_id.user_id) or 0
if tonumber(mgrkldnum) == 0 then
redis:del(KOIA.."mgrkldname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrkldnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع مجوهرات\nالنوع : قلاده \nالعدد : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellkld).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع سوار (.*)$') then
local UserName = text:match('^بيع سوار (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local mgrswrnum = redis:get(KOIA.."mgrswrnum"..msg.sender_id.user_id) or 0
if tonumber(mgrswrnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك اساور ","md",true)
end
if tonumber(mgrswrnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سوار ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local mgrswrname = redis:get(KOIA.."mgrswrname"..msg.sender_id.user_id)
local mgrswrprice = redis:get(KOIA.."mgrswrprice"..msg.sender_id.user_id) or 0
local mgrswrnum = redis:get(KOIA.."mgrswrnum"..msg.sender_id.user_id) or 0
local mgrswrnow = tonumber(mgrswrnum) - tonumber(coniss)
redis:set(KOIA.."mgrswrnum"..msg.sender_id.user_id , mgrswrnow)
sellswr = tonumber(coniss) * 150000
totalypalice = tonumber(ballanceed) + sellswr
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local mgrswrnum = redis:get(KOIA.."mgrswrnum"..msg.sender_id.user_id) or 0
if tonumber(mgrswrnum) == 0 then
redis:del(KOIA.."mgrswrname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrswrnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع مجوهرات\nالنوع : سوار \nالعدد : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellswr).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع خاتم (.*)$') then
local UserName = text:match('^بيع خاتم (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local mgrktmnum = redis:get(KOIA.."mgrktmnum"..msg.sender_id.user_id) or 0
if tonumber(mgrktmnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك خواتم ","md",true)
end
if tonumber(mgrktmnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." خاتم ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local mgrktmname = redis:get(KOIA.."mgrktmname"..msg.sender_id.user_id)
local mgrktmprice = redis:get(KOIA.."mgrktmprice"..msg.sender_id.user_id) or 0
local mgrktmnum = redis:get(KOIA.."mgrktmnum"..msg.sender_id.user_id) or 0
local mgrktmnow = tonumber(mgrktmnum) - tonumber(coniss)
redis:set(KOIA.."mgrktmnum"..msg.sender_id.user_id , mgrktmnow)
sellktm = tonumber(coniss) * 40000
totalypalice = tonumber(ballanceed) + sellktm
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local mgrktmnum = redis:get(KOIA.."mgrktmnum"..msg.sender_id.user_id) or 0
if tonumber(mgrktmnum) == 0 then
redis:del(KOIA.."mgrktmname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrktmnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع مجوهرات\nالنوع : خاتم \nالعدد : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellktm).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء ماسه (.*)$') or text and text:match('^اهداء ماسة (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء ماسه (.*)$') or text:match('^اهداء ماسة (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local mgrmasnum = redis:get(KOIA.."mgrmasnum"..msg.sender_id.user_id) or 0
if tonumber(mgrmasnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك ماسات ","md",true)
end
if tonumber(mgrmasnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." ماسه ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local mgrmasnum = redis:get(KOIA.."mgrmasnum"..msg.sender_id.user_id) or 0
local mgrmasnow = tonumber(mgrmasnum) - tonumber(coniss)
redis:set(KOIA.."mgrmasnum"..msg.sender_id.user_id , mgrmasnow)
local mgrmasnumm = redis:get(KOIA.."mgrmasnum"..Remsg.sender_id.user_id) or 0
local mgrmasnoww = tonumber(mgrmasnumm) + tonumber(coniss)
redis:set(KOIA.."mgrmasnum"..Remsg.sender_id.user_id , mgrmasnoww)
masnamed = "ماسه"
redis:set(KOIA.."mgrmasname"..Remsg.sender_id.user_id,masnamed)
local mgrmasnum = redis:get(KOIA.."mgrmasnum"..msg.sender_id.user_id) or 0
if tonumber(mgrmasnum) == 0 then
redis:del(KOIA.."mgrmasname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrmasnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) ماسه\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء قلاده (.*)$') or text and text:match('^اهداء قلادة (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء قلاده (.*)$') or text:match('^اهداء قلادة (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local mgrkldnum = redis:get(KOIA.."mgrkldnum"..msg.sender_id.user_id) or 0
if tonumber(mgrkldnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك قلادات ","md",true)
end
if tonumber(mgrkldnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." قلاده ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local mgrkldnum = redis:get(KOIA.."mgrkldnum"..msg.sender_id.user_id) or 0
local mgrkldnow = tonumber(mgrkldnum) - tonumber(coniss)
redis:set(KOIA.."mgrkldnum"..msg.sender_id.user_id , mgrkldnow)
local mgrkldnumm = redis:get(KOIA.."mgrkldnum"..Remsg.sender_id.user_id) or 0
local mgrkldnoww = tonumber(mgrkldnumm) + tonumber(coniss)
redis:set(KOIA.."mgrkldnum"..Remsg.sender_id.user_id , mgrkldnoww)
kldnamed = "قلاده"
redis:set(KOIA.."mgrkldname"..Remsg.sender_id.user_id,kldnamed)
local mgrkldnum = redis:get(KOIA.."mgrkldnum"..msg.sender_id.user_id) or 0
if tonumber(mgrkldnum) == 0 then
redis:del(KOIA.."mgrkldname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrkldnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) قلاده\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء سوار (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء سوار (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local mgrswrnum = redis:get(KOIA.."mgrswrnum"..msg.sender_id.user_id) or 0
if tonumber(mgrswrnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك اساور ","md",true)
end
if tonumber(mgrswrnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سوار","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local mgrswrnum = redis:get(KOIA.."mgrswrnum"..msg.sender_id.user_id) or 0
local mgrswrnow = tonumber(mgrswrnum) - tonumber(coniss)
redis:set(KOIA.."mgrswrnum"..msg.sender_id.user_id , mgrswrnow)
local mgrswrnumm = redis:get(KOIA.."mgrswrnum"..Remsg.sender_id.user_id) or 0
local mgrswrnoww = tonumber(mgrswrnumm) + tonumber(coniss)
redis:set(KOIA.."mgrswrnum"..Remsg.sender_id.user_id , mgrswrnoww)
swrnamed = "سوار"
redis:set(KOIA.."mgrswrname"..Remsg.sender_id.user_id,swrnamed)
local mgrswrnum = redis:get(KOIA.."mgrswrnum"..msg.sender_id.user_id) or 0
if tonumber(mgrswrnum) == 0 then
redis:del(KOIA.."mgrswrname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrswrnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) سوار\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء خاتم (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء خاتم (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local mgrktmnum = redis:get(KOIA.."mgrktmnum"..msg.sender_id.user_id) or 0
if tonumber(mgrktmnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك خواتم ","md",true)
end
if tonumber(mgrktmnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." خاتم","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local mgrktmnum = redis:get(KOIA.."mgrktmnum"..msg.sender_id.user_id) or 0
local mgrktmnow = tonumber(mgrktmnum) - tonumber(coniss)
redis:set(KOIA.."mgrktmnum"..msg.sender_id.user_id , mgrktmnow)
local mgrktmnumm = redis:get(KOIA.."mgrktmnum"..Remsg.sender_id.user_id) or 0
local mgrktmnoww = tonumber(mgrktmnumm) + tonumber(coniss)
redis:set(KOIA.."mgrktmnum"..Remsg.sender_id.user_id , mgrktmnoww)
ktmnamed = "خاتم"
redis:set(KOIA.."mgrktmname"..Remsg.sender_id.user_id,ktmnamed)
local mgrktmnum = redis:get(KOIA.."mgrktmnum"..msg.sender_id.user_id) or 0
if tonumber(mgrktmnum) == 0 then
redis:del(KOIA.."mgrktmname"..msg.sender_id.user_id)
redis:del(KOIA.."mgrktmnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) خاتم\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء قصر (.*)$') then
local UserName = text:match('^شراء قصر (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار قصر بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
ksrakr = tonumber(coniss) * 1000000
if tonumber(ballance) < tonumber(ksrakr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local akrksrname = redis:get(KOIA.."akrksrname"..msg.sender_id.user_id)
local akrksrprice = redis:get(KOIA.."akrksrprice"..msg.sender_id.user_id) or 0
local akrksrnum = redis:get(KOIA.."akrksrnum"..msg.sender_id.user_id) or 0
local akrksrnow = tonumber(akrksrnum) + tonumber(coniss)
redis:set(KOIA.."akrksrnum"..msg.sender_id.user_id , akrksrnow)
ksrnamed = "قصر"
redis:set(KOIA.."akrksrname"..msg.sender_id.user_id , ksrnamed)
redis:set(KOIA.."akrksrprice"..msg.sender_id.user_id , 1000000)
totalypalice = tonumber(ballance) - tonumber(ksrakr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(ksrakr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء عقار\nنوع العقار : قصر \nاجمالي السعر : "..convert_monyy.." 💵\nعدد قصورك : `"..akrksrnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء فيلا (.*)$') then
local UserName = text:match('^شراء فيلا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار فيلا بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
felakr = tonumber(coniss) * 500000
if tonumber(ballance) < tonumber(felakr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local akrfelname = redis:get(KOIA.."akrfelname"..msg.sender_id.user_id)
local akrfelprice = redis:get(KOIA.."akrfelprice"..msg.sender_id.user_id) or 0
local akrfelnum = redis:get(KOIA.."akrfelnum"..msg.sender_id.user_id) or 0
local akrfelnow = tonumber(akrfelnum) + tonumber(coniss)
redis:set(KOIA.."akrfelnum"..msg.sender_id.user_id , akrfelnow)
felnamed = "فيلا"
redis:set(KOIA.."akrfelname"..msg.sender_id.user_id , felnamed)
redis:set(KOIA.."akrfelprice"..msg.sender_id.user_id , 500000)
totalypalice = tonumber(ballance) - tonumber(felakr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(felakr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء عقار\nنوع العقار : قصر \nاجمالي السعر : "..convert_monyy.." 💵\nعدد فيلاتك : `"..akrfelnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء منزل (.*)$') then
local UserName = text:match('^شراء منزل (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار منزل بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
mnzakr = tonumber(coniss) * 200000
if tonumber(ballance) < tonumber(mnzakr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local akrmnzname = redis:get(KOIA.."akrmnzname"..msg.sender_id.user_id)
local akrmnzprice = redis:get(KOIA.."akrmnzprice"..msg.sender_id.user_id) or 0
local akrmnznum = redis:get(KOIA.."akrmnznum"..msg.sender_id.user_id) or 0
local akrmnznow = tonumber(akrmnznum) + tonumber(coniss)
redis:set(KOIA.."akrmnznum"..msg.sender_id.user_id , akrmnznow)
mnznamed = "منزل"
redis:set(KOIA.."akrmnzname"..msg.sender_id.user_id , mnznamed)
redis:set(KOIA.."akrmnzprice"..msg.sender_id.user_id , 200000)
totalypalice = tonumber(ballance) - tonumber(mnzakr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(mnzakr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء عقار\nنوع العقار : منزل \nاجمالي السعر : "..convert_monyy.." 💵\nعدد منازلك : `"..akrmnznow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع قصر (.*)$') then
local UserName = text:match('^بيع قصر (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local akrksrnum = redis:get(KOIA.."akrksrnum"..msg.sender_id.user_id) or 0
if tonumber(akrksrnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك قصور ","md",true)
end
if tonumber(akrksrnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." قصر","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local akrksrname = redis:get(KOIA.."akrksrname"..msg.sender_id.user_id)
local akrksrprice = redis:get(KOIA.."akrksrprice"..msg.sender_id.user_id) or 0
local akrksrnum = redis:get(KOIA.."akrksrnum"..msg.sender_id.user_id) or 0
local akrksrnow = tonumber(akrksrnum) - tonumber(coniss)
redis:set(KOIA.."akrksrnum"..msg.sender_id.user_id , akrksrnow)
sellakr = tonumber(coniss) * 900000
totalypalice = tonumber(ballanceed) + sellakr
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local akrksrnum = redis:get(KOIA.."akrksrnum"..msg.sender_id.user_id) or 0
if tonumber(akrksrnum) == 0 then
redis:del(KOIA.."akrksrname"..msg.sender_id.user_id)
redis:del(KOIA.."akrksrnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع عقار\nنوع العقار : قصر \nالعدد : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellakr).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع فيلا (.*)$') then
local UserName = text:match('^بيع فيلا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local akrfelnum = redis:get(KOIA.."akrfelnum"..msg.sender_id.user_id) or 0
if tonumber(akrfelnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك فيلات ","md",true)
end
if tonumber(akrfelnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." فيلا ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local akrfelname = redis:get(KOIA.."akrfelname"..msg.sender_id.user_id)
local akrfelprice = redis:get(KOIA.."akrfelprice"..msg.sender_id.user_id) or 0
local akrfelnum = redis:get(KOIA.."akrfelnum"..msg.sender_id.user_id) or 0
local akrfelnow = tonumber(akrfelnum) - tonumber(coniss)
redis:set(KOIA.."akrfelnum"..msg.sender_id.user_id , akrfelnow)
felakr = tonumber(coniss) * 400000
totalypalice = tonumber(ballanceed) + felakr
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local akrfelnum = redis:get(KOIA.."akrfelnum"..msg.sender_id.user_id) or 0
if tonumber(akrfelnum) == 0 then
redis:del(KOIA.."akrfelname"..msg.sender_id.user_id)
redis:del(KOIA.."akrfelnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع عقار\nنوع العقار : فيلا \nالعدد : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(felakr).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع منزل (.*)$') then
local UserName = text:match('^بيع منزل (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local akrmnznum = redis:get(KOIA.."akrmnznum"..msg.sender_id.user_id) or 0
if tonumber(akrmnznum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك منازل ","md",true)
end
if tonumber(akrmnznum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." منزل ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local akrmnzname = redis:get(KOIA.."akrmnzname"..msg.sender_id.user_id)
local akrmnzprice = redis:get(KOIA.."akrmnzprice"..msg.sender_id.user_id) or 0
local akrmnznum = redis:get(KOIA.."akrmnznum"..msg.sender_id.user_id) or 0
local akrmnznow = tonumber(akrmnznum) - tonumber(coniss)
redis:set(KOIA.."akrmnznum"..msg.sender_id.user_id , akrmnznow)
mnzakr = tonumber(coniss) * 90000
totalypalice = tonumber(ballanceed) + mnzakr
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local akrmnznum = redis:get(KOIA.."akrmnznum"..msg.sender_id.user_id) or 0
if tonumber(akrmnznum) == 0 then
redis:del(KOIA.."akrmnzname"..msg.sender_id.user_id)
redis:del(KOIA.."akrmnznum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع عقار\nنوع العقار : منزل \nالعدد : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(mnzakr).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء قصر (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء قصر (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local akrksrnum = redis:get(KOIA.."akrksrnum"..msg.sender_id.user_id) or 0
if tonumber(akrksrnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك قصور ","md",true)
end
if tonumber(akrksrnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." قصر ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local akrksrnum = redis:get(KOIA.."akrksrnum"..msg.sender_id.user_id) or 0
local akrksrnow = tonumber(akrksrnum) - tonumber(coniss)
redis:set(KOIA.."akrksrnum"..msg.sender_id.user_id , akrksrnow)
local akrksrnumm = redis:get(KOIA.."akrksrnum"..Remsg.sender_id.user_id) or 0
local akrksrnoww = tonumber(akrksrnumm) + tonumber(coniss)
redis:set(KOIA.."akrksrnum"..Remsg.sender_id.user_id , akrksrnoww)
ksrnamed = "قصر"
redis:set(KOIA.."akrksrname"..Remsg.sender_id.user_id,ksrnamed)
local akrksrnum = redis:get(KOIA.."akrksrnum"..msg.sender_id.user_id) or 0
if tonumber(akrksrnum) == 0 then
redis:del(KOIA.."akrksrname"..msg.sender_id.user_id)
redis:del(KOIA.."akrksrnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) قصر\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء فيلا (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء فيلا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local akrfelnum = redis:get(KOIA.."akrfelnum"..msg.sender_id.user_id) or 0
if tonumber(akrfelnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك فيلات ","md",true)
end
if tonumber(akrfelnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." فيلا ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local akrfelnum = redis:get(KOIA.."akrfelnum"..msg.sender_id.user_id) or 0
local akrfelnow = tonumber(akrfelnum) - tonumber(coniss)
redis:set(KOIA.."akrfelnum"..msg.sender_id.user_id , akrfelnow)
local akrfelnumm = redis:get(KOIA.."akrfelnum"..Remsg.sender_id.user_id) or 0
local akrfelnoww = tonumber(akrfelnumm) + tonumber(coniss)
redis:set(KOIA.."akrfelnum"..Remsg.sender_id.user_id , akrfelnoww)
felnamed = "فيلا"
redis:set(KOIA.."akrfelname"..Remsg.sender_id.user_id,felnamed)
local akrfelnum = redis:get(KOIA.."akrfelnum"..msg.sender_id.user_id) or 0
if tonumber(akrfelnum) == 0 then
redis:del(KOIA.."akrfelname"..msg.sender_id.user_id)
redis:del(KOIA.."akrfelnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) فيلا\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء منزل (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء منزل (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local akrmnznum = redis:get(KOIA.."akrmnznum"..msg.sender_id.user_id) or 0
if tonumber(akrmnznum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك منازل ","md",true)
end
if tonumber(akrmnznum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." منزل","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local akrmnznum = redis:get(KOIA.."akrmnznum"..msg.sender_id.user_id) or 0
local akrmnznow = tonumber(akrmnznum) - tonumber(coniss)
redis:set(KOIA.."akrmnznum"..msg.sender_id.user_id , akrmnznow)
local akrmnznumm = redis:get(KOIA.."akrmnznum"..Remsg.sender_id.user_id) or 0
local akrmnznoww = tonumber(akrmnznumm) + tonumber(coniss)
redis:set(KOIA.."akrmnznum"..Remsg.sender_id.user_id , akrmnznoww)
mnznamed = "منزل"
redis:set(KOIA.."akrmnzname"..Remsg.sender_id.user_id,mnznamed)
local akrmnznum = redis:get(KOIA.."akrmnznum"..msg.sender_id.user_id) or 0
if tonumber(akrmnznum) == 0 then
redis:del(KOIA.."akrmnzname"..msg.sender_id.user_id)
redis:del(KOIA.."akrmnznum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) منزل\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء طياره شبح (.*)$') or text and text:match('^شراء طيارة شبح (.*)$') then
local UserName = text:match('^شراء طياره شبح (.*)$') or text:match('^شراء طيارة شبح (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار طياره شبح بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
shbhair = tonumber(coniss) * 1000000000
if tonumber(ballance) < tonumber(shbhair) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local airshbhname = redis:get(KOIA.."airshbhname"..msg.sender_id.user_id)
local airshbhprice = redis:get(KOIA.."airshbhprice"..msg.sender_id.user_id) or 0
local airshbhnum = redis:get(KOIA.."airshbhnum"..msg.sender_id.user_id) or 0
local airshbhnow = tonumber(airshbhnum) + tonumber(coniss)
redis:set(KOIA.."airshbhnum"..msg.sender_id.user_id , airshbhnow)
shbhnamed = "شبح"
redis:set(KOIA.."airshbhname"..msg.sender_id.user_id , shbhnamed)
redis:set(KOIA.."airshbhprice"..msg.sender_id.user_id , 1000000000)
totalypalice = tonumber(ballance) - tonumber(shbhair)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(shbhair))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء طائرة\nنوع الطائرة : شبح \nاجمالي السعر : "..convert_monyy.." 💵\nعدد طائراتك الشبح : `"..airshbhnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء طياره سفر (.*)$') or text and text:match('^شراء طيارة سفر (.*)$') then
local UserName = text:match('^شراء طياره سفر (.*)$') or text:match('^شراء طيارة سفر (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار طياره سفر بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
sfarair = tonumber(coniss) * 500000000
if tonumber(ballance) < tonumber(sfarair) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local airsfarname = redis:get(KOIA.."airsfarname"..msg.sender_id.user_id)
local airsfarprice = redis:get(KOIA.."airsfarprice"..msg.sender_id.user_id) or 0
local airsfarnum = redis:get(KOIA.."airsfarnum"..msg.sender_id.user_id) or 0
local airsfarnow = tonumber(airsfarnum) + tonumber(coniss)
redis:set(KOIA.."airsfarnum"..msg.sender_id.user_id , airsfarnow)
sfarnamed = "سفر"
redis:set(KOIA.."airsfarname"..msg.sender_id.user_id , sfarnamed)
redis:set(KOIA.."airsfarprice"..msg.sender_id.user_id , 500000000)
totalypalice = tonumber(ballance) - tonumber(sfarair)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(sfarair))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء طائرة\nنوع الطائرة : سفر \nاجمالي السعر : "..convert_monyy.." 💵\nعدد طائراتك السفر : `"..airsfarnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء طياره خاصه (.*)$') or text and text:match('^شراء طيارة خاصه (.*)$') then
local UserName = text:match('^شراء طياره خاصه (.*)$') or text:match('^شراء طيارة خاصه (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار طياره خاصه بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
khasair = tonumber(coniss) * 200000000
if tonumber(ballance) < tonumber(khasair) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local airkhasname = redis:get(KOIA.."airkhasname"..msg.sender_id.user_id)
local airkhasprice = redis:get(KOIA.."airkhasprice"..msg.sender_id.user_id) or 0
local airkhasnum = redis:get(KOIA.."airkhasnum"..msg.sender_id.user_id) or 0
local airkhasnow = tonumber(airkhasnum) + tonumber(coniss)
redis:set(KOIA.."airkhasnum"..msg.sender_id.user_id , airkhasnow)
khasnamed = "خاصه"
redis:set(KOIA.."airkhasname"..msg.sender_id.user_id , khasnamed)
redis:set(KOIA.."airkhasprice"..msg.sender_id.user_id , 200000000)
totalypalice = tonumber(ballance) - tonumber(khasair)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(khasair))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء طائرة\nنوع الطائرة : خاصه \nاجمالي السعر : "..convert_monyy.." 💵\nعدد طائراتك الخاصه : `"..airkhasnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع طياره شبح (.*)$') or text and text:match('^بيع طيارة شبح (.*)$') then
local UserName = text:match('^بيع طياره شبح (.*)$') or text:match('^بيع طيارة شبح (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local airshbhnum = redis:get(KOIA.."airshbhnum"..msg.sender_id.user_id) or 0
if tonumber(airshbhnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك طائرات شبح ","md",true)
end
if tonumber(airshbhnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." طيارة شبح ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local airshbhname = redis:get(KOIA.."airshbhname"..msg.sender_id.user_id)
local airshbhprice = redis:get(KOIA.."airshbhprice"..msg.sender_id.user_id) or 0
local airshbhnum = redis:get(KOIA.."airshbhnum"..msg.sender_id.user_id) or 0
local airshbhnow = tonumber(airshbhnum) - tonumber(coniss)
redis:set(KOIA.."airshbhnum"..msg.sender_id.user_id , airshbhnow)
sellair = tonumber(coniss) * 900000000
totalypalice = tonumber(ballanceed) + sellair
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local airshbhnum = redis:get(KOIA.."airshbhnum"..msg.sender_id.user_id) or 0
if tonumber(airshbhnum) == 0 then
redis:del(KOIA.."airshbhname"..msg.sender_id.user_id)
redis:del(KOIA.."airshbhnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع طائرة\nنوع الطائرة : شبح \nعدد الطائرات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellair).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع طياره سفر (.*)$') or text and text:match('^بيع طيارة سفر (.*)$') then
local UserName = text:match('^بيع طياره سفر (.*)$') or text:match('^بيع طيارة سفر (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local airsfarnum = redis:get(KOIA.."airsfarnum"..msg.sender_id.user_id) or 0
if tonumber(airsfarnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك طائرات سفر ","md",true)
end
if tonumber(airsfarnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." طيارة سفر ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local airsfarname = redis:get(KOIA.."airsfarname"..msg.sender_id.user_id)
local airsfarprice = redis:get(KOIA.."airsfarprice"..msg.sender_id.user_id) or 0
local airsfarnum = redis:get(KOIA.."airsfarnum"..msg.sender_id.user_id) or 0
local airsfarnow = tonumber(airsfarnum) - tonumber(coniss)
redis:set(KOIA.."airsfarnum"..msg.sender_id.user_id , airsfarnow)
sellair = tonumber(coniss) * 400000000
totalypalice = tonumber(ballanceed) + sellair
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local airsfarnum = redis:get(KOIA.."airsfarnum"..msg.sender_id.user_id) or 0
if tonumber(airsfarnum) == 0 then
redis:del(KOIA.."airsfarname"..msg.sender_id.user_id)
redis:del(KOIA.."airsfarnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع طائرة\nنوع الطائرة : سفر \nعدد الطائرات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellair).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع طياره خاصه (.*)$') or text and text:match('^بيع طيارة خاصه (.*)$') then
local UserName = text:match('^بيع طياره خاصه (.*)$') or text:match('^بيع طيارة خاصه (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local airkhasnum = redis:get(KOIA.."airkhasnum"..msg.sender_id.user_id) or 0
if tonumber(airkhasnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك طائرات خاصه ","md",true)
end
if tonumber(airkhasnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." طيارة خاصه ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local airkhasname = redis:get(KOIA.."airkhasname"..msg.sender_id.user_id)
local airkhasprice = redis:get(KOIA.."airkhasprice"..msg.sender_id.user_id) or 0
local airkhasnum = redis:get(KOIA.."airkhasnum"..msg.sender_id.user_id) or 0
local airkhasnow = tonumber(airkhasnum) - tonumber(coniss)
redis:set(KOIA.."airkhasnum"..msg.sender_id.user_id , airkhasnow)
sellair = tonumber(coniss) * 150000000
totalypalice = tonumber(ballanceed) + sellair
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local airkhasnum = redis:get(KOIA.."airkhasnum"..msg.sender_id.user_id) or 0
if tonumber(airkhasnum) == 0 then
redis:del(KOIA.."airkhasname"..msg.sender_id.user_id)
redis:del(KOIA.."airkhasnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع طائرة\nنوع الطائرة : خاصه \nعدد الطائرات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellair).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء طائره شبح (.*)$') or text and text:match('^اهداء طائرة شبح (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء طائره شبح (.*)$') or text:match('^اهداء طائرة شبح (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local airshbhnum = redis:get(KOIA.."airshbhnum"..msg.sender_id.user_id) or 0
if tonumber(airshbhnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك طائرات شبح ","md",true)
end
if tonumber(airshbhnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." طائرة شبح ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local airshbhnum = redis:get(KOIA.."airshbhnum"..msg.sender_id.user_id) or 0
local airshbhnow = tonumber(airshbhnum) - tonumber(coniss)
redis:set(KOIA.."airshbhnum"..msg.sender_id.user_id , airshbhnow)
local airshbhnumm = redis:get(KOIA.."airshbhnum"..Remsg.sender_id.user_id) or 0
local airshbhnoww = tonumber(airshbhnumm) + tonumber(coniss)
redis:set(KOIA.."airshbhnum"..Remsg.sender_id.user_id , airshbhnoww)
shbhnamed = "شبح"
redis:set(KOIA.."airshbhname"..Remsg.sender_id.user_id,shbhnamed)
local airshbhnum = redis:get(KOIA.."airshbhnum"..msg.sender_id.user_id) or 0
if tonumber(airshbhnum) == 0 then
redis:del(KOIA.."airshbhname"..msg.sender_id.user_id)
redis:del(KOIA.."airshbhnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) طائرة شبح\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء طائره سفر (.*)$') or text and text:match('^اهداء طائرة سفر (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء طائره سفر (.*)$') or text:match('^اهداء طائرة سفر (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local airsfarnum = redis:get(KOIA.."airsfarnum"..msg.sender_id.user_id) or 0
if tonumber(airsfarnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك طائرات سفر ","md",true)
end
if tonumber(airsfarnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." طائرة سفر ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local airsfarnum = redis:get(KOIA.."airsfarnum"..msg.sender_id.user_id) or 0
local airsfarnow = tonumber(airsfarnum) - tonumber(coniss)
redis:set(KOIA.."airsfarnum"..msg.sender_id.user_id , airsfarnow)
local airsfarnumm = redis:get(KOIA.."airsfarnum"..Remsg.sender_id.user_id) or 0
local airsfarnoww = tonumber(airsfarnumm) + tonumber(coniss)
redis:set(KOIA.."airsfarnum"..Remsg.sender_id.user_id , airsfarnoww)
sfarnamed = "سفر"
redis:set(KOIA.."airsfarname"..Remsg.sender_id.user_id,sfarnamed)
local airsfarnum = redis:get(KOIA.."airsfarnum"..msg.sender_id.user_id) or 0
if tonumber(airsfarnum) == 0 then
redis:del(KOIA.."airsfarname"..msg.sender_id.user_id)
redis:del(KOIA.."airsfarnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) طائرة سفر\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء طائره خاصه (.*)$') or text and text:match('^اهداء طائرة خاصه (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء طائره خاصه (.*)$') or text:match('^اهداء طائرة خاصه (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local airkhasnum = redis:get(KOIA.."airkhasnum"..msg.sender_id.user_id) or 0
if tonumber(airkhasnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك طائرات خاصه ","md",true)
end
if tonumber(airkhasnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." طائرة خاصه ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local airkhasnum = redis:get(KOIA.."airkhasnum"..msg.sender_id.user_id) or 0
local airkhasnow = tonumber(airkhasnum) - tonumber(coniss)
redis:set(KOIA.."airkhasnum"..msg.sender_id.user_id , airkhasnow)
local airkhasnumm = redis:get(KOIA.."airkhasnum"..Remsg.sender_id.user_id) or 0
local airkhasnoww = tonumber(airkhasnumm) + tonumber(coniss)
redis:set(KOIA.."airkhasnum"..Remsg.sender_id.user_id , airkhasnoww)
khasnamed = "خاصه"
redis:set(KOIA.."airkhasname"..Remsg.sender_id.user_id,khasnamed)
local airkhasnum = redis:get(KOIA.."airkhasnum"..msg.sender_id.user_id) or 0
if tonumber(airkhasnum) == 0 then
redis:del(KOIA.."airkhasname"..msg.sender_id.user_id)
redis:del(KOIA.."airkhasnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) طائرة خاصه\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء سياره فيلار (.*)$') or text and text:match('^شراء سيارة فيلار (.*)$') then
local UserName = text:match('^شراء سياره فيلار (.*)$') or text:match('^شراء سيارة فيلار (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار سياره فيلار بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
rangpr = tonumber(coniss) * 10000000
if tonumber(ballance) < tonumber(rangpr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local carrangname = redis:get(KOIA.."carrangname"..msg.sender_id.user_id)
local carrangprice = redis:get(KOIA.."carrangprice"..msg.sender_id.user_id) or 0
local carrangnum = redis:get(KOIA.."carrangnum"..msg.sender_id.user_id) or 0
local carrangnow = tonumber(carrangnum) + tonumber(coniss)
redis:set(KOIA.."carrangnum"..msg.sender_id.user_id , carrangnow)
rangnamed = "فيلار"
redis:set(KOIA.."carrangname"..msg.sender_id.user_id , rangnamed)
redis:set(KOIA.."carrangprice"..msg.sender_id.user_id , 10000000)
totalypalice = tonumber(ballance) - tonumber(rangpr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(rangpr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء سيارة\nنوع السيارة : فيلار \nاجمالي السعر : "..convert_monyy.." 💵\nعدد سياراتك الفيلار : `"..carrangnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء سياره اكسنت (.*)$') or text and text:match('^شراء سيارة اكسنت (.*)$') then
local UserName = text:match('^شراء سياره اكسنت (.*)$') or text:match('^شراء سيارة اكسنت (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار سياره اكسنت بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
accepr = tonumber(coniss) * 9000000
if tonumber(ballance) < tonumber(accepr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local caraccename = redis:get(KOIA.."caraccename"..msg.sender_id.user_id)
local caracceprice = redis:get(KOIA.."caracceprice"..msg.sender_id.user_id) or 0
local caraccenum = redis:get(KOIA.."caraccenum"..msg.sender_id.user_id) or 0
local caraccenow = tonumber(caraccenum) + tonumber(coniss)
redis:set(KOIA.."caraccenum"..msg.sender_id.user_id , caraccenow)
accenamed = "اكسنت"
redis:set(KOIA.."caraccename"..msg.sender_id.user_id , accenamed)
redis:set(KOIA.."caracceprice"..msg.sender_id.user_id , 9000000)
totalypalice = tonumber(ballance) - tonumber(accepr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(accepr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء سيارة\nنوع السيارة : اكسنت \nاجمالي السعر : "..convert_monyy.." 💵\nعدد سياراتك الاكسنت : `"..caraccenow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء سياره كامري (.*)$') or text and text:match('^شراء سيارة كامري (.*)$') then
local UserName = text:match('^شراء سياره كامري (.*)$') or text:match('^شراء سيارة كامري (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار سياره كامري بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
camrpr = tonumber(coniss) * 8000000
if tonumber(ballance) < tonumber(camrpr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local carcamrname = redis:get(KOIA.."carcamrname"..msg.sender_id.user_id)
local carcamrprice = redis:get(KOIA.."carcamrprice"..msg.sender_id.user_id) or 0
local carcamrnum = redis:get(KOIA.."carcamrnum"..msg.sender_id.user_id) or 0
local carcamrnow = tonumber(carcamrnum) + tonumber(coniss)
redis:set(KOIA.."carcamrnum"..msg.sender_id.user_id , carcamrnow)
camrnamed = "كامري"
redis:set(KOIA.."carcamrname"..msg.sender_id.user_id , camrnamed)
redis:set(KOIA.."carcamrprice"..msg.sender_id.user_id , 8000000)
totalypalice = tonumber(ballance) - tonumber(camrpr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(camrpr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء سيارة\nنوع السيارة : كامري \nاجمالي السعر : "..convert_monyy.." 💵\nعدد سياراتك الكامري : `"..carcamrnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء سياره النترا (.*)$') or text and text:match('^شراء سيارة النترا (.*)$') then
local UserName = text:match('^شراء سياره النترا (.*)$') or text:match('^شراء سيارة النترا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار سياره النترا بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
alntrpr = tonumber(coniss) * 7000000
if tonumber(ballance) < tonumber(alntrpr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local caralntrname = redis:get(KOIA.."caralntrname"..msg.sender_id.user_id)
local caralntrprice = redis:get(KOIA.."caralntrprice"..msg.sender_id.user_id) or 0
local caralntrnum = redis:get(KOIA.."caralntrnum"..msg.sender_id.user_id) or 0
local caralntrnow = tonumber(caralntrnum) + tonumber(coniss)
redis:set(KOIA.."caralntrnum"..msg.sender_id.user_id , caralntrnow)
alntrnamed = "النترا"
redis:set(KOIA.."caralntrname"..msg.sender_id.user_id , alntrnamed)
redis:set(KOIA.."caralntrprice"..msg.sender_id.user_id , 7000000)
totalypalice = tonumber(ballance) - tonumber(alntrpr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(alntrpr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء سيارة\nنوع السيارة : النترا \nاجمالي السعر : "..convert_monyy.." 💵\nعدد سياراتك الالنترا : `"..caralntrnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء سياره هايلكس (.*)$') or text and text:match('^شراء سيارة هايلكس (.*)$') then
local UserName = text:match('^شراء سياره هايلكس (.*)$') or text:match('^شراء سيارة هايلكس (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار سياره هايلكس بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
hilxpr = tonumber(coniss) * 6000000
if tonumber(ballance) < tonumber(hilxpr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local carhilxname = redis:get(KOIA.."carhilxname"..msg.sender_id.user_id)
local carhilxprice = redis:get(KOIA.."carhilxprice"..msg.sender_id.user_id) or 0
local carhilxnum = redis:get(KOIA.."carhilxnum"..msg.sender_id.user_id) or 0
local carhilxnow = tonumber(carhilxnum) + tonumber(coniss)
redis:set(KOIA.."carhilxnum"..msg.sender_id.user_id , carhilxnow)
hilxnamed = "هايلكس"
redis:set(KOIA.."carhilxname"..msg.sender_id.user_id , hilxnamed)
redis:set(KOIA.."carhilxprice"..msg.sender_id.user_id , 6000000)
totalypalice = tonumber(ballance) - tonumber(hilxpr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(hilxpr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء سيارة\nنوع السيارة : هايلكس \nاجمالي السعر : "..convert_monyy.." 💵\nعدد سياراتك الهايلكس : `"..carhilxnow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء سياره سوناتا (.*)$') or text and text:match('^شراء سيارة سوناتا (.*)$') then
local UserName = text:match('^شراء سياره سوناتا (.*)$') or text:match('^شراء سيارة سوناتا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار سياره سوناتا بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
sonapr = tonumber(coniss) * 5000000
if tonumber(ballance) < tonumber(sonapr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local carsonaname = redis:get(KOIA.."carsonaname"..msg.sender_id.user_id)
local carsonaprice = redis:get(KOIA.."carsonaprice"..msg.sender_id.user_id) or 0
local carsonanum = redis:get(KOIA.."carsonanum"..msg.sender_id.user_id) or 0
local carsonanow = tonumber(carsonanum) + tonumber(coniss)
redis:set(KOIA.."carsonanum"..msg.sender_id.user_id , carsonanow)
sonanamed = "سوناتا"
redis:set(KOIA.."carsonaname"..msg.sender_id.user_id , sonanamed)
redis:set(KOIA.."carsonaprice"..msg.sender_id.user_id , 5000000)
totalypalice = tonumber(ballance) - tonumber(sonapr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(sonapr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء سيارة\nنوع السيارة : سوناتا \nاجمالي السعر : "..convert_monyy.." 💵\nعدد سياراتك السوناتا : `"..carsonanow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^شراء سياره كورولا (.*)$') or text and text:match('^شراء سيارة كورولا (.*)$') then
local UserName = text:match('^شراء سياره كورولا (.*)$') or text:match('^شراء سيارة كورولا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if tonumber(coniss) > 1000000001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري اكثر من مليار سياره كورولا بعملية وحدة\n✦","md",true)
end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
coropr = tonumber(coniss) * 4000000
if tonumber(ballance) < tonumber(coropr) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تشتري فلوسك ماتكفي","md",true)
end
local carcoroname = redis:get(KOIA.."carcoroname"..msg.sender_id.user_id)
local carcoroprice = redis:get(KOIA.."carcoroprice"..msg.sender_id.user_id) or 0
local carcoronum = redis:get(KOIA.."carcoronum"..msg.sender_id.user_id) or 0
local carcoronow = tonumber(carcoronum) + tonumber(coniss)
redis:set(KOIA.."carcoronum"..msg.sender_id.user_id , carcoronow)
coronamed = "كورولا"
redis:set(KOIA.."carcoroname"..msg.sender_id.user_id , coronamed)
redis:set(KOIA.."carcoroprice"..msg.sender_id.user_id , 4000000)
totalypalice = tonumber(ballance) - tonumber(coropr)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(totalypalice))
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local convert_monyy = string.format("%.0f",math.floor(coropr))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل شراء سيارة\nنوع السيارة : كورولا \nاجمالي السعر : "..convert_monyy.." 💵\nعدد سياراتك الكورولا : `"..carcoronow.."`\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع سياره فيلار (.*)$') or text and text:match('^بيع سيارة فيلار (.*)$') then
local UserName = text:match('^بيع سياره فيلار (.*)$') or text:match('^بيع سيارة فيلار (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carrangnum = redis:get(KOIA.."carrangnum"..msg.sender_id.user_id) or 0
if tonumber(carrangnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات فيلار ","md",true)
end
if tonumber(carrangnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة فيلار ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local carrangname = redis:get(KOIA.."carrangname"..msg.sender_id.user_id)
local carrangprice = redis:get(KOIA.."carrangprice"..msg.sender_id.user_id) or 0
local carrangnum = redis:get(KOIA.."carrangnum"..msg.sender_id.user_id) or 0
local carrangnow = tonumber(carrangnum) - tonumber(coniss)
redis:set(KOIA.."carrangnum"..msg.sender_id.user_id , carrangnow)
sellcar = tonumber(coniss) * 9000000
totalypalice = tonumber(ballanceed) + sellcar
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local convert_mony = string.format("%.0f",math.floor(totalypalice))
local carrangnum = redis:get(KOIA.."carrangnum"..msg.sender_id.user_id) or 0
if tonumber(carrangnum) == 0 then
redis:del(KOIA.."carrangname"..msg.sender_id.user_id)
redis:del(KOIA.."carrangnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع سيارة\nنوع السيارة : فيلار \nعدد السيارات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellcar).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع سياره اكسنت (.*)$') or text and text:match('^بيع سيارة اكسنت (.*)$') then
local UserName = text:match('^بيع سياره اكسنت (.*)$') or text:match('^بيع سيارة اكسنت (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local caraccenum = redis:get(KOIA.."caraccenum"..msg.sender_id.user_id) or 0
if tonumber(caraccenum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات اكسنت ","md",true)
end
if tonumber(caraccenum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة اكسنت ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local caraccename = redis:get(KOIA.."caraccename"..msg.sender_id.user_id)
local caracceprice = redis:get(KOIA.."caracceprice"..msg.sender_id.user_id) or 0
local caraccenum = redis:get(KOIA.."caraccenum"..msg.sender_id.user_id) or 0
local caraccenow = tonumber(caraccenum) - tonumber(coniss)
redis:set(KOIA.."caraccenum"..msg.sender_id.user_id , caraccenow)
sellcar = tonumber(coniss) * 8000000
totalypalice = tonumber(ballanceed) + sellcar
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local caraccenum = redis:get(KOIA.."caraccenum"..msg.sender_id.user_id) or 0
if tonumber(caraccenum) == 0 then
redis:del(KOIA.."caraccename"..msg.sender_id.user_id)
redis:del(KOIA.."caraccenum"..msg.sender_id.user_id)
end
local convert_mony = string.format("%.0f",math.floor(totalypalice))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع سيارة\nنوع السيارة : اكسنت \nعدد السيارات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellcar).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع سياره كامري (.*)$') or text and text:match('^بيع سيارة كامري (.*)$') then
local UserName = text:match('^بيع سياره كامري (.*)$') or text:match('^بيع سيارة كامري (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carcamrnum = redis:get(KOIA.."carcamrnum"..msg.sender_id.user_id) or 0
if tonumber(carcamrnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات كامري ","md",true)
end
if tonumber(carcamrnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة كامري ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local carcamrname = redis:get(KOIA.."carcamrname"..msg.sender_id.user_id)
local carcamrprice = redis:get(KOIA.."carcamrprice"..msg.sender_id.user_id) or 0
local carcamrnum = redis:get(KOIA.."carcamrnum"..msg.sender_id.user_id) or 0
local carcamrnow = tonumber(carcamrnum) - tonumber(coniss)
redis:set(KOIA.."carcamrnum"..msg.sender_id.user_id , carcamrnow)
sellcar = tonumber(coniss) * 7000000
totalypalice = tonumber(ballanceed) + sellcar
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local carcamrnum = redis:get(KOIA.."carcamrnum"..msg.sender_id.user_id) or 0
if tonumber(carcamrnum) == 0 then
redis:del(KOIA.."carcamrname"..msg.sender_id.user_id)
redis:del(KOIA.."carcamrnum"..msg.sender_id.user_id)
end
local convert_mony = string.format("%.0f",math.floor(totalypalice))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع سيارة\nنوع السيارة : كامري \nعدد السيارات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellcar).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع سياره النترا (.*)$') or text and text:match('^بيع سيارة النترا (.*)$') then
local UserName = text:match('^بيع سياره النترا (.*)$') or text:match('^بيع سيارة النترا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local caralntrnum = redis:get(KOIA.."caralntrnum"..msg.sender_id.user_id) or 0
if tonumber(caralntrnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات النترا ","md",true)
end
if tonumber(caralntrnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة النترا ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local caralntrname = redis:get(KOIA.."caralntrname"..msg.sender_id.user_id)
local caralntrprice = redis:get(KOIA.."caralntrprice"..msg.sender_id.user_id) or 0
local caralntrnum = redis:get(KOIA.."caralntrnum"..msg.sender_id.user_id) or 0
local caralntrnow = tonumber(caralntrnum) - tonumber(coniss)
redis:set(KOIA.."caralntrnum"..msg.sender_id.user_id , caralntrnow)
sellcar = tonumber(coniss) * 6000000
totalypalice = tonumber(ballanceed) + sellcar
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local caralntrnum = redis:get(KOIA.."caralntrnum"..msg.sender_id.user_id) or 0
if tonumber(caralntrnum) == 0 then
redis:del(KOIA.."caralntrname"..msg.sender_id.user_id)
redis:del(KOIA.."caralntrnum"..msg.sender_id.user_id)
end
local convert_mony = string.format("%.0f",math.floor(totalypalice))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع سيارة\nنوع السيارة : النترا \nعدد السيارات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellcar).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع سياره هايلكس (.*)$') or text and text:match('^بيع سيارة هايلكس (.*)$') then
local UserName = text:match('^بيع سياره هايلكس (.*)$') or text:match('^بيع سيارة هايلكس (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carhilxnum = redis:get(KOIA.."carhilxnum"..msg.sender_id.user_id) or 0
if tonumber(carhilxnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات هايلكس ","md",true)
end
if tonumber(carhilxnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة هايلكس ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local carhilxname = redis:get(KOIA.."carhilxname"..msg.sender_id.user_id)
local carhilxprice = redis:get(KOIA.."carhilxprice"..msg.sender_id.user_id) or 0
local carhilxnum = redis:get(KOIA.."carhilxnum"..msg.sender_id.user_id) or 0
local carhilxnow = tonumber(carhilxnum) - tonumber(coniss)
redis:set(KOIA.."carhilxnum"..msg.sender_id.user_id , carhilxnow)
sellcar = tonumber(coniss) * 5000000
totalypalice = tonumber(ballanceed) + sellcar
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local carhilxnum = redis:get(KOIA.."carhilxnum"..msg.sender_id.user_id) or 0
if tonumber(carhilxnum) == 0 then
redis:del(KOIA.."carhilxname"..msg.sender_id.user_id)
redis:del(KOIA.."carhilxnum"..msg.sender_id.user_id)
end
local convert_mony = string.format("%.0f",math.floor(totalypalice))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع سيارة\nنوع السيارة : هايلكس \nعدد السيارات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellcar).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع سياره سوناتا (.*)$') or text and text:match('^بيع سيارة سوناتا (.*)$') then
local UserName = text:match('^بيع سياره سوناتا (.*)$') or text:match('^بيع سيارة سوناتا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carsonanum = redis:get(KOIA.."carsonanum"..msg.sender_id.user_id) or 0
if tonumber(carsonanum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات سوناتا ","md",true)
end
if tonumber(carsonanum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة سوناتا ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local carsonaname = redis:get(KOIA.."carsonaname"..msg.sender_id.user_id)
local carsonaprice = redis:get(KOIA.."carsonaprice"..msg.sender_id.user_id) or 0
local carsonanum = redis:get(KOIA.."carsonanum"..msg.sender_id.user_id) or 0
local carsonanow = tonumber(carsonanum) - tonumber(coniss)
redis:set(KOIA.."carsonanum"..msg.sender_id.user_id , carsonanow)
sellcar = tonumber(coniss) * 4000000
totalypalice = tonumber(ballanceed) + sellcar
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local carsonanum = redis:get(KOIA.."carsonanum"..msg.sender_id.user_id) or 0
if tonumber(carsonanum) == 0 then
redis:del(KOIA.."carsonaname"..msg.sender_id.user_id)
redis:del(KOIA.."carsonanum"..msg.sender_id.user_id)
end
local convert_mony = string.format("%.0f",math.floor(totalypalice))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع سيارة\nنوع السيارة : سوناتا \nعدد السيارات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellcar).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^بيع سياره كورولا (.*)$') or text and text:match('^بيع سيارة كورولا (.*)$') then
local UserName = text:match('^بيع سياره كورولا (.*)$') or text:match('^بيع سيارة كورولا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carcoronum = redis:get(KOIA.."carcoronum"..msg.sender_id.user_id) or 0
if tonumber(carcoronum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات كورولا ","md",true)
end
if tonumber(carcoronum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة كورولا ","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local carcoroname = redis:get(KOIA.."carcoroname"..msg.sender_id.user_id)
local carcoroprice = redis:get(KOIA.."carcoroprice"..msg.sender_id.user_id) or 0
local carcoronum = redis:get(KOIA.."carcoronum"..msg.sender_id.user_id) or 0
local carcoronow = tonumber(carcoronum) - tonumber(coniss)
redis:set(KOIA.."carcoronum"..msg.sender_id.user_id , carcoronow)
sellcar = tonumber(coniss) * 3000000
totalypalice = tonumber(ballanceed) + sellcar
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , totalypalice)
local carcoronum = redis:get(KOIA.."carcoronum"..msg.sender_id.user_id) or 0
if tonumber(carcoronum) == 0 then
redis:del(KOIA.."carcoroname"..msg.sender_id.user_id)
redis:del(KOIA.."carcoronum"..msg.sender_id.user_id)
end
local convert_mony = string.format("%.0f",math.floor(totalypalice))
LuaTele.sendText(msg.chat_id,msg.id, "⇜ وصل بيع سيارة\nنوع السيارة : كورولا \nعدد السيارات : "..tonumber(coniss).."\nاجمالي السعر : "..tonumber(sellcar).." 💵\nرصيدك الان : "..convert_mony.."\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء سياره فيلار (.*)$') or text and text:match('^اهداء سيارة فيلار (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء سياره فيلار (.*)$') or text:match('^اهداء سيارة فيلار (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carrangnum = redis:get(KOIA.."carrangnum"..msg.sender_id.user_id) or 0
if tonumber(carrangnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات فيلار ","md",true)
end
if tonumber(carrangnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة فيلار ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local carrangnum = redis:get(KOIA.."carrangnum"..msg.sender_id.user_id) or 0
local carrangnow = tonumber(carrangnum) - tonumber(coniss)
redis:set(KOIA.."carrangnum"..msg.sender_id.user_id , carrangnow)
local carrangnumm = redis:get(KOIA.."carrangnum"..Remsg.sender_id.user_id) or 0
local carrangnoww = tonumber(carrangnumm) + tonumber(coniss)
redis:set(KOIA.."carrangnum"..Remsg.sender_id.user_id , carrangnoww)
rangnamed = "فيلار"
redis:set(KOIA.."carrangname"..Remsg.sender_id.user_id,rangnamed)
local carrangnum = redis:get(KOIA.."carrangnum"..msg.sender_id.user_id) or 0
if tonumber(carrangnum) == 0 then
redis:del(KOIA.."carrangname"..msg.sender_id.user_id)
redis:del(KOIA.."carrangnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) سيارة فيلار\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء سياره اكسنت (.*)$') or text and text:match('^اهداء سيارة اكسنت (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء سياره اكسنت (.*)$') or text:match('^اهداء سيارة اكسنت (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local caraccenum = redis:get(KOIA.."caraccenum"..msg.sender_id.user_id) or 0
if tonumber(caraccenum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات اكسنت ","md",true)
end
if tonumber(caraccenum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة اكسنت ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local caraccenum = redis:get(KOIA.."caraccenum"..msg.sender_id.user_id) or 0
local caraccenow = tonumber(caraccenum) - tonumber(coniss)
redis:set(KOIA.."caraccenum"..msg.sender_id.user_id , caraccenow)
local caraccenumm = redis:get(KOIA.."caraccenum"..Remsg.sender_id.user_id) or 0
local caraccenoww = tonumber(caraccenumm) + tonumber(coniss)
redis:set(KOIA.."caraccenum"..Remsg.sender_id.user_id , caraccenoww)
accenamed = "اكسنت"
redis:set(KOIA.."caraccename"..Remsg.sender_id.user_id,accenamed)
local caraccenum = redis:get(KOIA.."caraccenum"..msg.sender_id.user_id) or 0
if tonumber(caraccenum) == 0 then
redis:del(KOIA.."caraccename"..msg.sender_id.user_id)
redis:del(KOIA.."caraccenum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) سيارة اكسنت\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء سياره كامري (.*)$') or text and text:match('^اهداء سيارة كامري (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء سياره كامري (.*)$') or text:match('^اهداء سيارة كامري (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carcamrnum = redis:get(KOIA.."carcamrnum"..msg.sender_id.user_id) or 0
if tonumber(carcamrnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات كامري ","md",true)
end
if tonumber(carcamrnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة كامري ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local carcamrnum = redis:get(KOIA.."carcamrnum"..msg.sender_id.user_id) or 0
local carcamrnow = tonumber(carcamrnum) - tonumber(coniss)
redis:set(KOIA.."carcamrnum"..msg.sender_id.user_id , carcamrnow)
local carcamrnumm = redis:get(KOIA.."carcamrnum"..Remsg.sender_id.user_id) or 0
local carcamrnoww = tonumber(carcamrnumm) + tonumber(coniss)
redis:set(KOIA.."carcamrnum"..Remsg.sender_id.user_id , carcamrnoww)
camrnamed = "كامري"
redis:set(KOIA.."carcamrname"..Remsg.sender_id.user_id,camrnamed)
local carcamrnum = redis:get(KOIA.."carcamrnum"..msg.sender_id.user_id) or 0
if tonumber(carcamrnum) == 0 then
redis:del(KOIA.."carcamrname"..msg.sender_id.user_id)
redis:del(KOIA.."carcamrnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) سيارة كامري\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء سياره هايلكس (.*)$') or text and text:match('^اهداء سيارة هايلكس (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء سياره هايلكس (.*)$') or text:match('^اهداء سيارة هايلكس (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carhilxnum = redis:get(KOIA.."carhilxnum"..msg.sender_id.user_id) or 0
if tonumber(carhilxnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات هايلكس ","md",true)
end
if tonumber(carhilxnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة هايلكس ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local carhilxnum = redis:get(KOIA.."carhilxnum"..msg.sender_id.user_id) or 0
local carhilxnow = tonumber(carhilxnum) - tonumber(coniss)
redis:set(KOIA.."carhilxnum"..msg.sender_id.user_id , carhilxnow)
local carhilxnumm = redis:get(KOIA.."carhilxnum"..Remsg.sender_id.user_id) or 0
local carhilxnoww = tonumber(carhilxnumm) + tonumber(coniss)
redis:set(KOIA.."carhilxnum"..Remsg.sender_id.user_id , carhilxnoww)
hilxnamed = "هايلكس"
redis:set(KOIA.."carhilxname"..Remsg.sender_id.user_id,hilxnamed)
local carhilxnum = redis:get(KOIA.."carhilxnum"..msg.sender_id.user_id) or 0
if tonumber(carhilxnum) == 0 then
redis:del(KOIA.."carhilxname"..msg.sender_id.user_id)
redis:del(KOIA.."carhilxnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) سيارة هايلكس\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء سياره النترا (.*)$') or text and text:match('^اهداء سيارة النترا (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء سياره النترا (.*)$') or text:match('^اهداء سيارة النترا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local caralntrnum = redis:get(KOIA.."caralntrnum"..msg.sender_id.user_id) or 0
if tonumber(caralntrnum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات النترا ","md",true)
end
if tonumber(caralntrnum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة النترا ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local caralntrnum = redis:get(KOIA.."caralntrnum"..msg.sender_id.user_id) or 0
local caralntrnow = tonumber(caralntrnum) - tonumber(coniss)
redis:set(KOIA.."caralntrnum"..msg.sender_id.user_id , caralntrnow)
local caralntrnumm = redis:get(KOIA.."caralntrnum"..Remsg.sender_id.user_id) or 0
local caralntrnoww = tonumber(caralntrnumm) + tonumber(coniss)
redis:set(KOIA.."caralntrnum"..Remsg.sender_id.user_id , caralntrnoww)
alntrnamed = "النترا"
redis:set(KOIA.."caralntrname"..Remsg.sender_id.user_id,alntrnamed)
local caralntrnum = redis:get(KOIA.."caralntrnum"..msg.sender_id.user_id) or 0
if tonumber(caralntrnum) == 0 then
redis:del(KOIA.."caralntrname"..msg.sender_id.user_id)
redis:del(KOIA.."caralntrnum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) سيارة النترا\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء سياره سوناتا (.*)$') or text and text:match('^اهداء سيارة سوناتا (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء سياره سوناتا (.*)$') or text:match('^اهداء سيارة سوناتا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carsonanum = redis:get(KOIA.."carsonanum"..msg.sender_id.user_id) or 0
if tonumber(carsonanum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات سوناتا ","md",true)
end
if tonumber(carsonanum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة سوناتا ","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local carsonanum = redis:get(KOIA.."carsonanum"..msg.sender_id.user_id) or 0
local carsonanow = tonumber(carsonanum) - tonumber(coniss)
redis:set(KOIA.."carsonanum"..msg.sender_id.user_id , carsonanow)
local carsonanumm = redis:get(KOIA.."carsonanum"..Remsg.sender_id.user_id) or 0
local carsonanoww = tonumber(carsonanumm) + tonumber(coniss)
redis:set(KOIA.."carsonanum"..Remsg.sender_id.user_id , carsonanoww)
sonanamed = "سوناتا"
redis:set(KOIA.."carsonaname"..Remsg.sender_id.user_id,sonanamed)
local carsonanum = redis:get(KOIA.."carsonanum"..msg.sender_id.user_id) or 0
if tonumber(carsonanum) == 0 then
redis:del(KOIA.."carsonaname"..msg.sender_id.user_id)
redis:del(KOIA.."carsonanum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) سيارة سوناتا\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('^اهداء سياره كورولا (.*)$') or text and text:match('^اهداء سيارة كورولا (.*)$') and tonumber(msg.reply_to_message_id) ~= 0 then
local UserName = text:match('^اهداء سياره كورولا (.*)$') or text:match('^اهداء سيارة كورولا (.*)$')
local coniss = coin(UserName)
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local carcoronum = redis:get(KOIA.."carcoronum"..msg.sender_id.user_id) or 0
if tonumber(carcoronum) == 0 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك سيارات كورولا ","md",true)
end
if tonumber(carcoronum) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك "..tonumber(coniss).." سيارة كورولا","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ تهدي نفسك 🤡*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local carcoronum = redis:get(KOIA.."carcoronum"..msg.sender_id.user_id) or 0
local carcoronow = tonumber(carcoronum) - tonumber(coniss)
redis:set(KOIA.."carcoronum"..msg.sender_id.user_id , carcoronow)
local carcoronumm = redis:get(KOIA.."carcoronum"..Remsg.sender_id.user_id) or 0
local carcoronoww = tonumber(carcoronumm) + tonumber(coniss)
redis:set(KOIA.."carcoronum"..Remsg.sender_id.user_id , carcoronoww)
coronamed = "كورولا"
redis:set(KOIA.."carcoroname"..Remsg.sender_id.user_id,coronamed)
local carcoronum = redis:get(KOIA.."carcoronum"..msg.sender_id.user_id) or 0
if tonumber(carcoronum) == 0 then
redis:del(KOIA.."carcoroname"..msg.sender_id.user_id)
redis:del(KOIA.."carcoronum"..msg.sender_id.user_id)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم اهديته ( "..tonumber(coniss).." ) سيارة كورولا\n\n⇜ اكتب `ممتلكاتي` لعرض جميع ممتلكاتك \n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
----------
if text == "ممتلكاتي" or text == "ممتلكات" then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local mgrmasname = redis:get(KOIA.."mgrmasname"..msg.sender_id.user_id)
local mgrmasnum = redis:get(KOIA.."mgrmasnum"..msg.sender_id.user_id) or 0
if mgrmasname then
mgrmasnamee = "- "..mgrmasname.." : ( `"..mgrmasnum.."` ) \n"
else
mgrmasnamee = ""
end
local mgrkldname = redis:get(KOIA.."mgrkldname"..msg.sender_id.user_id)
local mgrkldnum = redis:get(KOIA.."mgrkldnum"..msg.sender_id.user_id) or 0
if mgrkldname then
mgrkldnamee = "- "..mgrkldname.." : ( `"..mgrkldnum.."` ) \n"
else
mgrkldnamee = ""
end
local mgrswrname = redis:get(KOIA.."mgrswrname"..msg.sender_id.user_id)
local mgrswrnum = redis:get(KOIA.."mgrswrnum"..msg.sender_id.user_id) or 0
if mgrswrname then
mgrswrnamee = "- "..mgrswrname.." : ( `"..mgrswrnum.."` ) \n"
else
mgrswrnamee = ""
end
local mgrktmname = redis:get(KOIA.."mgrktmname"..msg.sender_id.user_id)
local mgrktmnum = redis:get(KOIA.."mgrktmnum"..msg.sender_id.user_id) or 0
if mgrktmname then
mgrktmnamee = "- "..mgrktmname.." : ( `"..mgrktmnum.."` ) \n"
else
mgrktmnamee = ""
end
local akrksrname = redis:get(KOIA.."akrksrname"..msg.sender_id.user_id)
local akrksrnum = redis:get(KOIA.."akrksrnum"..msg.sender_id.user_id) or 0
if akrksrname then
akrksrnamee = "- "..akrksrname.." : ( `"..akrksrnum.."` ) \n"
else
akrksrnamee = ""
end
local akrfelname = redis:get(KOIA.."akrfelname"..msg.sender_id.user_id)
local akrfelnum = redis:get(KOIA.."akrfelnum"..msg.sender_id.user_id) or 0
if akrfelname then
akrfelnamee = "- "..akrfelname.." : ( `"..akrfelnum.."` ) \n"
else
akrfelnamee = ""
end
local akrmnzname = redis:get(KOIA.."akrmnzname"..msg.sender_id.user_id)
local akrmnznum = redis:get(KOIA.."akrmnznum"..msg.sender_id.user_id) or 0
if akrmnzname then
akrmnznamee = "- "..akrmnzname.." : ( `"..akrmnznum.."` ) \n"
else
akrmnznamee = ""
end
local airshbhname = redis:get(KOIA.."airshbhname"..msg.sender_id.user_id)
local airshbhnum = redis:get(KOIA.."airshbhnum"..msg.sender_id.user_id) or 0
if airshbhname then
airshbhnamee = "- "..airshbhname.." : ( `"..airshbhnum.."` ) \n"
else
airshbhnamee = ""
end
local airsfarname = redis:get(KOIA.."airsfarname"..msg.sender_id.user_id)
local airsfarnum = redis:get(KOIA.."airsfarnum"..msg.sender_id.user_id) or 0
if airsfarname then
airsfarnamee = "- "..airsfarname.." : ( `"..airsfarnum.."` ) \n"
else
airsfarnamee = ""
end
local airkhasname = redis:get(KOIA.."airkhasname"..msg.sender_id.user_id)
local airkhasnum = redis:get(KOIA.."airkhasnum"..msg.sender_id.user_id) or 0
if airkhasname then
airkhasnamee = "- "..airkhasname.." : ( `"..airkhasnum.."` ) \n"
else
airkhasnamee = ""
end
local carrangname = redis:get(KOIA.."carrangname"..msg.sender_id.user_id)
local carrangnum = redis:get(KOIA.."carrangnum"..msg.sender_id.user_id) or 0
if carrangname then
carrangnamee = "- "..carrangname.." : ( `"..carrangnum.."` ) \n"
else
carrangnamee = ""
end
local caraccename = redis:get(KOIA.."caraccename"..msg.sender_id.user_id)
local caraccenum = redis:get(KOIA.."caraccenum"..msg.sender_id.user_id) or 0
if caraccename then
caraccenamee = "- "..caraccename.." : ( `"..caraccenum.."` ) \n"
else
caraccenamee = ""
end
local carcamrname = redis:get(KOIA.."carcamrname"..msg.sender_id.user_id)
local carcamrnum = redis:get(KOIA.."carcamrnum"..msg.sender_id.user_id) or 0
if carcamrname then
carcamrnamee = "- "..carcamrname.." : ( `"..carcamrnum.."` ) \n"
else
carcamrnamee = ""
end
local caralntrname = redis:get(KOIA.."caralntrname"..msg.sender_id.user_id)
local caralntrnum = redis:get(KOIA.."caralntrnum"..msg.sender_id.user_id) or 0
if caralntrname then
caralntrnamee = "- "..caralntrname.." : ( `"..caralntrnum.."` ) \n"
else
caralntrnamee = ""
end
local carhilxname = redis:get(KOIA.."carhilxname"..msg.sender_id.user_id)
local carhilxnum = redis:get(KOIA.."carhilxnum"..msg.sender_id.user_id) or 0
if carhilxname then
carhilxnamee = "- "..carhilxname.." : ( `"..carhilxnum.."` ) \n"
else
carhilxnamee = ""
end
local carsonaname = redis:get(KOIA.."carsonaname"..msg.sender_id.user_id)
local carsonanum = redis:get(KOIA.."carsonanum"..msg.sender_id.user_id) or 0
if carsonaname then
carsonanamee = "- "..carsonaname.." : ( `"..carsonanum.."` ) \n"
else
carsonanamee = ""
end
local carcoroname = redis:get(KOIA.."carcoroname"..msg.sender_id.user_id)
local carcoronum = redis:get(KOIA.."carcoronum"..msg.sender_id.user_id) or 0
if carcoroname then
carcoronamee = "- "..carcoroname.." : ( `"..carcoronum.."` ) \n"
else
carcoronamee = ""
end
if akrksrnum == 0 and akrfelnum == 0 and akrmnznum == 0 and mgrmasnum == 0 and mgrkldnum == 0 and mgrswrnum == 0 and mgrktmnum == 0 and airshbhnum == 0 and airsfarnum == 0 and airkhasnum == 0 and carrangnum == 0 and caraccenum == 0 and carcamrnum == 0 and caralntrnum == 0 and carhilxnum == 0 and carsonanum == 0 and carcoronum == 0 then
LuaTele.sendText(msg.chat_id,msg.id, "⇜ لا يوجد لديك ممتلكات\nتستطيع الشراء عن طريق ارسال كلمة ( `المعرض` )\n\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مجوهراتك : 💎\n\n"..mgrmasnamee..""..mgrkldnamee..""..mgrswrnamee..""..mgrktmnamee.."\n⇜ عقاراتك : 🏘\n\n"..akrksrnamee..""..akrfelnamee..""..akrmnznamee.."\n⇜ طائراتك : ✈️\n\n"..airshbhnamee..""..airsfarnamee..""..airkhasnamee.."\n⇜ سياراتك : 🚗\n\n"..carrangnamee..""..caraccenamee..""..carcamrnamee..""..caralntrnamee..""..carhilxnamee..""..carsonanamee..""..carcoronamee.."\n\n⇜ تستطيع بيع او اهداء ممتلكاتك\nمثال :\nبيع فيلا 4 \nاهداء طائره شبح 2 ( بالرد ) \n\n✦","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
----------
if text == 'مسح لعبه الزواج' then
if devS(msg.sender_id.user_id) then
local zwag_users = redis:smembers(KOIA.."roogg1")
for k,v in pairs(zwag_users) do
redis:del(KOIA.."roog1"..v)
redis:del(KOIA.."rooga1"..v)
redis:del(KOIA.."rahr1"..v)
redis:del(KOIA.."rahrr1"..v)
redis:del(KOIA.."roogte1"..v)
end
local zwaga_users = redis:smembers(KOIA.."roogga1")
for k,v in pairs(zwaga_users) do
redis:del(KOIA.."roog1"..v)
redis:del(KOIA.."rooga1"..v)
redis:del(KOIA.."rahr1"..v)
redis:del(KOIA.."rahrr1"..v)
redis:del(KOIA.."roogte1"..v)
end
redis:del(KOIA.."roogga1")
redis:del(KOIA.."roogg1")
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مسحت لعبه الزواج","md",true)
end
end
if text == 'زواج' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`زواج` المهر","md",true)
end
if text and text:match("^زواج (%d+)$") and msg.reply_to_message_id == 0 then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`زواج` المهر ( بالرد )","md",true)
end
if text and text:match("^زواج (.*)$") and msg.reply_to_message_id ~= 0 then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

local UserName = text:match('^زواج (.*)$')
local coniss = coin(UserName)
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ زوجتك نفسي 🤣😒*","md",true)  
return false
end
if redis:get(KOIA.."zwag_request:"..msg.sender_id.user_id) then 
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ في طلب باسمك انتظر قليلاً \n✦","md",true)
end
if tonumber(coniss) < 10000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح به هو 10000 دينار \n✦","md",true)
end
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 10000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
if tonumber(coniss) > tonumber(ballancee) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي\n✦","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول مو للزواج 🤣*","md",true)  
return false
end
if redis:get(KOIA.."roog1"..msg.sender_id.user_id) then
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ابك تراك متزوج !!","md",true)
return false
end
if redis:get(KOIA.."rooga1"..msg.sender_id.user_id) then
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ابك تراك متزوج !!","md",true)
return false
end
if redis:get(KOIA.."roog1"..Remsg.sender_id.user_id) then
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ابعد بعيد لاتحوس وتدور حول المتزوجين","md",true)
return false
end
if redis:get(KOIA.."rooga1"..Remsg.sender_id.user_id) then
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ابعد بعيد لاتحوس وتدور حول المتزوجين","md",true)
return false
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local zwg = LuaTele.getUser(msg.sender_id.user_id)
local zwga = LuaTele.getUser(Remsg.sender_id.user_id)
local zwg_tag = '['..zwg.first_name.."](tg://user?id="..msg.sender_id.user_id..")"
local zwga_tag = '['..zwga.first_name.."](tg://user?id="..Remsg.sender_id.user_id..")"
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'موافقة', data =Remsg.sender_id.user_id.."/zwag_yes/"..msg.sender_id.user_id.."/mahr/"..coniss},{text = 'غير موافقة', data = Remsg.sender_id.user_id.."/zwag_no/"..msg.sender_id.user_id},
},
}
}
redis:setex(KOIA.."zwag_request:"..msg.sender_id.user_id,60,true)
redis:setex(KOIA.."zwag_request:"..Remsg.sender_id.user_id,60,true)
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ الزوج : "..zwg_tag.."\n⇜ الزوجة : "..zwga_tag.."\n⇜ المهر : "..coniss.."\n⇜ شو رايك معاكي دقيقه وينتهي الطلب ؟","md",false, false, false, false, reply_markup)
else
return LuaTele.sendText(msg.chat_id,msg.reply_to_message_id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == "زواجات غش" then
if devS(msg.sender_id.user_id) then𖤐 local zwag_users = redis:smembers(KOIA.."roogg1")𖤐 if #zwag_users == 0 then𖤐 return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مافي زواجات حاليا","md",true)𖤐 end𖤐 top_zwag = "توب 30 اغلى زواجات :\n\n"𖤐 zwag_list = {}𖤐 for k,v in pairs(zwag_users) do𖤐 local mahr = redis:get(KOIA.."rahr1"..v)𖤐 local zwga = redis:get(KOIA.."rooga1"..v)𖤐 table.insert(zwag_list, {tonumber(mahr) , v , zwga})𖤐 end𖤐 table.sort(zwag_list, function(a, b) return a[1] > b[1] end)𖤐 znum = 1𖤐 zwag_emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)",
"21)",
"22)",
"23)",
"24)",
"25)",
"26)",
"27)",
"28)",
"29)",
"30)"𖤐 }𖤐 for k,v in pairs(zwag_list) do𖤐 if znum <= 30 then𖤐 local zwg_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"𖤐 local zwg_tag = '['..zwg_name..'](tg://user?id='..v[2]..')'𖤐 local zwga_name = LuaTele.getUser(v[3]).first_name or redis:get(KOIA..v[3].."first_name:") or "لا يوجد اسم"𖤐 local zwga_tag = '['..zwga_name..'](tg://user?id='..v[3]..')'
tt =  '['..zwg_name..'](tg://user?id='..v[2]..')'
kk = '['..zwga_name..'](tg://user?id='..v[3]..')'
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = zwag_emoji[k]
znum = znum + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_zwag = top_zwag..emo.." "..gflos.." 💵 l "..tt.." 👫 "..kk.."\n"
gg = "\n\nملاحظة : اي شخص مخالف للعبة بالحراميه او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"𖤐 end𖤐 end𖤐 local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'RedBull', url="t.me/allush3"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,top_zwag,"md",false, false, false, false, reply_markup)𖤐 end𖤐 end
if text == "توب زواج" or text == "توب متزوجات" or text == "توب زوجات" or text == "توب زواجات" or text == "زواجات" or text == "الزواجات" then𖤐 local zwag_users = redis:smembers(KOIA.."roogg1")𖤐 if #zwag_users == 0 then𖤐 return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مافي زواجات حاليا","md",true)𖤐 end𖤐 top_zwag = "توب 30 اغلى زواجات :\n\n"𖤐 zwag_list = {}𖤐 for k,v in pairs(zwag_users) do𖤐 local mahr = redis:get(KOIA.."rahr1"..v)𖤐 local zwga = redis:get(KOIA.."rooga1"..v)𖤐 table.insert(zwag_list, {tonumber(mahr) , v , zwga})𖤐 end𖤐 table.sort(zwag_list, function(a, b) return a[1] > b[1] end)𖤐 znum = 1𖤐 zwag_emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)",
"21)",
"22)",
"23)",
"24)",
"25)",
"26)",
"27)",
"28)",
"29)",
"30)"𖤐 }𖤐 for k,v in pairs(zwag_list) do𖤐 if znum <= 30 then𖤐 local zwg_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"𖤐 local zwga_name = LuaTele.getUser(v[3]).first_name or redis:get(KOIA..v[3].."first_name:") or "لا يوجد اسم"
tt =  "["..zwg_name.."]("..zwg_name..")"
kk = "["..zwga_name.."]("..zwga_name..")"
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = zwag_emoji[k]
znum = znum + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_zwag = top_zwag..emo.." "..gflos.." 💵 l "..tt.." 👫 "..kk.."\n"
gg = "\n\nملاحظة : اي شخص مخالف للعبة بالحراميه او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"𖤐 end𖤐 end𖤐 local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'RedBull', url="t.me/allush3"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,top_zwag..gg,"md",false, false, false, false, reply_markup)𖤐 end
if text == 'زواجي' then
if redis:sismember(KOIA.."roogg1",msg.sender_id.user_id) or redis:sismember(KOIA.."roogga1",msg.sender_id.user_id) then
local zoog = redis:get(KOIA.."roog1"..msg.sender_id.user_id)
local zooga = redis:get(KOIA.."rooga1"..msg.sender_id.user_id)
local mahr = redis:get(KOIA.."rahr1"..msg.sender_id.user_id)
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
LuaTele.sendText(msg.chat_id,msg.id, "⌯ وثيقة الزواج حقتك :\n\n⇜ الزوج "..neews.." 🤵🏻\n⇜ الزوجة "..newws.." 👰🏻‍♀️\n⇜ المهر : "..convert_mony.." دينار 💵","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ انت اعزب","md",true)
end
end
if text == 'زوجها' or text == "زوجته" or text == "جوزها" or text == "زوجتو" or text == "زواجه" and msg.reply_to_message_id ~= 0 then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ لا تكشف نفسك وتخسر فلوس عالفاضي\n اكتب `زواجي`*","md",true)  
return false
end
if redis:sismember(KOIA.."roogg1",Remsg.sender_id.user_id) or redis:sismember(KOIA.."roogga1",Remsg.sender_id.user_id) then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 100 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول مو متزوجه 🤣*","md",true)  
return false
end
local zoog = redis:get(KOIA.."roog1"..Remsg.sender_id.user_id)
local zooga = redis:get(KOIA.."rooga1"..Remsg.sender_id.user_id)
local mahr = redis:get(KOIA.."rahr1"..Remsg.sender_id.user_id)
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
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(otheka))
LuaTele.sendText(msg.chat_id,msg.id, "⌯ وثيقة الزواج حقته :\n\n⇜ الزوج "..neews.." 🤵🏻\n⇜ الزوجة "..newws.." 👰🏻‍♀️\n⇜ المهر : "..convert_mony.." دينار 💵","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مسكين اعزب مو متزوج","md",true)
end
end
if text == 'طلاق' then
if redis:sismember(KOIA.."roogg1",msg.sender_id.user_id) or redis:sismember(KOIA.."roogga1",msg.sender_id.user_id) then
local zoog = redis:get(KOIA.."roog1"..msg.sender_id.user_id)
local zooga = tonumber(redis:get(KOIA.."rooga1"..msg.sender_id.user_id))
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
redis:srem(KOIA.."roogg1", msg.sender_id.user_id)
redis:srem(KOIA.."roogga1", msg.sender_id.user_id)
redis:del(KOIA.."roog1"..msg.sender_id.user_id)
redis:del(KOIA.."rooga1"..msg.sender_id.user_id)
redis:del(KOIA.."rahr1"..msg.sender_id.user_id)
redis:del(KOIA.."rahrr1"..msg.sender_id.user_id)
redis:srem(KOIA.."roogg1", zooga)
redis:srem(KOIA.."roogga1", zooga)
redis:del(KOIA.."roog1"..zooga)
redis:del(KOIA.."rooga1"..zooga)
redis:del(KOIA.."rahr1"..zooga)
redis:del(KOIA.."rahrr1"..zooga)
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ تدلل طلقتك من زوجتك "..newws.."","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الطلاق للزوج فقط","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ انت اعزب","md",true)
end
end
if text == 'خلع' then
if redis:sismember(KOIA.."roogg1",msg.sender_id.user_id) or redis:sismember(KOIA.."roogga1",msg.sender_id.user_id) then
local zoog = redis:get(KOIA.."roog1"..msg.sender_id.user_id)
local zooga = redis:get(KOIA.."rooga1"..msg.sender_id.user_id)
if tonumber(zooga) == msg.sender_id.user_id then
local mahrr = redis:get(KOIA.."rahrr1"..msg.sender_id.user_id)
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
ballancee = redis:get(KOIA.."pirlo"..zoog) or 0
kalea = ballancee + mahrr
redis:set(KOIA.."pirlo"..zoog , kalea)
local convert_mony = string.format("%.0f",mahrr)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ خلعت زوجك "..neews.."\n⇜ ورجعت له المهر ( "..convert_mony.." دينار 💵 )","md",true)
redis:srem(KOIA.."roogg1", zoog)
redis:srem(KOIA.."roogga1", zoog)
redis:del(KOIA.."roog1"..zoog)
redis:del(KOIA.."rooga1"..zoog)
redis:del(KOIA.."rahr1"..zoog)
redis:del(KOIA.."rahrr1"..zoog)
redis:srem(KOIA.."roogg1", msg.sender_id.user_id)
redis:srem(KOIA.."roogga1", msg.sender_id.user_id)
redis:del(KOIA.."roog1"..msg.sender_id.user_id)
redis:del(KOIA.."rooga1"..msg.sender_id.user_id)
redis:del(KOIA.."rahr1"..msg.sender_id.user_id)
redis:del(KOIA.."rahrr1"..msg.sender_id.user_id)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الخلع للزوجات فقط","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ انت اعزب","md",true)
end
end
if text == 'تفعيل السوق' or text == 'تفعيل سوق' or text == 'فتح سوق' or text == 'فتح السوق' then
if not Administrator(msg) then
return LuaTele.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص الادمن* ',"md",true)  
end
redis:set(KOIA.."market"..msg.chat_id,true) 
LuaTele.sendText(msg.chat_id,msg.id,Reply_Status(msg.sender_id.user_id,"*⇜ تدلل فتحت السوق *").by,"md",true)
end
if text == 'تعطيل السوق' or text == 'تعطيل سوق' or text == 'قفل سوق' or text == 'قفل السوق' then
if not Administrator(msg) then
return LuaTele.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص الادمن* ',"md",true)  
end
redis:del(KOIA.."market"..msg.chat_id) 
LuaTele.sendText(msg.chat_id,msg.id,Reply_Status(msg.sender_id.user_id,"*⇜ تدلل قفلت السوق *").by,"md",true)
end
if text == "السوق" or text == "سوق" then
if not redis:get(KOIA.."market"..msg.chat_id) then
return LuaTele.sendText(msg.chat_id,msg.id," • السوق مقفل من قبل المشرفين","md",true)
end
local pricemarket = "⇜ اهلين فيك في سوق ريد بول\nلائحة باسعار منتجات ريد بول :\n\n1) كشف وثيقة زواج 100 دينار 💵\n2) رتبه 5000000 دينار 💵\n3) منشن جماعي 1000000 دينار 💵\n4) ضع رد 10000000 دينار 💵\n- تستطيع استخدام ميزة ( استرداد المبلغ )\n- بالنسبة لميزة ضع رد اذا وجد رد مخالف يستطيع مشرفين لقروب مسحه بامر - مسح ضع رد\n✦"
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'RedBull', url="t.me/allush3"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,pricemarket,"md",false, false, false, false, reply_markup)
end
if text and text:match("^(.*)$") and redis:get(KOIA..":"..msg.chat_id..":"..msg.sender_id.user_id..":Rp:setg") == "true" then
redis:set(KOIA..":"..msg.chat_id..":"..msg.sender_id.user_id..":Rp:setg","true1")
redis:set(KOIA..":"..msg.chat_id..":"..msg.sender_id.user_id..":Rp:Text:rdg",text)
redis:del(KOIA.."Rp:content:Textg"..msg.chat_id..":"..text)   
redis:set(KOIA.."rdddtex"..msg.sender_id.user_id,text)
redis:sadd(KOIA.."List:Rp:contentg"..msg.chat_id, text)
LuaTele.sendText(msg.chat_id,msg.id,[[
︙ ارسل لي الرد
︙ يمكنك اضافة الى النص •
━━━━━━━━━━━𖤐`#username` ↬ معرف المستخدم𖤐`#msgs` ↬ عدد الرسائل𖤐`#name` ↬ اسم المستخدم𖤐`#id` ↬ ايدي المستخدم𖤐`#stast` ↬ رتبة المستخدم𖤐`#edit` ↬ عدد التعديلات

]],"md",true)  
return false
end
if text == "ضع رد" then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if not redis:get(KOIA.."market"..msg.chat_id) then
return LuaTele.sendText(msg.chat_id,msg.id," • السوق مقفل من قبل المشرفين","md",true)
end
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 10000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
redis:set(KOIA.."rdddgr"..msg.sender_id.user_id,msg.chat_id)
redis:set(KOIA.."rdddid"..msg.sender_id.user_id,msg.sender_id.user_id)
redis:set(KOIA..":"..msg.chat_id..":"..msg.sender_id.user_id..":Rp:setg",true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ارسل الان الكلمه لاضافتها في الردود\n\nملاحظة : الرد نص فقط لاتباع سياسة الاستخدام العادل","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'مسح ضع رد' then
if not Constructor(msg) then
return LuaTele.sendText(msg.chat_id,msg.id,'\n*• هذا الامر يخص المنشئ ومافوق* ',"md",true)  
end
ext = "*⇜ تم مسح جميع ردود القروب المدفوعة\nاصحاب الردود تستطيعون استرداد المبلغ*"
local list = redis:smembers(KOIA.."List:Rp:contentg"..msg.chat_id)
for k,v in pairs(list) do
if redis:get(KOIA.."Rp:content:Textg"..msg.chat_id..":"..v) then
redis:del(KOIA.."Rp:content:Textg"..msg.chat_id..":"..v)
end
end
redis:del(KOIA.."List:Rp:contentg"..msg.chat_id)
if #list == 0 then
ext = "*⇜ مافيه ردود مدفوعة*"
end
LuaTele.sendText(msg.chat_id,msg.id,ext,"md",true)  
end
if text == "منشن جماعي" then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if not redis:get(KOIA.."market"..msg.chat_id) then
return LuaTele.sendText(msg.chat_id,msg.id," • السوق مقفل من قبل المشرفين","md",true)
end
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 1000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local Info = LuaTele.searchChatMembers(msg.chat_id, "*", 200)
local members = Info.members
local bandd = LuaTele.getUser(msg.sender_id.user_id)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
ls = '\n• منشن مدفوع من قبل '..neews..' \n  ━━━━━━━━━━━ \n'
for k, v in pairs(members) do
local UserInfo = LuaTele.getUser(v.member_id.user_id)
if UserInfo.username and UserInfo.username ~= "" then
ls = ls..'*'..k..' - *@['..UserInfo.username..']\n'
else
ls = ls..'*'..k..' - *['..UserInfo.first_name..'](tg://user?id='..v.member_id.user_id..')\n'
end
end
LuaTele.sendText(msg.chat_id,msg.id,ls,"md",true)
mensen = ballancee - 1000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(mensen))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"\n⌯ اشعار دفع :\n\nالمنتج : منشن جماعي\nالسعر : 1000000 دينار\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)  
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'رتبه' or text == 'رتبة' then
if not redis:get(KOIA.."market"..msg.chat_id) then
return LuaTele.sendText(msg.chat_id,msg.id," • السوق مقفل من قبل المشرفين","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`رتبه` مع اسمها\nمثال : رتبه جنرال","md",true)
end
if text and text:match("^رتبه (.*)$") then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if not redis:get(KOIA.."market"..msg.chat_id) then
return LuaTele.sendText(msg.chat_id,msg.id," • السوق مقفل من قبل المشرفين","md",true)
end
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 5000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if text:match("مطور اساسي") or text:match("المطور الاساسي") or text:match("مطور الاساسي") or text:match("ثانوي") or text:match("مطور") then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ خطأ ، اختر رتبة اخرى ","md",true)
end
numcare = math.random(000000000001,999999999999);
redis:set(KOIA.."rotpa"..msg.sender_id.user_id,numcare)
redis:set(KOIA.."rotpagrid"..msg.sender_id.user_id,msg.chat_id)
redis:set(KOIA.."rotpaid"..msg.sender_id.user_id,msg.sender_id.user_id)
redis:set(KOIA..':SetRt'..msg.chat_id..':'..msg.sender_id.user_id,text:match('^رتبه (.*)$'))
mensenn = ballancee - 5000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(mensenn))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"\n⌯ اشعار دفع :\n\nالمنتج : رتبه "..text:match('^رتبه (.*)$').."\nالسعر : 5000000 دينار\nرصيدك الان : "..convert_mony.." دينار 💵\nرقم الوصل : `"..numcare.."`\n\nاحتفظ برقم الايصال لاسترداد المبلغ\n✦","md",true)  
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'استرداد مبلغ' or text == 'استرداد المبلغ' then
if not redis:get(KOIA.."market"..msg.chat_id) then
return LuaTele.sendText(msg.chat_id,msg.id," • السوق مقفل من قبل المشرفين","md",true)
end
redis:setex(KOIA.."recoballanc" .. msg.chat_id .. ":" .. msg.sender_id.user_id,60, true)
LuaTele.sendText(msg.chat_id,msg.id,[[
⇜ ارسل الحين رقم ايصال الدفع

– معاك دقيقة وحدة والغي طلب الاسترداد .
✦
]],"md",true)  
return false
end
if redis:get(KOIA.."recoballanc" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
numcare = tonumber(redis:get(KOIA.."rotpa"..msg.sender_id.user_id))
gridrtp = redis:get(KOIA.."rotpagrid"..msg.sender_id.user_id)
usridrtp = redis:get(KOIA.."rotpaid"..msg.sender_id.user_id)
numrd = tonumber(redis:get(KOIA.."rddd"..msg.sender_id.user_id))
gridrd = redis:get(KOIA.."rdddgr"..msg.sender_id.user_id)
usridrd = redis:get(KOIA.."rdddid"..msg.sender_id.user_id)
texrd = redis:get(KOIA.."rdddtex"..msg.sender_id.user_id)
if tonumber(text) == numcare then
redis:del(KOIA.."recoballanc" .. msg.chat_id .. ":" .. msg.sender_id.user_id)
redis:del(KOIA..':SetRt'..gridrtp..':'..usridrtp)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
mensep = ballancee + 2500000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(mensep))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"\n⇜ تم استرداد نصف المبلغ :\n\nالمنتج : ضع رتبه\nالمبلغ : 2500000 دينار\nرصيدك الان : "..convert_mony.." دينار 💵\nرقم الوصل : `"..numcare.."`\n\nشكراً لاستخدامك سوق ريد بول\n✦","md",true)
redis:del(KOIA.."rotpa"..msg.sender_id.user_id)
redis:del(KOIA.."rotpagrid"..msg.sender_id.user_id)
redis:del(KOIA.."rotpaid"..msg.sender_id.user_id)
elseif tonumber(text) == numrd then
redis:del(KOIA.."recoballanc" .. msg.chat_id .. ":" .. msg.sender_id.user_id)
redis:del(KOIA.."Rp:content:Textg"..gridrd..":"..texrd)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
mensepp = ballancee + 5000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(mensepp))
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"\n⇜ تم استرداد نصف المبلغ :\n\nالمنتج : ضع رد\nالمبلغ : 5000000 دينار\nرصيدك الان : "..convert_mony.." دينار 💵\nرقم الوصل : "..numrd.."\n\nشكراً لاستخدامك سوق ريد بول\n✦","md",true)
redis:del(KOIA.."rddd"..msg.sender_id.user_id)
redis:del(KOIA.."rdddgr"..msg.sender_id.user_id)
redis:del(KOIA.."rdddid"..msg.sender_id.user_id)
redis:del(KOIA.."rdddtex"..msg.sender_id.user_id)
else
redis:del(KOIA.."recoballanc" .. msg.chat_id .. ":" .. msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id,"\n⇜ لا يوجد وصل دفع بهذا الرقم\n✦","md",true)
end
redis:del(KOIA.."recoballanc" .. msg.chat_id .. ":" .. msg.sender_id.user_id)
end
--------------------------------------------------------------------------------------------------------------
if text == 'مراهنه' or text == 'مراهنة' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`مراهنه` المبلغ","md",true)
end
if text and text:match('^مراهنه (.*)$') or text and text:match('^مراهنة (.*)$') then
local UserName = text:match('^مراهنه (.*)$') or text:match('^مراهنة (.*)$')

local coniss = coin(UserName)
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 999 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح هو 1000 دينار 💵\n✦","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
redis:del(KOIA..'List_rhan'..msg.chat_id)  
redis:set(KOIA.."playerrhan"..msg.chat_id,msg.sender_id.user_id)
redis:set(KOIA.."playercoins"..msg.chat_id..msg.sender_id.user_id,coniss)
redis:set(KOIA.."raeahkam"..msg.chat_id,msg.sender_id.user_id)
redis:sadd(KOIA..'List_rhan'..msg.chat_id,msg.sender_id.user_id)
redis:setex(KOIA.."Start_rhan"..msg.chat_id,3600,true)
redis:set(KOIA.."allrhan"..msg.chat_id..12345 , coniss)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
rehan = tonumber(ballancee) - tonumber(coniss)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , rehan)
return LuaTele.sendText(msg.chat_id,msg.id,"• تم بدء المراهنة وتم تسجيلك \n• اللي بده يشارك يرسل ( انا والمبلغ ) .","md",true)
end
if text == 'نعم' and redis:get(KOIA.."Witting_Startrhan"..msg.chat_id) then
rarahkam = redis:get(KOIA.."raeahkam"..msg.chat_id)
if tonumber(rarahkam) == msg.sender_id.user_id then
local list = redis:smembers(KOIA..'List_rhan'..msg.chat_id) 
if #list == 1 then 
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ عذراً لم يشارك احد بالرهان","md",true)  
end 
local UserName = list[math.random(#list)]
local UserId_Info = LuaTele.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '@['..UserId_Info.username..']'
end
benrahan = redis:get(KOIA.."allrhan"..msg.chat_id..12345) or 0
local ballancee = redis:get(KOIA.."pirlo"..UserName) or 0
rehane = tonumber(benrahan) / 100 * 25
rehan = tonumber(ballancee) + math.floor(rehane)
redis:set(KOIA.."pirlo"..UserName , rehan)
local rhan_users = redis:smembers(KOIA.."List_rhan"..msg.chat_id)
for k,v in pairs(rhan_users) do
redis:del(KOIA..'playercoins'..msg.chat_id..v)
end
redis:del(KOIA..'allrhan'..msg.chat_id..12345) 
redis:del(KOIA..'playerrhan'..msg.chat_id) 
redis:del(KOIA..'raeahkam'..msg.chat_id) 
redis:del(KOIA..'List_rhan'..msg.chat_id) 
redis:del(KOIA.."Witting_Startrhan"..msg.chat_id)
redis:del(KOIA.."Start_rhan"..msg.chat_id)
local ballancee = redis:get(KOIA.."pirlo"..UserName) or 0
local convert_mony = string.format("%.0f",rehane)
local convert_monyy = string.format("%.0f",ballancee)
return LuaTele.sendText(msg.chat_id,msg.id,'⌯ فاز '..ls..' بالرهان 🎊\n⇜ المبلغ : '..convert_mony..' دينار 💵\n⇜ خصمت 25% ضريبة \n⇜ رصيدك الان : '..convert_monyy..' دينار 💵\n✦',"md",true)
end
end
--------------------------------------------------------------------------------------------------------------

if text == "توب شركات" then 
local companys = redis:smembers(KOIA.."companys:")
if #companys == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ لا يوجد شركات","md",true)
end
local top_company = {}
for A,N in pairs(companys) do
local Cmony = 0
for k,v in pairs(redis:smembers(KOIA.."company:mem:"..N)) do
local mem_mony = tonumber(redis:get(KOIA.."pirlo"..v)) or 0
Cmony = Cmony + mem_mony
end
local owner_id = redis:get(KOIA.."companys_owner:"..N)
local Cid = redis:get(KOIA.."companys_id:"..N)
if redis:sismember(KOIA.."booob", owner_id) then
table.insert(top_company, {tonumber(Cmony) , owner_id , N , Cid})
end
end
table.sort(top_company, function(a, b) return a[1] > b[1] end)
local num = 1
local emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
local msg_text = "توب اعلى 20 شركة : \n"
for k,v in pairs(top_company) do
if num <= 20 then
local user_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"
local Cname = v[3]
local Cid = v[4]
local mony = v[1]
gflous = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
local emoo = emoji[k]
num = num + 1
msg_text = msg_text..emoo.." "..gflous.."  💵 l "..Cname.."\n"
end
end
return LuaTele.sendText(msg.chat_id,msg.id, msg_text ,"html",true)
end
if text == "حذف شركتي" or text == "مسح شركتي" then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:sismember(KOIA.."company_owners:",msg.sender_id.user_id) then
local Cname = redis:get(KOIA.."companys_name:"..msg.sender_id.user_id)
for k,v in pairs(redis:smembers(KOIA.."company:mem:"..Cname)) do
redis:srem(KOIA.."in_company:", v)
end
redis:srem(KOIA.."company_owners:", msg.sender_id.user_id)
redis:srem(KOIA.."companys:", Cname)
redis:del(KOIA.."companys_name:"..msg.sender_id.user_id)
redis:del(KOIA.."companys_owner:"..Cname)
redis:del(KOIA.."companys_id:"..Cname)
redis:del(KOIA.."company:mem:"..Cname)
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم حذف شركتك بنجاح","md",true)  
else
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك شركة","md",true)  
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('انشاء شركه (.*)') or text and text:match('انشاء شركة (.*)') then
local Cnamed = text:match('انشاء شركه (.*)') or text:match('انشاء شركة (.*)')
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."in_company:" , msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ لديك شركة حاليا\n⇜ تستطيع استخدام الامر ( `استقاله` )\n✦","md",true)
end
if redis:sismember(KOIA.."company_owners:",msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ لديك شركة مسبقاً","md",true)
end
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 1000000 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
if redis:sismember(KOIA.."companys:", Cnamed) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم مأخوذ جرب اسم ثاني \n✦","md",true)
end
local shrkcoi = tonumber(ballancee) - 1000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , shrkcoi)
redis:sadd(KOIA.."company_owners:", msg.sender_id.user_id)
local rand = math.random(1,99999999999999)
redis:sadd(KOIA.."companys:", Cnamed)
redis:set(KOIA.."companys_name:"..msg.sender_id.user_id, Cnamed)
redis:set(KOIA.."companys_owner:"..Cnamed, msg.sender_id.user_id)
redis:set(KOIA.."companys_id:"..rand, Cnamed)
redis:set(KOIA.."companys_id:"..Cnamed, rand)
redis:sadd(KOIA.."company:mem:"..Cnamed, msg.sender_id.user_id)
redis:sadd(KOIA.."in_company:", msg.sender_id.user_id)
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,"⌯ تم انشاء شركتك\n⇜ اسم الشركة : "..Cnamed.."\n⇜ رصيد الشركة : "..convert_mony.." دينار 💵\n⇜ تستطيع اضافة اعضاء معك بالشركة\n⇜ ارسل الامر ( اضافه ) بالرد\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match('كشف شركه (.*)') or text and text:match('كشف شركة (.*)') then
local Cname = text:match('كشف شركه (.*)') or text:match('كشف شركة (.*)')
if not redis:sismember(KOIA.."companys:", Cname) then return LuaTele.sendText(msg.chat_id,msg.id,"⇜ لا يوجد شركه بهذا الاسم","md",true) end
local owner_id = redis:get(KOIA.."companys_owner:"..Cname)
local Cowner_tag = "["..LuaTele.getUser(owner_id).first_name.."](tg://user?id="..owner_id..")"
local Cid = redis:get(KOIA.."companys_id:"..Cname)
local Cmem = redis:smembers(KOIA.."company:mem:"..Cname)
local Cmony = 0
if #Cmem > 1 then 
mem_txt = "⇜ اعضاء شركه "..Cname.." :\n"
else
mem_txt = "⇜ اعضاء شركه "..Cname.." :\n⇜ لا يوجد اعضاء بالشركه\n"
end
for k,v in pairs(Cmem) do
local mem_mony = tonumber(redis:get(KOIA.."pirlo"..v)) or 0
local mem_tag = "["..LuaTele.getUser(v).first_name.."](tg://user?id="..v..")"
if tonumber(v) ~= tonumber(owner_id) then
mem_txt = mem_txt.."- "..mem_tag.."\nفلوسه : "..mem_mony.." دينار 💵\n\n"
end
Cmony = Cmony + mem_mony
end
local convert_mony = string.format("%.0f",Cmony)
LuaTele.sendText(msg.chat_id,msg.id,"⇜ تم ايجاد الشركه بنجاح\n\n⇜ صاحب الشركه : "..Cowner_tag.."\n⇜ ايدي الشركه : "..Cid.."\n⇜ فلوس الشركه : "..convert_mony.." دينار 💵\n"..mem_txt.."\n✦","md",true)
end
if text == "شركتي" then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if not redis:sismember(KOIA.."in_company:", msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ انت غير موظف في اي شركة","md",true)  
end
local Cname = redis:get(KOIA.."companys_name:"..msg.sender_id.user_id) or redis:get(KOIA.."in_company:name:"..msg.sender_id.user_id)
local owner_id = redis:get(KOIA.."companys_owner:"..Cname)
local Cid = redis:get(KOIA.."companys_id:"..Cname)
local Cmem = redis:smembers(KOIA.."company:mem:"..Cname)
local Cmony = 0
if #Cmem > 1 then
mem_txt = "⇜ اعضاء شركه "..Cname.." :\n"
else
mem_txt = "⇜ اعضاء شركه "..Cname.." :\n⇜ لا يوجد اعضاء بالشركه\n"
end
for k,v in pairs(Cmem) do
local mem_mony = tonumber(redis:get(KOIA.."pirlo"..v))
if mem_mony then
if tonumber(v) ~= tonumber(owner_id) then
local mem_tag = "["..LuaTele.getUser(v).first_name.."](tg://user?id="..v..")"
mem_txt = mem_txt.."- "..mem_tag.."\nفلوسه : "..mem_mony.." دينار 💵\n"
end
Cmony = Cmony + mem_mony
end
end
local convert_mony = string.format("%.0f",Cmony)
LuaTele.sendText(msg.chat_id,msg.id,"⇜ اهلا بك عزيزي في شركتك\n\n⇜ ايدي الشركه : "..Cid.."\n⇜ فلوس الشركه : "..convert_mony.." دينار 💵\n⇜ صاحب الشركه : ".."["..LuaTele.getUser(owner_id).first_name.."](tg://user?id="..owner_id..")\n"..mem_txt.."\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
--
if (text == 'اضافه' or text == 'اضافة') and msg.reply_to_message_id == 0 then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`اضافه` بالرد","md",true)
end
if (text == 'طرد' or text == 'رفض') and msg.reply_to_message_id == 0 then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`طرد` بالرد","md",true)
end

if (text == 'اضافه' or text == 'اضافة' or text == "توظيف") and msg.reply_to_message_id ~= 0 then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)
return false
end
if Remsg.sender_id.user_id == msg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ بدك تضيف نفسك 🤡*","md",true)  
return false
end
if not redis:sismember(KOIA.."company_owners:", msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك شركه","md",true)  
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
if redis:sismember(KOIA.."in_company:" , Remsg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ لديه شركة مسبقاً","md",true)
end
local Cname = redis:get(KOIA.."companys_name:"..msg.sender_id.user_id)
local Cmem = redis:smembers(KOIA.."company:mem:"..Cname)
if #Cmem == 5 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ لقد وصلت شركتك لاقصى عدد من الموظفين\n⇜ تستطيع طرد الموظفين\n✦","md",true)
end
if redis:get(KOIA.."company_request:"..Remsg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ اللاعب لديه طلب توظيف استنى يخلص مدته","md",true)
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'موافق', data = Remsg.sender_id.user_id.."/company_yes/"..msg.sender_id.user_id},{text = 'غير موافق', data = Remsg.sender_id.user_id.."/company_no/"..msg.sender_id.user_id},
},
}
}
redis:setex(KOIA.."company_request:"..Remsg.sender_id.user_id,60,true)
return LuaTele.sendText(msg.chat_id, msg.reply_to_message_id ,"⇜ صاحب الشركة : "..Cname.."\n⇜ طلب منك العمل معه بالشركة ؟","md",false, false, false, false, reply_markup)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if (text == 'طرد' or text == 'رفض') and msg.reply_to_message_id ~= 0 then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)
return false
end
if Remsg.sender_id.user_id == msg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ بدك تطرد نفسك 🤡*","md",true)  
return false
end
if not redis:sismember(KOIA.."company_owners:", msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك شركه","md",true)  
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
local Cname = redis:get(KOIA.."companys_name:"..msg.sender_id.user_id)
if not redis:sismember(KOIA.."company:mem:"..Cname, Remsg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك في الشركة مشان تطرده","md",true)  
end
redis:srem(KOIA.."company:mem:"..Cname, Remsg.sender_id.user_id)
redis:srem(KOIA.."in_company:", Remsg.sender_id.user_id)
redis:del(KOIA.."in_company:name:"..Remsg.sender_id.user_id, Cname)
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم طرده من الشركه ","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == "استقاله" or text == "استقالة" then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if not redis:sismember(KOIA.."in_company:" , msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ليس لديك شركة","md",true)
end
if redis:sismember(KOIA.."company_owners:", msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ انت صاحب الشركه ما يمديك تستقيل\n⇜ اكتب ( `مسح شركتي` )","md",true)  
end
local Cname = redis:get(KOIA.."in_company:name:"..msg.sender_id.user_id)
redis:srem(KOIA.."company:mem:"..Cname, msg.sender_id.user_id)
redis:srem(KOIA.."in_company:", msg.sender_id.user_id)
redis:del(KOIA.."in_company:name:"..msg.sender_id.user_id, Cname)
local owner_id = redis:get(KOIA.."companys_owner:"..Cname)
local mem_tag = "["..LuaTele.getUser(msg.sender_id.user_id).first_name.."](tg://user?id="..msg.sender_id.user_id..")"
LuaTele.sendText(owner_id,0, "⇜ اللاعب "..mem_tag.." استقال من شركتك" ,"md",true)
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ انت الان لست موظف في شركه "..Cname ,"md",true)
else
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
if text == 'كنز' then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:ttl(KOIA.."yiioooo" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."yiioooo" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ فرصة ايجاد كنز آخر بعد "..math.floor(hours).." دقيقة","md",true)
end
local Textinggt = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22","23",}
local Descriptioont = Textinggt[math.random(#Textinggt)]
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد "
end
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
shkse = redis:get(KOIA.."shkse"..msg.sender_id.user_id)
if shkse == "طيبة" then
if Descriptioont == "1" then
local knez = ballancee + 40000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : قطعة اثرية 🗳\nسعره : 40000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "2" then
local knez = ballancee + 35000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : حجر الماسي 💎\nسعره : 35000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "3" then
local knez = ballancee + 10000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : ون بيس 💰\nسعره : 100000000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "4" then
local knez = ballancee + 23000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : عصى سحرية 🪄\nسعره : 23000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "5" then
local knez = ballancee + 8000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جوال نوكيا 📱\nسعره : 8000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "6" then
local knez = ballancee + 27000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : صدف 🏝\nسعره : 27000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "7" then
local knez = ballancee + 18000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : ابريق صدئ ⚗️\nسعره : 18000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "8" then
local knez = ballancee + 100000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : قناع فرعوني 🗿\nسعره : 100000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "9" then
local knez = ballancee + 50000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جرة ذهب 💰\nسعره : 50000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "10" then
local knez = ballancee + 36000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : مصباح فضي 🔦\nسعره : 36000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "11" then
local knez = ballancee + 29000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : لوحة نحاسية 🌇\nسعره : 29000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "12" then
local knez = ballancee + 1000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جوارب قديمة 🧦\nسعره : 1000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "13" then
local knez = ballancee + 16000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : اناء فخاري ⚱️\nسعره : 16000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "14" then
local knez = ballancee + 12000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : خوذة محارب 🪖\nسعره : 12000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "15" then
local knez = ballancee + 19000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : سيف الجليد 🗡\nسعره : 190000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "16" then
local knez = ballancee + 14000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : مكنسة سحرية 🧹\nسعره : 14000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "17" then
local knez = ballancee + 26000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : فأس ارطغرل 🪓\nسعره : 26000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "18" then
local knez = ballancee + 22000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : بندقية 🔫\nسعره : 22000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "19" then
local knez = ballancee + 11000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : كبريت ناري 🪔\nسعره : 11000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "20" then
local knez = ballancee + 33000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : فرو ثعلب 🦊\nسعره : 33000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "21" then
local knez = ballancee + 40000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جلد تمساح 🐊\nسعره : 40000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "22" then
local knez = ballancee + 17000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : باقة ورود 💐\nسعره : 17000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "23" then
local Textinggtt = {"1", "2",}
local Descriptioontt = Textinggtt[math.random(#Textinggtt)]
if Descriptioontt == "1" then
local knez = ballancee + 17000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : باقة ورود 💐\nسعره : 17000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioontt == "2" then
local Textinggttt = {"1", "2",}
local Descriptioonttt = Textinggttt[math.random(#Textinggttt)]
if Descriptioonttt == "1" then
local knez = ballancee + 40000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جلد تمساح 🐊\nسعره : 40000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioonttt == "2" then
local knez = ballancee + 10000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : حقيبة محاسب البنك 💼\nسعره : 10000000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
end
end
end
else
if Descriptioont == "1" then
local knez = ballancee + 40000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : كتاب سحر 📕\nسعره : 40000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "2" then
local knez = ballancee + 35000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : حقيبة ممنوعات 🎒\nسعره : 35000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "3" then
local knez = ballancee + 60000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : زئبق احمر 🩸\nسعره : 60000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "4" then
local knez = ballancee + 23000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : فيزا مسروقة 💳\nسعره : 23000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "5" then
local knez = ballancee + 20000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : ماريجوانا 🚬\nسعره : 20000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "6" then
local knez = ballancee + 27000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : قطعة اثرية 🪨\nسعره : 27000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "7" then
local knez = ballancee + 18000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : سلا.ح ناري 🔫\nسعره : 18000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "8" then
local knez = ballancee + 40000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : قطع فضة 🔗\nسعره : 40000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "9" then
local knez = ballancee + 20000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : سكين 🗡\nسعره : 20000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "10" then
local knez = ballancee + 36000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : مخطط عملية سطو 🧾\nسعره : 36000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "11" then
local knez = ballancee + 29000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : عملات مزورة 💴\nسعره : 29000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "12" then
local knez = ballancee + 200000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : سيارة مسروقة 🚙\nسعره : 200000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "13" then
local knez = ballancee + 80000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : سبيكة ذهب 🪙\nسعره : 80000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "14" then
local knez = ballancee + 75000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : الماس 💎\nسعره : 75000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "15" then
local knez = ballancee + 19000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : رشوة من تاجر 👥️️\nسعره : 19000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "16" then
local knez = ballancee + 14000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : علبة كبريت 🪔\nسعره : 14000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "17" then
local knez = ballancee + 26000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : قفل 🔒\nسعره : 26000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "18" then
local knez = ballancee + 26000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : قفل 🔒 \nسعره : 26000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "19" then
local knez = ballancee + 14000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : علبة كبريت 🪔\nسعره : 14000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "20" then
local knez = ballancee + 14000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : علبة كبريت 🪔\nسعره : 14000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "21" then
local knez = ballancee + 26000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : قفل 🔒 \nسعره : 26000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "22" then
local knez = ballancee + 17000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : صبار 🌵\nسعره : 17000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
elseif Descriptioont == "23" then
local knez = ballancee + 40000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , knez)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id,""..neews.." لقد وجدت كنز\nالكنز : جلد تمساح 🐊\nسعره : 40000 دينار 💵\nرصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
redis:setex(KOIA.."yiioooo" .. msg.sender_id.user_id,1800, true)
end
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
--------------------------------------------------------------------------------------------------------------
if text == 'فلوسي' and tonumber(msg.reply_to_message_id) == 0 then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 1 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك فلوس ارسل الالعاب وابدأ بجمع الفلوس \n✦","md",true)
end
local convert_mony = string.format("%.0f",ballancee)
local inoi = tostring(convert_mony)
local intk = inoi:gsub(" ","-")
lan = "ar"
local rand = math.random(1,999)
os.execute("gtts-cli "..intk.." -l '"..lan.."' -o 'intk"..rand..".mp3'")
LuaTele.sendAudio(msg.chat_id,msg.id,'./intk'..rand..'.mp3',tostring(inoi),"html",nil,tostring(inoi),"@allush3")
sleep(1)
os.remove("intk"..rand..".mp3")
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
---------------
if text == "الحراميه زرف" then
if devS(msg.sender_id.user_id) then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
else
news = " لا يوجد"
end
zrfee = redis:get(KOIA.."rrfff"..msg.sender_id.user_id) or 0
local ty_users = redis:smembers(KOIA.."rrfffid")
if #ty_users == 0 then
return LuaTele.sendText(chat_id,msg_id,"⇜ لا يوجد احد","md",true)
end
ty_anubis = "توب 20 شخص زرفوا فلوس :\n\n"
ty_list = {}
for k,v in pairs(ty_users) do
local mony = redis:get(KOIA.."rrfff"..v)
table.insert(ty_list, {tonumber(mony) , v})
end
table.sort(ty_list, function(a, b) return a[1] > b[1] end)
num_ty = 1
emojii ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(ty_list) do
if num_ty <= 20 then
local user_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emoo = emojii[k]
num_ty = num_ty + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
ty_anubis = ty_anubis..emoo.." "..gflos.." 💵 l "..tt.." >> "..v[2].." \n"
gflous = string.format("%.0f", zrfee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = " ━━━━━━━━━\n• you) "..gflous.." 💵 l "..news.." \n\nملاحظة : اي شخص مخالف للعبة بالحراميه او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'RedBull', url="t.me/allush3"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,ty_anubis..gg,"md",false, false, false, false, reply_markup)
end
end
if text == "توب الحراميه" or text == "توب الحراميه" then
if devS(msg.sender_id.user_id) then
local bank_users = redis:smembers(KOIA.."booob")
if #bank_users == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ لا يوجد حسابات في البنك","md",true)
end
top_mony = "توب اغنى 20 شخص :\n\n"
mony_list = {}
for k,v in pairs(bank_users) do
local mony = redis:get(KOIA.."pirlo"..v)
table.insert(mony_list, {tonumber(mony) , v})
end
table.sort(mony_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(mony_list) do
if num <= 20 then
local user_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"
local user_tag = '['..user_name..'](tg://user?id='..v[2]..')'
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
top_mony = top_mony..emo.." "..convert_mony.." 💵 ꗝ "..user_name.." >> "..v[2].."\n"
end
end
top_monyy = top_mony.."\n\nاي اسم مخالف او غش باللعب راح يتصفر وينحظر اللاعب"
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'RedBull', url="t.me/allush3"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,top_monyy,"html",false, false, false, false, reply_markup)
end
end
---------------
if text and text:match('^حظر حساب (.*)$') then
local UserName = text:match('^حظر حساب (.*)$')
local coniss = coin(UserName)
if devS(msg.sender_id.user_id) or devB(msg.sender_id.user_id) then
redis:set(KOIA.."bandid"..coniss,coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم حظر الحساب "..coniss.." من لعبة البنك\n✦","md",true)
end
end
if text and text:match('^الغاء حظر حساب (.*)$') then
local UserName = text:match('^الغاء حظر حساب (.*)$')
local coniss = coin(UserName)
if devS(msg.sender_id.user_id) or devB(msg.sender_id.user_id) then
redis:del(KOIA.."bandid"..coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تم الغاء حظر الحساب "..coniss.." من لعبة البنك\n✦","md",true)
end
end
if text and text:match('^اضف كوبون (.*)$') then
local UserName = text:match('^اضف كوبون (.*)$')
local coniss = coin(UserName)
if devS(msg.sender_id.user_id) or devB(msg.sender_id.user_id) then
numcobo = math.random(1000000000000,9999999999999);
local convert_mony = string.format("%.0f",coniss)
redis:set(KOIA.."cobonum"..numcobo,numcobo)
redis:set(KOIA.."cobon"..numcobo,coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⌯ وصل كوبون \n\n⇜ المبلغ : "..convert_mony.." دينار 💵\n⇜ رقم الكوبون : `"..numcobo.."`\n\n⇜ طريقة استخدام الكوبون :\n⇜ تكتب ( كوبون + رقمه )\n⇜ مثال : كوبون 4593875\n✦","md",true)
end
end
if text == "كوبون" or text == "الكوبون" then
LuaTele.sendText(msg.chat_id,msg.id, "⇜ طريقة استخدام الكوبون :\nتكتب ( كوبون + رقمه )\nمثال : كوبون 4593875\n\n- ملاحظة : الكوبون يستخدم لمرة واحدة ولشخص واحد\n✦","md",true)
end
if text and text:match('^كوبون (.*)$') then
local UserName = text:match('^كوبون (.*)$')
local coniss = coin(UserName)
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
cobnum = redis:get(KOIA.."cobonum"..coniss)
if coniss == tonumber(cobnum) then
cobblc = redis:get(KOIA.."cobon"..coniss)
ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
cobonplus = ballancee + cobblc
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , cobonplus)
local ballancee = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballancee)
redis:del(KOIA.."cobon"..coniss)
redis:del(KOIA.."cobonum"..coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⌯ وصل كوبون \n\n⇜ المبلغ : "..cobblc.." دينار 💵\n⇜ رقم الكوبون : `"..coniss.."`\n⇜ رصيدك الان : "..convert_mony.." دينار 💵\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ لا يوجد كوبون بهذا الرقم `"..coniss.."`\n✦","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ","md",true)
end
end
---------------
if text and text:match("^اضف فلوس (.*)$") and msg.reply_to_message_id ~= 0 then
local UserName = text:match('^اضف فلوس (.*)$')
local coniss = coin(UserName)
if devS(msg.sender_id.user_id) or devB(msg.sender_id.user_id) then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ ريد بول  ماعنده حساب بالبنك 🤣*","md",true)  
return false
end
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد اسم"
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
bajiop = ballanceed + coniss
redis:set(KOIA.."pirlo"..Remsg.sender_id.user_id , bajiop)
ccccc = redis:get(KOIA.."pirlob"..Remsg.sender_id.user_id)
uuuuu = redis:get(KOIA.."bbobb"..Remsg.sender_id.user_id)
ppppp = redis:get(KOIA.."rrfff"..Remsg.sender_id.user_id) or 0
ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballanceed)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ "..ccccc.."\n⇜ بنك ↢ ( ريد بول )\n⇜ نوع ↢ ( "..uuuuu.." )\n⇜ الزرف ↢ ( "..ppppp.." دولار 💵 )\n⇜ صار رصيده ↢ ( "..convert_mony.." دينار 💵 )\n✦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
end
end

if text and text:match('^اسحب (.*)$') or text and text:match('^سحب (.*)$') then
local UserName = text:match('^اسحب (.*)$') or text:match('^سحب (.*)$')
local coniss = coin(UserName)
cobnum = tonumber(redis:get(KOIA.."bandid"..msg.sender_id.user_id))
if cobnum == msg.sender_id.user_id then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ حسابك محظور من لعبة البنك","md",true)
end
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:ttl(KOIA.."iioood" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."iioood" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي عملت سحب استنى "..math.floor(hours).." دقيقة","md",true)
end
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 999 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح هو 1000 دينار 💵\n✦","md",true)
end
if tonumber(ballanceed) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي","md",true)
end
redis:set(KOIA.."tdbelballance"..msg.sender_id.user_id , coniss)
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '🤑', data = msg.sender_id.user_id.."/sahb"},{text = '🤑', data = msg.sender_id.user_id.."/sahb"},{text = '🤑', data = msg.sender_id.user_id.."/sahb"},
},
{text = 'RedBull',url="t.me/allush3"}, 
}
}
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ اختر الان :\n✦","md",false, false, false, false, reply_markup)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
-----
if text == 'فلوسه' and tonumber(msg.reply_to_message_id) ~= 0 then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜    ماعنده حساب بالبنك 🤣*","md",true)  
return false
end
if redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ballanceed = redis:get(KOIA.."pirlo"..Remsg.sender_id.user_id) or 0
local convert_mony = string.format("%.0f",ballanceed)
local inoi = tostring(convert_mony)
local intk = inoi:gsub(" ","-")
lan = "ar"
local rand = math.random(1,999)
os.execute("gtts-cli "..intk.." -l '"..lan.."' -o 'intk"..rand..".mp3'")
LuaTele.sendAudio(msg.chat_id,msg.id,'./intk'..rand..'.mp3',tostring(inoi),"html",nil,tostring(inoi),"@allush3")
sleep(1)
os.remove("intk"..rand..".mp3")
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعنده حساب بنكي ","md",true)
end
end
if text and text:match("^انطق (.*)$") or text and text:match("^انطقي (.*)$") then
local inoi = text:match("^انطق (.*)$") or text:match("^انطقي (.*)$")
local intk = inoi:gsub(" ","-")
if intk:match("%a") then
lan = "en"
else
lan = "ar"
end
local rand = math.random(1,999)
os.execute("gtts-cli "..intk.." -l '"..lan.."' -o 'intk"..rand..".mp3'")
LuaTele.sendAudio(msg.chat_id,msg.id,'./intk'..rand..'.mp3',tostring(inoi),"html",nil,tostring(inoi),"@allush3")
sleep(1)
os.remove("intk"..rand..".mp3")
end

if text == "عجله الحظ" or text == "عجلة الحظ" or text == "عجله" or text == "عجلة" then
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0

if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if redis:ttl(KOIA.."aglahd" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."aglahd" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ يمديك تلعب عجله الحظ بعد "..math.floor(hours).." دقيقة","md",true)
end𖤐   local mony = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0𖤐   if tonumber(mony) < 4000000 then𖤐   return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح به هو 4000000 دينار 💵\n✦","md",true)𖤐   end
ballance = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
ballanceek = ballance - 4000000
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(ballanceek))
redis:setex(KOIA.."aglahd" .. msg.sender_id.user_id,1800, true)𖤐   local msg_text = ""𖤐   local photo = "https://t.me/f_0_C/27"𖤐   local msg_reply = msg.id/2097152/0.5𖤐   local keyboard = {}𖤐   keyboard.inline_keyboard = {𖤐     {𖤐     {text = '• العب الان •', callback_data=msg.sender_id.user_id.."/happywheel"},𖤐     },𖤐     }𖤐   return https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id="..msg.chat_id.."&reply_to_message_id="..msg_reply.."&photo="..photo.."&caption="..URL.escape(msg_text).."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))𖤐   else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ","md",true)
end
end
if text == 'تبرع' then
if redis:ttl(KOIA.."tabrotime" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."tabrotime" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ يمديك تتبرع بعد "..math.floor(hours).." دقيقة","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`تبرع` المبلغ","md",true)
end
if text and text:match('^تبرع (.*)$') then
local UserName = text:match('^تبرع (.*)$')
local coniss = coin(UserName)
if not redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
if tonumber(coniss) > 10001 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الاعلى المسموح به هو 10000 دينار \n✦","md",true)
end
if tonumber(coniss) < 999 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح به هو 1000 دينار \n✦","md",true)
end
if redis:ttl(KOIA.."tabrotime" .. msg.sender_id.user_id) >=60 then
local hours = redis:ttl(KOIA.."tabrotime" .. msg.sender_id.user_id) / 60
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ يمديك تتبرع بعد "..math.floor(hours).." دقيقة","md",true)
end
ballanceed = redis:get(KOIA.."pirlo"..msg.sender_id.user_id) or 0
if tonumber(coniss) > tonumber(ballanceed) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي\n✦","md",true)
end
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد اسم "
end
local bank_users = redis:smembers(KOIA.."booob")
monyyy_list = {}
for k,v in pairs(bank_users) do
local mony = redis:get(KOIA.."pirlo"..v)
table.insert(monyyy_list, {tonumber(mony) , v})
end
table.sort(monyyy_list, function(a, b) return a[1] < b[1] end)
tabr = math.random(1,200)
winner_id = monyyy_list[tabr][2]
local user_name = LuaTele.getUser(winner_id).first_name or redis:get(KOIA..winner_id.."first_name:") or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
winner_mony = monyyy_list[tabr][1]
local convert_mony = string.format("%.0f",tonumber(coniss))
byre = tonumber(ballanceed) - tonumber(coniss)
redis:set(KOIA.."pirlo"..msg.sender_id.user_id , math.floor(byre))
taeswq = redis:get(KOIA.."tabbroat"..msg.sender_id.user_id) or 0
pokloo = tonumber(taeswq) + tonumber(coniss)
redis:set(KOIA.."tabbroat"..msg.sender_id.user_id , math.floor(pokloo))
ballanceeed = redis:get(KOIA.."pirlo"..winner_id) or 0
tekash = tonumber(ballanceeed) + tonumber(coniss)
redis:set(KOIA.."pirlo"..winner_id , tonumber(tekash))
ballanceeed = redis:get(KOIA.."pirlo"..winner_id) or 0
redis:sadd(KOIA.."taza",msg.sender_id.user_id)
redis:setex(KOIA.."tabrotime" .. msg.sender_id.user_id,620, true)
local convert_monyy = string.format("%.0f",tonumber(ballanceeed))
tttt = "⌯ وصل تبرع 📄\n\n⇜ من : "..news.."\n⇜ المستفيد : "..user_name.."\n⇜ المبلغ : "..convert_mony.." دينار 💵 \n⇜ فلوس المستفيد الان : "..convert_monyy.." دينار 💵\n✦"
LuaTele.sendText(msg.chat_id,msg.id, tttt,"md",true)  
LuaTele.sendText(winner_id,0, "⌯ وصلك تبرعات من : "..news.."\n⇜ المبلغ : "..convert_mony.." دينار 💵","md",true)
end
if text == 'تبرعاتي' and tonumber(msg.reply_to_message_id) == 0 then
if redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
ballancee = redis:get(KOIA.."tabbroat"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 1 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك تبرعات \n✦","md",true)
end
local convert_mony = string.format("%.0f",ballancee)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تبرعاتك : `"..convert_mony.."` دينار 💵","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == "توب التبرعات" or text == "توب المتبرعين" or text == "توب متبرعين" or text == "المتبرعين" or text == "متبرعين" then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."]("..ban.first_name..")"
else
news = " لا يوجد"
end
ballancee = redis:get(KOIA.."tabbroat"..msg.sender_id.user_id) or 0
local bank_users = redis:smembers(KOIA.."taza")
if #bank_users == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ لا يوجد حسابات في البنك","md",true)
end
top_mony = "توب اعلى 20 شخص بالتبرعات :\n\n"
tabr_list = {}
for k,v in pairs(bank_users) do
local mony = redis:get(KOIA.."tabbroat"..v)
table.insert(tabr_list, {tonumber(mony) , v})
end
table.sort(tabr_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)"
}
for k,v in pairs(tabr_list) do
if num <= 20 then
local user_name = LuaTele.getUser(v[2]).first_name or "لا يوجد اسم"
tt =  "["..user_name.."]("..user_name..")"
local mony = v[1]
local convert_mony = string.format("%.0f",mony)
local emo = emoji[k]
num = num + 1
gflos = string.format("%.0f", mony):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
top_mony = top_mony..emo.." "..gflos.." 💵 l "..tt.." \n"
gflous = string.format("%.0f", ballancee):reverse():gsub( "(%d%d%d)" , "%1," ):reverse():gsub("^,","")
gg = " ━━━━━━━━━\n• you) "..gflous.." 💵 l "..news.." \n\nملاحظة : اي شخص مخالف للعبة بالحراميه او حاط يوزر بينحظر من اللعبه وتتصفر فلوسه"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'RedBull', url="t.me/allush3"},
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,top_mony..gg,"md",false, false, false, false, reply_markup)
end

end
return {
KOIA = Bank
}
