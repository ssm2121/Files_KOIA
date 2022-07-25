local function MuteNames(msg)
if msg.content.text then
text = msg.content.text.text
else 
text = nil
end
if ChatType == 'sp' or ChatType == 'gp'  then
if Devmuh:get(KOIA.."muh:Lock:MuteNames"..msg_chat_id,msg_id) then
if Manager(msg) then
if text and (text:match("^كتم اسم (.*)$") or text:match("^كتم الاسم (.*)$")) then
local MuteName = text:match("^كتم اسم (.*)$") or text:match("^كتم الاسم (.*)$")
LuaTele.sendTextmsg_chat_id,msg_id, msg.id_, '⌔︙تم كتم الاسم ↫ '..MuteName)
Devmuh:sadd(KOIA.."muh:Mute:Names"..msg_chat_id,msg_id, MuteName)
end
if text and (text:match("^الغاء كتم اسم (.*)$") or text:match("^الغاء كتم الاسم (.*)$")) then
local UnMuteName = text:match("^الغاء كتم اسم (.*)$") or text:match("^الغاء كتم الاسم (.*)$")
LuaTele.sendTextmsg_chat_id,msg_id, msg.id_, '⌔︙تم الغاء كتم الاسم ↫ '..UnMuteName)
Devmuh:srem(KOIA.."muh:Mute:Names"..msg_chat_id,msg_id, UnMuteName)
end
end
if text == "حذف الاسماء المكتومه" and Constructor(msg) or text == "مسح الاسماء المكتومه" and Constructor(msg) then
Devmuh:del(KOIA.."muh:Mute:Names"..msg_chat_id,msg_id)
LuaTele.sendTextmsg_chat_id,msg_id, msg.id_, "⌔︙تم حذف الاسماء المكتومه")
end
if text == "الاسماء المكتومه" and Constructor(msg) then
local AllNames = Devmuh:smembers(KOIA.."muh:Mute:Names"..msg_chat_id,msg_id)
Text = "\n⌔︙قائمة الاسماء المكتومه ↫ ⤈\n┉ ≈ ┉ ≈ ┉ ≈ ┉ ≈ ┉\n"
for k,v in pairs(AllNames) do
Text = Text..""..k.."~ (["..v.."])\n"
end
if #AllNames == 0 then
Text = "⌔︙لاتوجد اسماء مكتومه"
end
LuaTele.sendTextmsg_chat_id,msg_id, msg.id_, Text)
end
end
if not Manager(msg) and Devmuh:get(KOIA.."muh:Lock:MuteNames"..msg_chat_id,msg_id) then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result.id_ then 
KOIAName = ((result.first_name_ or "") .. (result.last_name_ or ""))
if KOIAName then 
KOIANames = Devmuh:smembers(KOIA.."muh:Mute:Names"..msg_chat_id,msg_id) or ""
if KOIANames and KOIANames[1] then 
for i=1,#KOIANames do 
if KOIAName:match("(.*)("..KOIANames[i]..")(.*)") then 
DeleteMessage_(msg_chat_id,msg_id,{[0] = msg.id_}) 
end
end
end
end
end
end,nil)
end

if Constructor(msg) then
if text == "تفعيل كتم الاسم" or text == "تفعيل كتم الاسماء" then
LuaTele.sendTextmsg_chat_id,msg_id, msg.id_, '⌔︙تم التفعيل سيتم كتم العضو الذي يضع الاسماء المكتومه')
Devmuh:set(KOIA.."muh:Lock:MuteNames"..msg_chat_id,msg_id,true)
end
if text == "تعطيل كتم الاسم" or text == "تعطيل كتم الاسماء" then
LuaTele.sendTextmsg_chat_id,msg_id, msg.id_, '⌔︙تم تعطيل سيتم كتم العضو الذي يضع الاسماء المكتومه')
Devmuh:del(KOIA.."muh:Lock:MuteNames"..msg_chat_id,msg_id)
end
end
end

end
return {
KOIA = MuteNames,
}