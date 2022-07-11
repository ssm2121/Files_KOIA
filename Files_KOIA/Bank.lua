local function Reply(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if not Devmuh:get(KOIA..'muh:Lock:Reply'..msg.chat_id_) then
if text == 'انشاء حساب بنكي' or text == 'انشاء حساب البنكي' or text =='انشاء الحساب بنكي' or text =='انشاء الحساب البنكي' then
creditcc = math.random(5000000000000000,5999999999999999);
creditvi = math.random(4000000000000000,4999999999999999);
creditex = math.random(6000000000000000,6999999999999999);
balas = 50
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ لديك حساب بنكي مسبقاً\n\n⇜ لعرض معلومات حسابك اكتب\n⇠ `حسابي`","md",true)
end
Redis:setex(KOIA.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id,60, true)
LuaTele.sendText(msg.chat_id,msg.id,[[
– علمود تسوي حساب لازم تختار نوع البطاقة

⇠ `ماستر`
⇠ `فيزا`
⇠ `اكسبرس`

- اضغط للنسخ

– مدة الطلب دقيقة واحدة ويطردك الموظف .
]],"md",true)  
return false
end
if Redis:get(KOIA.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
if text == "ماستر" then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = msg.sender_id.user_id
Redis:set(KOIA.."bobna"..msg.sender_id.user_id,news)
Redis:set(KOIA.."boob"..msg.sender_id.user_id,balas)
Redis:set(KOIA.."boobb"..msg.sender_id.user_id,creditcc)
Redis:set(KOIA.."bbobb"..msg.sender_id.user_id,text)
Redis:set(KOIA.."boballname"..creditcc,news)
Redis:set(KOIA.."boballbalc"..creditcc,balas)
Redis:set(KOIA.."boballcc"..creditcc,creditcc)
Redis:set(KOIA.."boballban"..creditcc,text)
Redis:set(KOIA.."boballid"..creditcc,banid)
Redis:sadd(KOIA.."booob",msg.sender_id.user_id)
Redis:del(KOIA.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id, "\n• وعملنا لك حساب في بنك كولدن 🏦\n• وشحنالك 50 دولار 💵 هدية\n\n⇜ رقم حسابك ↢ ( `"..creditcc.."` )\n⇜ نوع البطاقة ↢ ( ماستر 💳 )\n⇜ فلوسك ↢ ( 50 دولار 💵 )  ","md",true)  
end 
if text == "فيزا" then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = msg.sender_id.user_id
Redis:set(KOIA.."bobna"..msg.sender_id.user_id,news)
Redis:set(KOIA.."boob"..msg.sender_id.user_id,balas)
Redis:set(KOIA.."boobb"..msg.sender_id.user_id,creditvi)
Redis:set(KOIA.."bbobb"..msg.sender_id.user_id,text)
Redis:set(KOIA.."boballname"..creditvi,news)
Redis:set(KOIA.."boballbalc"..creditvi,balas)
Redis:set(KOIA.."boballcc"..creditvi,creditvi)
Redis:set(KOIA.."boballban"..creditvi,text)
Redis:set(KOIA.."boballid"..creditvi,banid)
Redis:sadd(KOIA.."booob",msg.sender_id.user_id)
Redis:del(KOIA.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id, "\n• وعملنا لك حساب في بنك كولدن 🏦\n• وشحنالك 50 دولار 💵 هدية\n\n⇜ رقم حسابك ↢ ( `"..creditvi.."` )\n⇜ نوع البطاقة ↢ ( فيزا 💳 )\n⇜ فلوسك ↢ ( 50 دولار 💵 )  ","md",true)   
end 
if text == "اكسبرس" then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = msg.sender_id.user_id
Redis:set(KOIA.."bobna"..msg.sender_id.user_id,news)
Redis:set(KOIA.."boob"..msg.sender_id.user_id,balas)
Redis:set(KOIA.."boobb"..msg.sender_id.user_id,creditex)
Redis:set(KOIA.."bbobb"..msg.sender_id.user_id,text)
Redis:set(KOIA.."boballname"..creditex,news)
Redis:set(KOIA.."boballbalc"..creditex,balas)
Redis:set(KOIA.."boballcc"..creditex,creditex)
Redis:set(KOIA.."boballban"..creditex,text)
Redis:set(KOIA.."boballid"..creditex,banid)
Redis:sadd(KOIA.."booob",msg.sender_id.user_id)
Redis:del(KOIA.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
LuaTele.sendText(msg.chat_id,msg.id, "\n• وعملنا لك حساب في بنك كولدن 🏦\n• وشحنالك 50 دولار 💵 هدية\n\n⇜ رقم حسابك ↢ ( `"..creditex.."` )\n⇜ نوع البطاقة ↢ ( اكسبرس 💳 )\n⇜ فلوسك ↢ ( 50 دولار 💵 )  ","md",true)   
end 
end
if text == 'مسح حساب بنكي' or text == 'مسح حساب البنكي' or text =='مسح الحساب بنكي' or text =='مسح الحساب البنكي' or text == "مسح حسابي البنكي" or text == "مسح حسابي بنكي" then
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
Redis:srem(KOIA.."booob", msg.sender_id.user_id)
Redis:del(KOIA.."boob"..msg.sender_id.user_id)
Redis:del(KOIA.."boobb"..msg.sender_id.user_id)
Redis:del(KOIA.."zrfff"..msg.sender_id.user_id)
Redis:srem(KOIA.."zrfffid", msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مسحت حسابك البنكي 🏦","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'تصفير النتائج' or text == 'مسح لعبه البنك' then
if msg.ControllerBot then
Redis:del(KOIA.."booob")
Redis:del(KOIA.."boob")
Redis:del(KOIA.."boobb")
Redis:del(KOIA.."zrfff")
Redis:del(KOIA.."zrfffid")
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مسحت لعبه البنك 🏦","md",true)
end
end

if text == 'فلوسي' or text == 'فلوس' and tonumber(msg.reply_to_message_id) == 0 then
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 1 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش فلوس ارسل الالعاب وابدأ بجمع الفلوس \n⌔","md",true)
end
LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك "..ballancee.." دولار 💵","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'فلوسه' or text == 'فلوس' and tonumber(msg.reply_to_message_id) ~= 0 then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ كولدن ماعنده اي حساب بالبنك*","md",true)  
return false
end
if Redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ballanceed = Redis:get(KOIA.."boob"..Remsg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسه "..ballanceed.." دولار 💵","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ماعنده حساب بنكي ","md",true)
end
end

if text == 'حسابي' or text == 'حسابي البنكي' or text == 'رقم حسابي' then
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
cccc = Redis:get(KOIA.."boobb"..msg.sender_id.user_id)
uuuu = Redis:get(KOIA.."bbobb"..msg.sender_id.user_id)
pppp = Redis:get(KOIA.."zrfff"..msg.sender_id.user_id) or 0
ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ `"..cccc.."`\n⇜ بنك ↢ ( كولدن )\n⇜ نوع ↢ ( "..uuuu.." )\n⇜ الرصيد ↢ ( "..ballancee.." دولار 💵 )\n⇜ الزرف ( "..pppp.." دولار 💵 )\n⌔","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'مسح حسابه' and tonumber(msg.reply_to_message_id) ~= 0 then
if msg.ControllerBot then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ كولدن ماعنده اي حساب بالبنك*","md",true)  
return false
end
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ccccc = Redis:get(KOIA.."boobb"..Remsg.sender_id.user_id)
uuuuu = Redis:get(KOIA.."bbobb"..Remsg.sender_id.user_id)
ppppp = Redis:get(KOIA.."zrfff"..Remsg.sender_id.user_id) or 0
ballanceed = Redis:get(KOIA.."boob"..Remsg.sender_id.user_id) or 0
Redis:srem(KOIA.."booob", Remsg.sender_id.user_id)
Redis:del(KOIA.."boob"..Remsg.sender_id.user_id)
Redis:del(KOIA.."boobb"..Remsg.sender_id.user_id)
Redis:del(KOIA.."zrfff"..Remsg.sender_id.user_id)
Redis:srem(KOIA.."zrfffid", Remsg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ `"..ccccc.."`\n⇜ بنك ↢ ( كولدن )\n⇜ نوع ↢ ( "..uuuuu.." )\n⇜ الرصيد ↢ ( "..ballanceed.." دولار 💵 )\n⇜ الزرف ↢ ( "..ppppp.." دولار 💵 )\n⇜ مسكين مسحت حسابه \n⌔","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ماعنده حساب بنكي اصلاً ","md",true)
end
end
end

if text == 'حسابه' and tonumber(msg.reply_to_message_id) ~= 0 then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ كولدن ماعنده اي حساب بالبنك*","md",true)  
return false
end
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ccccc = Redis:get(KOIA.."boobb"..Remsg.sender_id.user_id)
uuuuu = Redis:get(KOIA.."bbobb"..Remsg.sender_id.user_id)
ppppp = Redis:get(KOIA.."zrfff"..Remsg.sender_id.user_id) or 0
ballanceed = Redis:get(KOIA.."boob"..Remsg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ `"..ccccc.."`\n⇜ بنك ↢ ( كولدن )\n⇜ نوع ↢ ( "..uuuuu.." )\n⇜ الرصيد ↢ ( "..ballanceed.." دولار 💵 )\n⇜ الزرف ↢ ( "..ppppp.." دولار 💵 )\n⌔","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ماعنده حساب بنكي ","md",true)
end
end

if text and text:match('^مسح حساب (.*)$') or text and text:match('^مسح حسابه (.*)$') then
if msg.ControllerBot then
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
local coniss = tonumber(coniss)
local ban = LuaTele.getUser(coniss)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد "
end
if Redis:sismember(KOIA.."booob",coniss) then
ccccc = Redis:get(KOIA.."boobb"..coniss)
uuuuu = Redis:get(KOIA.."bbobb"..coniss)
ppppp = Redis:get(KOIA.."zrfff"..coniss) or 0
ballanceed = Redis:get(KOIA.."boob"..coniss) or 0
Redis:srem(KOIA.."booob", coniss)
Redis:del(KOIA.."boob"..coniss)
Redis:del(KOIA.."boobb"..coniss)
Redis:del(KOIA.."zrfff"..coniss)
Redis:srem(KOIA.."zrfffid", coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ `"..ccccc.."`\n⇜ بنك ↢ ( كولدن )\n⇜ نوع ↢ ( "..uuuuu.." )\n⇜ الرصيد ↢ ( "..ballanceed.." دولار 💵 )\n⇜ الزرف ↢ ( "..ppppp.." دولار 💵 )\n⇜ مسكين مسحت حسابه \n⌔","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ماعنده حساب بنكي اصلاً ","md",true)
end
end
end

if text and text:match('^حساب (.*)$') or text and text:match('^حسابه (.*)$') then
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
local coniss = tonumber(coniss)
if Redis:get(KOIA.."boballcc"..coniss) then
local yty = Redis:get(KOIA.."boballname"..coniss)
local dfhb = Redis:get(KOIA.."boballbalc"..coniss)
local fsvhh = Redis:get(KOIA.."boballban"..coniss)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..yty.."\n⇜ الحساب ↢ `"..coniss.."`\n⇜ بنك ↢ ( كولدن )\n⇜ نوع ↢ ( "..fsvhh.." )\n⇜ الرصيد ↢ ( "..dfhb.." دولار 💵 )\n⌔","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مافيه حساب بنكي كذا","md",true)
end
end

if text == 'مضاربه' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`مضاربه` المبلغ","md",true)
end

if text and text:match('^مضاربه (.*)$') then
local UserName = text:match('^مضاربه (.*)$')
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
local coniss = tonumber(coniss)
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 1180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 20 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 1120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 19 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 1060 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 18 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 1000 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 17 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 940 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 16 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 15 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 14 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 13 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 12 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 11 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 10 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 9 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 8 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 7 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 6 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 5 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 4 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 3 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تضارب هسه\n⇜ تعال بعد ( 1 دقيقة )","md",true)
end
ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 99 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح هو 100 دولار 💵\n⌔","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n⌔","md",true)
end
local modarba = {"0", "1", "2", "3", "4️",}
local Descriptioontt = modarba[math.random(#modarba)]
local modarbaa = math.random(1,90);
if Descriptioontt == "1" or Descriptioontt == "3" then
ballanceekku = coniss / 100 * modarbaa
ballanceekkku = ballancee - ballanceekku
Redis:set(KOIA.."boob"..msg.sender_id.user_id , math.floor(ballanceekkku))
Redis:setex(KOIA.."iiooooo" .. msg.sender_id.user_id,1200, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مضاربة فاشلة 📉\n⇜ نسبة الخسارة ↢ "..modarbaa.."%\n⇜ المبلغ الذي خسرته ↢ ( "..ballanceekku.." دولار 💵 )\n⇜ فلوسك صارت ↢ ( "..ballanceekkku.." دولار 💵 )\n⌔","md",true)
elseif Descriptioontt == "2" or Descriptioontt == "4" then
ballanceekku = coniss / 100 * modarbaa
ballanceekkku = ballancee + ballanceekku
Redis:set(KOIA.."boob"..msg.sender_id.user_id , math.floor(ballanceekkku))
Redis:setex(KOIA.."iiooooo" .. msg.sender_id.user_id,1200, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مضاربة ناجحة 📈\n⇜ نسبة الربح ↢ "..modarbaa.."%\n⇜ المبلغ الذي ربحته ↢ ( "..ballanceekku.." دولار 💵 )\n⇜ فلوسك صارت ↢ ( "..ballanceekkku.." دولار 💵 )\n⌔","md",true)
else
Redis:setex(KOIA.."iiooooo" .. msg.sender_id.user_id,1200, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ تأخرت اليوم والبنك مسكر ارجع بعدين \n⌔","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'استثمار' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`استثمار` المبلغ","md",true)
end

if text and text:match('^استثمار (.*)$') then
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
local coniss = tonumber(coniss)
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 1180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 20 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 1120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 19 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 1060 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 18 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 1000 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 17 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 940 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 16 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 15 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 14 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 13 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 12 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 11 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 10 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 9 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 8 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 7 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 6 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 5 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 4 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 3 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تستثمر هسه\n⇜ تعال بعد ( 1 دقيقة )","md",true)
end
ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 99 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح هو 100 دولار 💵\n⌔","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n⌔","md",true)
end
local hadddd = math.random(0,17);
ballanceekk = coniss / 100 * hadddd
ballanceekkk = ballancee + ballanceekk
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , math.floor(ballanceekk))
Redis:setex(KOIA.."iioooo" .. msg.sender_id.user_id,1200, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ استثمار ناجح 💰\n⇜ نسبة الربح ↢ "..hadddd.."%\n⇜ مبلغ الربح ↢ ( "..ballanceekk.." دولار 💵 )\n⇜ فلوسك صارت ↢ ( "..ballanceekkk.." دولار 💵 )\n⌔","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'حظ' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`حظ` المبلغ","md",true)
end

if text and text:match('^حظ (.*)$') then
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
local coniss = tonumber(coniss)
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 1180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 20 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 1120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 19 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 1060 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 18 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 1000 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 17 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 940 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 16 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 15 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 14 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 13 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 12 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 11 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 10 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 9 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 8 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 7 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 6 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 5 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 4 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 3 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiooo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تلعب لعبة الحظ هسه\n⇜ تعال بعد ( 1 دقيقة )","md",true)
end
ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < tonumber(coniss) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n⌔","md",true)
end
local daddd = {"1", "2", "3", "4️",}
local haddd = daddd[math.random(#daddd)]
if haddd == "1" or haddd == "3" then
local ballanceek = ballancee + coniss
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , math.floor(ballanceek))
Redis:setex(KOIA.."iiooo" .. msg.sender_id.user_id,1200, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مبروك فزت بالحظ 🎉\n⇜ فلوسك قبل ↢ ( "..ballancee.." دولار 💵 )\n⇜ فلوسك هسه ↢ ( "..ballanceek.." دولار 💵 )\n⌔","md",true)
else
local ballanceekk = ballancee - coniss
Redis:decrby(KOIA.."boob"..msg.sender_id.user_id , coniss)
Redis:setex(KOIA.."iiooo" .. msg.sender_id.user_id,1200, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ للاسف خسرت بالحظ 😬\n⇜ فلوسك قبل ↢ ( "..ballancee.." دولار 💵 )\n⇜ فلوسك هسه ↢ ( "..ballanceekk.." دولار 💵 )\n⌔","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'تحويل' then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`تحويل` المبلغ","md",true)
end

if text and text:match('^تحويل (.*)$') then
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
local coniss = tonumber(coniss)
if not Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ","md",true)
end
if tonumber(coniss) < 100 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح به هو 100 دولار \n⌔","md",true)
end
ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 100 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n⌔","md",true)
end

if tonumber(coniss) > tonumber(ballancee) then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي\n⌔","md",true)
end

Redis:set(KOIA.."transn"..msg.sender_id.user_id,coniss)
Redis:setex(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id,60, true)
LuaTele.sendText(msg.chat_id,msg.id,[[
⇜ ارسل هسه رقم الحساب البنكي الي تبي تحول له

– معاك دقيقة وحدة والغي طلب التحويل .
⌔
]],"md",true)  
return false
end
if Redis:get(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
cccc = Redis:get(KOIA.."boobb"..msg.sender_id.user_id)
uuuu = Redis:get(KOIA.."bbobb"..msg.sender_id.user_id)
if text ~= text:match('^(%d+)$') then
Redis:del(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del(KOIA.."transn" .. msg.sender_id.user_id)
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ارسل رقم حساب بنكي ","md",true)
end
if text == cccc then
Redis:del(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del(KOIA.."transn" .. msg.sender_id.user_id)
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ مايمديك تحول لنفسك ","md",true)
end
if Redis:get(KOIA.."boballcc"..text) then
local UserNamey = Redis:get(KOIA.."transn"..msg.sender_id.user_id)
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد "
end
local fsvhhh = Redis:get(KOIA.."boballid"..text)
local bann = LuaTele.getUser(fsvhhh)
if bann.first_name then
newss = "["..bann.first_name.."](tg://user?id="..bann.id..")"
else
newss = " لا يوجد "
end
local fsvhh = Redis:get(KOIA.."boballban"..text)
UserNameyr = UserNamey / 10
UserNameyy = UserNamey - UserNameyr
Redis:decrby(KOIA.."boob"..msg.sender_id.user_id , UserNamey)
Redis:incrby(KOIA.."boob"..fsvhhh , math.floor(UserNameyy))
LuaTele.sendText(msg.chat_id,msg.id, "حوالة صادرة من بنك كولدن\n\nالمرسل : "..news.."\nالحساب رقم : `"..cccc.."`\nنوع البطاقة : "..uuuu.."\nالمستلم : "..newss.."\nالحساب رقم : `"..text.."`\nنوع البطاقة : "..fsvhh.."\nخصمت 10% رسوم تحويل\nالمبلغ : "..UserNameyy.." دولار 💵","md",true)
LuaTele.sendText(fsvhhh,0, "حوالة واردة من بنك كولدن\n\nالمرسل : "..news.."\nالحساب رقم : `"..cccc.."`\nنوع البطاقة : "..uuuu.."\nالمبلغ : "..UserNameyy.." دولار 💵","md",true)
Redis:del(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del(KOIA.."transn" .. msg.sender_id.user_id)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مافيه حساب بنكي كذا","md",true)
Redis:del(KOIA.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del(KOIA.."transn" .. msg.sender_id.user_id)
end
end

if text and text:match("^اضف فلوس (.*)$") and msg.reply_to_message_id ~= 0 then
local UserName = text:match('^اضف فلوس (.*)$')
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
local coniss = tonumber(coniss)
if msg.ControllerBot then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ كولدن ماعنده اي حساب بالبنك*","md",true)  
return false
end
local ban = LuaTele.getUser(Remsg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
Redis:incrby(KOIA.."boob"..Remsg.sender_id.user_id , coniss)
ccccc = Redis:get(KOIA.."boobb"..Remsg.sender_id.user_id)
uuuuu = Redis:get(KOIA.."bbobb"..Remsg.sender_id.user_id)
ppppp = Redis:get(KOIA.."zrfff"..Remsg.sender_id.user_id) or 0
ballanceed = Redis:get(KOIA.."boob"..Remsg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id, "⇜ الاسم ↢ "..news.."\n⇜ الحساب ↢ `"..ccccc.."`\n⇜ بنك ↢ ( كولدن )\n⇜ نوع ↢ ( "..uuuuu.." )\n⇜ الزرف ↢ ( "..ppppp.." دولار 💵 )\n⇜ صار رصيده ↢ ( "..ballanceed.." دولار 💵 )\n⌔","md",true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ماعنده حساب بنكي ","md",true)
end
end
end

if text == 'توب' or text == 'التوب' then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',data = {
{{text = 'توب الفلوس 🏦', data = msg.sender_id.user_id..'/top/flos'},{text = 'توب الحراميه 🏛️ ', data = msg.sender_id.user_id..'/top/zrf'},},
}}
return LuaTele.sendText(msg.chat_id,msg.id,'*مـرحـبا بك في قائـمة التوب لهذا الاسبوع ⌔*',"md",false, false, false, false, reply_markup)
end

if text == "توب الاموال" or text == "توب الفلوس" then
local bank_users = Redis:smembers(KOIA.."booob")
if #bank_users == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ لم يقم احد بعمل حساب بنكي","md",true)
end
top_mony = "توب اغنى 20 شخص :\n\n"
mony_list = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(KOIA.."boob"..v)
table.insert(mony_list, {tonumber(mony) , v})
end
table.sort(mony_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20"
}
for k,v in pairs(mony_list) do
if num <= 20 then
local user_name = LuaTele.getUser(v[2]).first_name
local user_tag = '['..user_name..'](tg://user?id='..v[2]..')'
local user_jack = '['..user_name..']('..user_name..')'
local mony = v[1]
local emo = emoji[k]
num = num + 1
top_mony = top_mony..emo.." - "..mony.." | "..user_jack.." 💸 \n"
end
end
return LuaTele.sendText(msg.chat_id,msg.id,top_mony,"md",true)
end

if text == "توب الحراميه" or text == "توب اللصوص" or text == "توب السرقه" or text == "توب الزرف" or text == "توب زرف" then
local ty_users = Redis:smembers(KOIA.."zrfffid")
if #ty_users == 0 then
return LuaTele.sendText(msg.chat_id,msg.id,"•  لم يقم احد ب سرقه الاموال حتي الان","md",true)
end
ty_siria = "توب 20 شخص سرقوا فلوس :\n#يتم تصفير النتائج كل اسبوع\n\n"
ty_list = {}
for k,v in pairs(ty_users) do
local mony = Redis:get(KOIA.."zrfff"..v)
table.insert(ty_list, {tonumber(mony) , v})
end
table.sort(ty_list, function(a, b) return a[1] > b[1] end)
num_ty = 1
emojii ={ 
"🥇" ,
"🥈",
"🥉",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20"
}
for k,v in pairs(ty_list) do
if num_ty <= 20 then
local user_name = LuaTele.getUser(v[2]).first_name
local user_tag = '['..user_name..'](tg://user?id='..v[2]..')'
local user_siria = '['..user_name..']('..user_name..')'
local mony = v[1]
local emoo = emojii[k]
num_ty = num_ty + 1
ty_siria = ty_siria..emoo.." - "..mony.." | "..user_siria.." 💸 \n"
end
end
return LuaTele.sendText(msg.chat_id,msg.id,ty_siria,"md",true)
end

if text == 'بخشيش' or text == 'بقشيش' then
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 10 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 9 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 8 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 7 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 6 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 5 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 4 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 3 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 2 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iioo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت بخشيش استنى ( 1 دقيقة )","md",true)
end
local jjjo = math.random(100,1000);
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , jjjo)
LuaTele.sendText(msg.chat_id,msg.id,"⇜ تكرم وهي بخشيش "..jjjo.." دولار 💵","md",true)
Redis:setex(KOIA.."iioo" .. msg.sender_id.user_id,600, true)
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'زرف' and tonumber(msg.reply_to_message_id) == 0 then
LuaTele.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`زرف` بالرد","md",true)
end

if text == 'زرف' or text == 'زرفو' or text == 'زرفه' and tonumber(msg.reply_to_message_id) ~= 0 then
local Remsg = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ كولدن ماعنده اي حساب بالبنك*","md",true)  
return false
end
if Remsg.sender_id.user_id == msg.sender_id.user_id then
LuaTele.sendText(msg.chat_id,msg.id,"\n*⇜ بدك تزرف نفسك 🤡*","md",true)  
return false
end
if Redis:ttl(KOIA.."polic" .. msg.sender_id.user_id) >= 280 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ انتا بالسجن 🏤 استنى ( 5 دقائق )","md",true)
elseif Redis:ttl(KOIA.."polic" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ انتا بالسجن 🏤 استنى ( 4 دقائق )","md",true)
elseif Redis:ttl(KOIA.."polic" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ انتا بالسجن 🏤 استنى ( 3 دقائق )","md",true)
elseif Redis:ttl(KOIA.."polic" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ انتا بالسجن 🏤 استنى ( 2 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."polic" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ انتا بالسجن 🏤 استنى ( 1 دقيقة )","md",true)
end
if Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 880 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 15 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 820 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 14 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 760 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 13 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 700 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 12 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 640 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 11 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 10 دقائق )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 9 دقائق )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 8 دقائق )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 7 دقائق )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 6 دقائق )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 5 دقائق )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 4 دقائق )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 3 دقائق )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."hrame" .. Remsg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ ذا المسكين مزروف قبل شوي\n⇜ يمديك تزرفه بعد ( 1 دقيقة )","md",true)
end
if Redis:sismember(KOIA.."booob",Remsg.sender_id.user_id) then
ballanceed = Redis:get(KOIA.."boob"..Remsg.sender_id.user_id) or 0
if tonumber(ballanceed) < 199 then
return LuaTele.sendText(msg.chat_id,msg.id, "⇜ مايمديك تزرفه فلوسه اقل من 200 دولار 💵","md",true)
end
local hrame = math.floor(math.random() * 200) + 1;
local hramee = math.floor(math.random() * 5) + 1;
if hramee == 1 or hramee == 2 or hramee == 3 or hramee == 4 then
local ballanceed = Redis:get(KOIA.."boob"..Remsg.sender_id.user_id) or 0
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , hrame)
Redis:decrby(KOIA.."boob"..Remsg.sender_id.user_id , hrame)
Redis:setex(KOIA.."hrame" .. Remsg.sender_id.user_id,900, true)
Redis:incrby(KOIA.."zrfff"..msg.sender_id.user_id,hrame)
Redis:sadd(KOIA.."zrfffid",msg.sender_id.user_id)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ خد يا حرامي زرفته "..hrame.." دولار 💵\n⌔","md",true)
else
Redis:setex(KOIA.."polic" .. msg.sender_id.user_id,300, true)
LuaTele.sendText(msg.chat_id,msg.id, "⇜ مسكتك الشرطة وانتا تزرف 🚔\n⌔","md",true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ماعنده حساب بنكي ","md",true)
end
end

if text == 'راتب' or text == 'راتبي' then
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 580 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 10 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 540 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 9 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 480 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 8 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 7 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 6 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 5 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 240 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 4 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 180 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 3 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiioo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ راتبك بينزل بعد ( 1 دقيقة )","md",true)
end
local Textinggt = {"كابتن كريم 🚙", "شرطي 👮🏻‍♂️", "بياع حمشهور 🍻", "سواق تاكسي 🚕", "قاضي 👨🏻‍⚖️", "نوم 🛌", "مغني 🎤", "كوفيره 💆🏻‍♀️", "ربة منزل 🤷🏻‍♀️", "مربيه اطفال 💁🏻‍♀️", "كهربائي 💡", "نجار ⛏", "متذوق طعام 🍕", "فلاح 👨🏻‍🌾", "كاشير بنده 🙋🏻‍♂️", "ممرض 👨🏻‍⚕️", "مهرج 🤹‍♂️", "عامل توصيل 🚴🏻‍♂️", "عسكري 👮🏻‍♂️", "مهندس 👨🏻‍🔧", "وزير 👨??‍🦳", "محامي ⚖️", "تاجر 💵", "دكتور 👨🏻‍⚕️", "حفار قبور ⚓️", "حلاق ✂️", "إمام مسجد 📿", "صياد 🎣", "خياط 🧵", "طيار 🛩", "مودل 🕴🏻", "ملك 👑", "سباك 🔧", "موزع 🗺", "سكيورتي 👮🏻‍♂️", "معلم شاورما 🌯", "دكتور ولاده 👨🏻‍⚕️", "مذيع 🗣", "عامل مساج 💆🏻‍♂️", "ممثل 🤵🏻", "جزار 🥩", "مدير بنك 💳", "مبرمج 👨🏻‍💻", "رقاصه 💃🏻", "👩🏼‍💻 صحفي", "🥷 حرامي", "🔮 ساحر", "⚽ لاعب️", "🖼 مصور", "☎️ عامل مقسم", "📖 كاتب", "🧪 مخبري",}
local Descriptioont = Textinggt[math.random(#Textinggt)]
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد "
end
if Descriptioont == "كابتن سفينه 🚙" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 50)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 25 دولار 💵\nوظيفتك : كابتن سفينه 🚙\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "شرطي 👮🏻‍♂️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 75)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 75 دولار 💵\nوظيفتك : شرطي 👮🏻‍♂️\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "بياع حمشهور 🍻" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 75)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 75 دولار 💵\nوظيفتك : بياع حمشهور 🍻\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "سواق تاكسي 🚕" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 50)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 50 دولار 💵\nوظيفتك : سواق تاكسي 🚕\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "قاضي 👨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 150 دولار 💵\nوظيفتك : قاضي 👨\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "نوم 🛌" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 15)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 10 دولار 💵\nوظيفتك : نوم 🛌\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مغني 🎤" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 30)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 30 دولار 💵\nوظيفتك : مغني 🎤\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كوفيره 💆" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 35)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 35 دولار 💵\nوظيفتك : كوفيره 💆\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ربة منزل 🤷" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 25)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 25 دولار 💵\nوظيفتك : ربة منزل 🤷\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مربيه اطفال 💁" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 35)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 35 دولار 💵\nوظيفتك : مربيه اطفال 💁\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كهربائي 💡" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 55)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 55 دولار 💵\nوظيفتك : كهربائي 💡\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "نجار ⛏" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 65)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 65 دولار 💵\nوظيفتك : نجار ⛏\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "متذوق طعام 🍕" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 15)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 15 دولار 💵\nوظيفتك : متذوق طعام 🍕\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "فلاح 👨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 27)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 27 دولار 💵\nوظيفتك : فلاح 👨\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كاشير بنده 🙋" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 50)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 50 دولار 💵\nوظيفتك : كاشير بنده 🙋\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ممرض ??" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 160 دولار 💵\nوظيفتك : ممرض 👨\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مهرج 🤹" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 46)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 46 دولار 💵\nوظيفتك : مهرج 🤹\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عامل توصيل 🚴" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 59)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 59 دولار 💵\nوظيفتك : عامل توصيل 🚴\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عسكري 👮" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 130)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 130 دولار 💵\nوظيفتك : عسكري 👮\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار ??","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مهندس 👨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 200 دولار 💵\nوظيفتك : مهندس 👨\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "وزير 👨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 450)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 450 دولار 💵\nوظيفتك : وزير 👨\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "محامي ⚖️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 200 دولار 💵\nوظيفتك : محامي ⚖️\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تاجر 💵" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 250)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 250 دولار 💵\nوظيفتك : تاجر 💵\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "دكتور 👨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 250)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 250 دولار 💵\nوظيفتك : دكتور 👨\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "حفار قبور ⚓" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 50)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 50 دولار 💵\nوظيفتك : حفار قبور ⚓\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "حلاق ✂" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 40)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 40 دولار 💵\nوظيفتك : حلاق ✂\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "إمام مسجد 📿" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 50)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 50 دولار 💵\nوظيفتك : إمام مسجد 📿\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "صياد 🎣" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 70)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 70 دولار 💵\nوظيفتك : صياد 🎣\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "خياط 🧵" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 30)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 30 دولار 💵\nوظيفتك : خياط 🧵\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "طيار 🛩" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 230)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 230 دولار 💵\nوظيفتك : طيار 🛩\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مودل 🕴" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 160 دولار 💵\nوظيفتك : مودل 🕴\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ملك 👑" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 500)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 500 دولار 💵\nوظيفتك : ملك 👑\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "سباك 🔧" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 20)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 20 دولار 💵\nوظيفتك : سباك 🔧\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "موزع 🗺" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 100 دولار 💵\nوظيفتك : موزع 🗺\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "سكيورتي 👮" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 90)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 90 دولار 💵\nوظيفتك : سكيورتي 👮\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "معلم شاورما 🌯" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 85)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 85 دولار 💵\nوظيفتك : معلم شاورما 🌯\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "دكتور ولاده 👨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 160 دولار 💵\nوظيفتك : دكتور ولاده 👨\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مذيع 🗣" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 170)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 170 دولار 💵\nوظيفتك : مذيع 🗣\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار ??","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عامل مساج 💆" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 40)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 40 دولار 💵\nوظيفتك : عامل مساج 💆\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ممثل 🤵" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 190)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 190 دولار 💵\nوظيفتك : ممثل 🤵\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "جزار 🥩" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 50)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 50 دولار 💵\nوظيفتك : جزار 🥩\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مدير بنك 💳" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 200 دولار 💵\nوظيفتك : مدير بنك 💳\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مبرمج 👨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 180)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 50 دولار 💵\nوظيفتك : مبرمج 👨\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "رقاصه 💃" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 55)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 55 دولار 💵\nوظيفتك : رقاصه 💃\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "👩🏼‍💻 صحفي" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 90)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 90 دولار 💵\nوظيفتك : 👩🏼‍💻 صحفي\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "🥷 حرامي" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 160 دولار 💵\nوظيفتك : 🥷 حرامي\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "🔮 ساحر" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 100 دولار 💵\nوظيفتك : 🔮 ساحر\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "⚽ لاعب️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 200 دولار 💵\nوظيفتك : ⚽ لاعب️\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "🖼 مصور" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 70)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 70 دولار 💵\nوظيفتك : 🖼 مصور\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "☎️ عامل مقسم" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 50)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 50 دولار 💵\nوظيفتك : ☎️ عامل مقسم\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "📖 كاتب" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 40)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 40 دولار 💵\nوظيفتك : 📖 كاتب\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "🧪 مخبري" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 80)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nالمبلغ : 80 دولار 💵\nوظيفتك : 🧪 مخبري\nنوع العملية : اضافة راتب\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiioo" .. msg.sender_id.user_id,600, true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == "جوزني" or text == "زوجني" then
local Info_Chats = LuaTele.getSupergroupFullInfo(msg.chat_id)
local chat_Members = LuaTele.searchChatMembers(msg_chat_id, "*", Info_Chats.member_count).members
local rand_members = math.random(#chat_Members)
local member_id = chat_Members[rand_members].member_id.user_id
local member_name = LuaTele.getUser(chat_Members[rand_members].member_id.user_id).first_name
local mem_tag = "["..member_name.."](tg://user?id="..member_id..")"
return LuaTele.sendText(msg_chat_id,msg_id,"اختارتلك زوجتك اهي  "..mem_tag.." 😹♥","md",true)
end
if Redis:get(KOIA.."mshaher"..msg.chat_id) then
if text == Redis:get(KOIA.."mshaher"..msg.chat_id) then
Redis:del(KOIA.."mshaher"..msg.chat_id)
Redis:incrby(KOIA.."Num:Add:Games"..msg.chat_id..msg.sender_id.user_id, 1)  
return LuaTele.sendText(msg_chat_id,msg_id,"\n⌔ لقد فزت في اللعبه \n⌔ العب مره اخره وارسل - مشهور او مشاهير","md",true)  
end
end 

if text == 'كنز' or text == 'الكنز' then
if Redis:sismember(KOIA.."booob",msg.sender_id.user_id) then
if Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 5130 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 10 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 5100 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 9 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 4130 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 8 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 420 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 7 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 360 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 6 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 300 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 5 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 2100 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 4 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 1130 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 3 دقائق )","md",true)
elseif Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 120 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl(KOIA.."iiihoo" .. msg.sender_id.user_id) >= 60 then
return LuaTele.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 1 دقيقة )","md",true)
end
local Textinggt = {"ذهب ✨", "فضه 💰", "ورث 💰", "ياقوت ✨", "مرجان ✨🏻‍⚖️", "سبيكة ذهب خالص 💸", "عمله نادره 🔮", "اثار ⚱️🏻‍♀️", "فلوس 💴💸🏻‍♀️", "عمله قيمه💸🏻‍♀️", "كنز مفقود💸", "مجوهرات 💰", "عمله من العصر الفرعوني 🗿", "عمله من الدوله القديمه 🗿🏻‍🌾", "عمله بيتكوين 💶🏻‍♂️", "ممرض 👨🏻‍⚕️", "عمله فضيه نادره‍♂️", "عمله ذهبيه خالصه🏻‍♂️", "كنز علي بابا المفقود 💰🏻‍♂️", "بطاقه ائتمان💰🏻‍🔧", "دولار امريكي 💸??‍🦳", "دولار كندي 💸", "ين يباني 💸", "دولار بريطاني 💸🏻‍⚕️", "دنانير عراقيه 💸️", "ريال سعودي 💴️", "درهم اماراتي 💴", "فرنك جيبوتي 💲", "اموال مفقوده 💲", "كنز خاص 💲", "صواع ملك مفقود ⚱️🏻", "تاج خاص بملك 👑", "تاج خاص بملك 👑", "اثار تحت المنزل", "جثة فرعون قديمه🏻‍♂️", "تابوت ملك عراقي ⚰️", "تاج ملكه عراقيه 👑🏻‍⚕️", "مخطوطه لكنز ", "مقبره فرعونيه 💎⚱️⚰️🏻‍♂️", "تمثال رمسيس ⚰️🏻", "كنز كولدن المفقود 💲", "كنز اطلانطس المفقود 💲", "زئبق احمر 🌡️🏻‍💻", "ياقوت ومرجان 💰🏻", "عمله من العصر الفاطمي 💶", "مخطوطة كنز 📜", "بلوره قديمه 🔮", "كنز تائه 🏛️", "عملات من العصر المملوكي 💲", "كنز نابليون 💲💲", "كنز وخلاص 😂💲💲", "ممتلكات قديمه 💸",}
local Descriptioont = Textinggt[math.random(#Textinggt)]
local ban = LuaTele.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد "
end
if Descriptioont == "ذهب ✨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 25 دولار 💵\nكنزك هـو : ذهب ✨\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "فضه 💰" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 75)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 75 دولار 💵\nكنزك هـو : فضه 💰\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ورث 💰" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 75)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 75 دولار 💵\nكنزك هـو : ورث 💰\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ياقوت ✨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 دولار 💵\nكنزك هـو : ياقوت ✨\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مرجان ✨" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 1150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 1150 دولار 💵\nكنزك هـو : مرجان ✨\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "سبيكة ذهب خالص 💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 15)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 10 دولار 💵\nكنزك هـو : سبيكة ذهب خالص 💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله نادره 🔮" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 30)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 30 دولار 💵\nكنزك هـو : عمله نادره 🔮\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "اثار ⚱️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 35)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 35 دولار 💵\nكنزك هـو : اثار ⚱️\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "فلوس 💴💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 25)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 25 دولار 💵\nكنزك هـو : فلوس 💴💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله قيمه💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 35)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 35 دولار 💵\nكنزك هـو : عمله قيمه💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز مفقود💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 300)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 300 دولار 💵\nكنزك هـو : كنز مفقود💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مجوهرات 💰" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 65)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 65 دولار 💵\nكنزك هـو : مجوهرات 💰\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله من العصر الفرعوني 🗿" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 15)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 15 دولار 💵\nكنزك هـو : عمله من العصر الفرعوني 🗿\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله من الدوله القديمه 🗿" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 27)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 27 دولار 💵\nكنزك هـو : عمله من الدوله القديمه 🗿\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله بيتكوين 💶" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 دولار 💵\nكنزك هـو : عمله بيتكوين 💶\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله ذهبيه نادره" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 دولار 💵\nكنزك هـو : ممرض 👨\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله فضيه نادره" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 دولار 💵\nكنزك هـو : عمله فضيه نادره\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله ذهبيه خالصه" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 59)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 59 دولار 💵\nكنزك هـو : عمله ذهبيه خالصه\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز علي بابا المفقود 💰" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 130)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 130 دولار 💵\nكنزك هـو : كنز علي بابا المفقود 💰\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار ??","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "بطاقه ائتمان💰" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 دولار 💵\nكنزك هـو : بطاقه ائتمان💰\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "دولار امريكي 💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 4150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 4150 دولار 💵\nكنزك هـو : دولار امريكي 💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "دولار كندي 💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 دولار 💵\nكنزك هـو : دولار كندي 💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ين يباني 💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 2150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 2150 دولار 💵\nكنزك هـو : ين يباني 💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "دولار بريطاني 💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 2150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 2150 دولار 💵\nكنزك هـو : دولار بريطاني 💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "دنانير عراقيه 💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 دولار 💵\nكنزك هـو : دنانير عراقيه 💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ريال سعودي 💴" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 دولار 💵\nكنزك هـو : ريال سعودي 💴\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "درهم اماراتي 💴" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 دولار 💵\nكنزك هـو : درهم اماراتي 💴\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "فرنك جيبوتي 💲" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 دولار 💵\nكنزك هـو : فرنك جيبوتي 💲\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "اموال مفقوده 💲" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 30)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 30 دولار 💵\nكنزك هـو : اموال مفقوده 💲\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز خاص 💲" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 230)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 230 دولار 💵\nكنزك هـو : كنز خاص 💲\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "صواع ملك مفقود ⚱️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 دولار 💵\nكنزك هـو : صواع ملك مفقود ⚱️\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تاج خاص بملك 👑" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 1500)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 1500 دولار 💵\nكنزك هـو : تاج خاص بملك 👑\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تاج خاص بملك 👑" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 20)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 20 دولار 💵\nكنزك هـو : تاج خاص بملك 👑\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "اثار تحت المنزل" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 دولار 💵\nكنزك هـو : اثار تحت المنزل\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "جثة فرعون قديمه" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 90)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 90 دولار 💵\nكنزك هـو : جثة فرعون قديمه\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تابوت ملك عراقي ⚰️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 دولار 💵\nكنزك هـو : تابوت ملك عراقي ⚰️\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تاج ملكه عراقيه 👑" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 دولار 💵\nكنزك هـو : تاج ملكه عراقيه 👑\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مخطوطه لكنز " then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 1200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 1200 دولار 💵\nكنزك هـو : مخطوطه لكنز \nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار ??","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مقبره فرعونيه 💎⚱️⚰️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 دولار 💵\nكنزك هـو : مقبره فرعونيه 💎⚱️⚰️\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تمثال رمسيس ⚰️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 190)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 190 دولار 💵\nكنزك هـو : تمثال رمسيس ⚰️\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز كولدن المفقود 💲" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 دولار 💵\nكنزك هـو : كنز كولدن المفقود 💲\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز اطلانطس المفقود 💲" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 دولار 💵\nكنزك هـو : كنز اطلانطس المفقود 💲\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "زئبق احمر 🌡️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 1130)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 دولار 💵\nكنزك هـو : زئبق احمر 🌡️\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ياقوت ومرجان 💰" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 300)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 300 دولار 💵\nكنزك هـو : ياقوت ومرجان 💰\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله من العصر الفاطمي 💶" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 90)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 90 دولار 💵\nكنزك هـو : عمله من العصر الفاطمي 💶\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مخطوطة كنز 📜" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 دولار 💵\nكنزك هـو : مخطوطة كنز 📜\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "بلوره قديمه 🔮" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 دولار 💵\nكنزك هـو : بلوره قديمه 🔮\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز تائه 🏛️" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 دولار 💵\nكنزك هـو : كنز تائه 🏛️\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عملات من العصر المملوكي 💲" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 دولار 💵\nكنزك هـو : عملات من العصر المملوكي 💲\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز نابليون 💲💲" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 دولار 💵\nكنزك هـو : كنز نابليون 💲💲\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز وخلاص 😂💲💲" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 دولار ??\nكنزك هـو : كنز وخلاص 😂💲💲\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ممتلكات قديمه 💸" then
Redis:incrby(KOIA.."boob"..msg.sender_id.user_id , 130)
local ballancee = Redis:get(KOIA.."boob"..msg.sender_id.user_id) or 0
LuaTele.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 130 دولار 💵\nكنزك هـو : ممتلكات قديمه 💸\nنوع العملية : البحث عن كنز\nرصيدك هسه : "..ballancee.." دولار 💵","md",true)
Redis:setex(KOIA.."iiihoo" .. msg.sender_id.user_id,600, true)
end
else
LuaTele.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

end
return {
KOIA = Bank
}
