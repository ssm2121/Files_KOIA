local function ChangeUser(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local muh = Devmuh:get("KOIA:User"..result.id_)
if not result.username_ then 
if muh then 
Dev_muh(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بسرعه، 😹💔 \nهذا معرفه @"..muh.."", 1, 'html')
Devmuh:del("KOIA:User"..result.id_) 
end
end
if result.username_ then 
if muh and muh ~= result.username_ then 
local muh_text = {
'معرفك الجديد عشره بربع محد ياخذه😹💔',
"هاها غيرت معرفك نشروك بقناة فضايح😹💔💭",
"معرفك الجديد حلو منين خامطه؟!🤤♥️",
"معرفك القديم @"..result.username_.." ضمه بقناة لاينبعص، 😹♥️",
}
muhs = math.random(#muh_text)
Dev_muh(msg.chat_id_, msg.id_, 1, muh_text[muhs], 1, 'html')
end  
Devmuh:set("KOIA:User"..result.id_, result.username_) 
end
end
end,nil) 
end
end

end
return {
KOIA = ChangeUser
}