local function ChangePhoto(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local muh = Devmuh:get("KOIA:Photo"..result.id_)
if not result.profile_photo_ then 
if muh then 
Dev_muh(msg.chat_id_, msg.id_, 1, "حذف كل صوره مضروب بوري، 😹💔", 1, 'html')
Devmuh:del("KOIA:Photo"..result.id_) 
end
end
if result.profile_photo_ then 
if muh and muh ~= result.profile_photo_.big_.persistent_id_ then 
local muh_text = {
"وفف مو صوره غنبلةة، 🤤♥️",
"طالع صاكك بالصوره الجديده ممكن نرتبط؟ ، 🤤♥️",
"حطيت صوره جديده عود شوفوني اني صاكك بنات، 😹♥️",
"اححح شنيي هالصوره الجديده، 🤤♥️",
}
muh3 = math.random(#muh_text)
Dev_muh(msg.chat_id_, msg.id_, 1, muh_text[muh3], 1, 'html')
end  
Devmuh:set("KOIA:Photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end,nil) 
end
end

end
return {
KOIA = ChangePhoto
}