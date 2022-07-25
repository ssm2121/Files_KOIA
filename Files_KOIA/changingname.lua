local function ChengName(msg)
if msg.content.text then
text = msg.content.text.text
else 
text = nil
end
if text then 
local UserInfo = LuaTele.getUser(msg.sender_id.user_id)
if UserInfo.id then 
if UserInfo.id ~= TheKOIA then
local RunChengName = Redis:get(TheKOIA.."Cheng:Name"..UserInfo.id)
if UserInfo.first_name == "" then 
if RunChengName then 
LuaTele.sendText(msg.chat_id,msg.id,"ليش حذفت اسمك اسمك لقديم : "..RunChengName..']',"md",true)  
Redis:del(TheKOIA.."Cheng:Name"..UserInfo.id) 
end
end
if UserInfo.first_name ~= "" then 
if RunChengName ~= UserInfo.first_name then 
local Text = {'ها يول شو مغير اسمك',"منور اسم جديد : "..UserInfo.first_name.."."}
LuaTele.sendText(msg.chat_id,msg.id,Text[math.random(#Text)],"md",true)  
end  
Redis:set(TheKOIA.."Cheng:Name"..UserInfo.id, UserInfo.first_name) 
end
end
end
end
end
return {Run = ChengName}