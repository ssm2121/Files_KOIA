local function Rdodbot(msg)
if msg.content.text then
text = msg.content.text.text
else 
text = nil
end
------------------------------------------------------------
if text == 'تفعيل ردود البوت'  then         
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
Text = Reply_Status(msg.sender_id.user_id,"*℘︙تم "..text.." بنجاح*").Reply
Redis:del(TheKOIA..":"..msg.chat_id..":Rdodbot")  
else
Text = Reply_Status(msg.sender_id.user_id,"*℘︙تم "..text.." سابقا*").Reply
end
LuaTele.sendText(msg.chat_id,msg.id,Text,"md",true)
end
if text == 'تعطيل ردود البوت' then        
if not Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
Redis:set(TheKOIA..":"..msg.chat_id..":Rdodbot",true)  
Text = Reply_Status(msg.sender_id.user_id,"*℘︙تم "..text.." بنجاح*").Reply
else
Text = Reply_Status(msg.sender_id.user_id,"*℘︙تم "..text.." سابقا*").Reply
end
LuaTele.sendText(msg.chat_id,msg.id,Text,"md",true)
end
--
------------------------------
if text == "هلو" or text == "هلاو" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"هـلابـيك قـلبـي نـورت💘","هـلاوات يحات مـسيوو وايد💘😻","هـلابـيك/ج يـحـيلـي🥺","هـلاوات عمࢪيي مـسيو كـلش كـلش🥺💘"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "شلونكم" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"تـمـام عمࢪيي نتا ڪيفڪ💘💋","تـمام ونت گـيفـك قـلبـي💘"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "شلونك" or text == "شلونج" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"عمࢪࢪيي قـميـل بخيࢪ اذا حـلو بخيࢪ💘🙊","بـخيـر يـحيـلي ونـت💘","الحمدلله انت/ي شـخبارك/ج☹️"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "تمام" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"تـدوم عمࢪيي💘","دومـك/ج قـلبـي💘","دومـك/ج ياربي☹️","يـدوم احـبابـك/ج🥺"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "😐" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"شـبي حـلـو صـافـن😻💋","لـيش حـلـو صـافـن😹🥺"," لاتـصـفـن عـمـࢪيي😹"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "هاي" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"هـايـات يلصاڪ نـوࢪتـنـا💘","هـايـا يـحـلو انـرت🥺✨"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "اريد اكبل" or text == "اريد ارتبط" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"امـشي وخࢪ مـنـا يدوࢪ تـڪـبيل😏","وخـࢪ مـنـا مـاࢪيـد زواحـف😹","ادعـبل ابـنـي😚","اࢪتـبـط مـحـد لازمـك🙊","خـل اࢪتـبـط انـي بالاول😹"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "ريد ازحف" or text == "ازحفلج" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"شـعليڪ بـي عمࢪيي خـلي يـزحف💘☹️","عـيـب ابـنـي😐😹","شـگـبـࢪگ شـعـرضـك تـزحـف😹😕","بـعـدگ زغـيـࢪ ع زحـف ابـنـي😹😒"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "كلخرا" or text == "اكليخرا" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"اسـف عمࢪيي مـا خليڪ بـحـلڪي😹💘","خـلـي ࢪوحـك مـاعـون 😹😘","اوگ اكــلـتـك/ج😹😹"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "دي" or text == "دد" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"امـشـيڪ بـيها عمࢪيي"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "فروخ" or text == "فرخ" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"ويـنـه بـلـه خـل حـصـࢪه😹🤤","ويـنـه بـلـه خـل تـفـل عـلـيه💦😗"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "تعي خاص" or text == "خ" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"هااا يـول اخـذتـها خـاص😹🙊","گـفـو اخـذتـهـا خـاص😉😹","بـخـت ࢪاحـو خـاص😭"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "اكرهج" or text == "اكرهك" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"عـساس انـي مـيـت بيڪڪ دمـشـي لڪ😿😹"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "احبك" or text == "احبج" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"يـحـياتـي وانـي هـم حـبـڪڪ🙈💋"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "باي" or text == "بايي" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"ويـن رايـح عمࢪيي خـلـينـا مـونـسـيـن🥺💘","لله وياگ ضـلـعي😗","سـد بـاب وࢪاگ😹"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "عوائل" or text == "صايره عوائل" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"عمࢪيي الـحلـو انـي ويـاڪ نـسـولف🥺😻","حـبيـبي ولله ࢪبـط فـيـشه ويـانـا🙈💋"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "واكف" or text == "بوت واكف" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"شـغال عمࢪيي🤓💘"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "ون مدير" or text == "وين مدير" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"عمࢪيي تـفـضل وياڪ مـديـࢪ💘"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "نجب" or text == "انجب" or text == "انجبي" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"صـاࢪ عمࢪيي💘🥺","لش عـمࢪيي شـسويت☹️💔"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "تحبيني" or text == "تحبني" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"سـؤال صـعـب خلـيـني افڪࢪ☹️"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "صباحو" or text == "صباح الخير" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"يـمـه فـديـت صباحڪ 💋🙈","صـباح قـشطه واللوز للحـلو💋🙊"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "كفو" or text == "كفوو" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"ڪـفـو مـنڪ عمࢪيي💘"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "شسمج" or text == "شسمك" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"اسـمـي احـلاهـن واتـحداهـن😹😹💘","اسـمـي صڪاࢪ بـنـات😗💘"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "مساء الخير" or text == "مسائو" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"مـساء العـافـيه عمࢪيي🥺","مسـآء الـياسـمين💋💘"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "رايح للمدرسه" or text == "مدرسه" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"لاجـيـب اسـمـها لاسـطࢪڪ😏😹"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "هههه" or text == "ههههه" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"فـدوا عـساا دوم💘","ضڪه تࢪد ࢪوح دايـمه عمغࢪيي🙈💘"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
if text == "احبجج" or text == "حبج" then
if Redis:get(TheKOIA..":"..msg.chat_id..":Rdodbot") then
return LuaTele.sendText(msg.chat_id,msg.id,"md",true)  
end
NameBots = {"جـذاب تࢪا يـضـحڪ علـيـج😼💘"}
LuaTele.sendText(msg.chat_id,msg.id,"*"..NameBots[math.random(#NameBots)].."*","md",true)  
end
------------------------------------------------------------
end -- Rdodbot(msg)
return {Run = Rdodbot}