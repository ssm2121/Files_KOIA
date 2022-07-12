local function TagAll(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if Manager(msg) then
if text == "all" or text == "@all" or text == "#all" then
if Devmuh:get(KOIA.."muh:TagAll:Time"..msg.chat_id_..':'..msg.sender_user_id_) then  
Dev_muh(msg.chat_id_, msg.id_, 1, '⌔︙انتظر دقيقه بعد ارسال الامر', 1, 'md')
return false  
end
if text:match("^all (.*)$") or text:match("^@all (.*)$") or text == "@all" or text == "all" then 
local ttag = text:match("^all (.*)$") or text:match("^@all (.*)$") 
if not msg.Manager then
return LuaTele.sendText(msg.chat_id,msg.id,Reply_Status(msg.sender_id.user_id,'⌔︙هذا الامر يخص ↫ '..Controller_Num(7)..' .\n').Warning,"md",true)    
end
if Redis:get(KOIA.."lockalllll") == "off" then
local Info_Members = LuaTele.searchChatMembers(msg.chat_id, "*", 200)
x = 0 
tags = 0 
local list = Info_Members.members
for k, v in pairs(list) do 
local data = LuaTele.getUser(v.member_id.user_id)
if x == 5 or x == tags or k == 0 then 
tags = x + 5 
if ttag then
t = "#all "..ttag.."" 
else
t = "#all "
end
end 
x = x + 1 
tagname = data.first_name
tagname = tagname:gsub("]","") 
tagname = tagname:gsub("[[]","") 
t = t..", ["..tagname.."](tg://user?id="..v.member_id.user_id..")" 
if x == 5 or x == tags or k == 0 then 
if ttag then
Text = t:gsub('#all '..ttag..',','#all '..ttag..'\n') 
else 
Text = t:gsub('#all,','#all\n')
end
LuaTele.sendText(msg.chat_id,0,Text,'md',true)
end 
end 
end 
end

end
return {
KOIA = TagAll
}
