local function ChangeName(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local muh = Devmuh:get("KOIA:Name"..result.id_)
if not result.first_name_ then 
if muh then 
Devmuh:del("KOIA:Name"..result.id_) 
end
end
if result.first_name_ then 
if muh and muh ~= result.first_name_ then 
local muh_text = {
"اسمك "..result.first_name_.." ليش غيرته 🌚😹",
"وفف اسمكك الجديد يشكك، 🤤♥️ ",
"ليش غيرت اسمك "..result.first_name_.."\n قطيت احد حبي ؟ 🌚😹",
"اسمك "..result.first_name_.." فد شي وين زخرفته ؟، 🤤♥️", 
}
muhs = math.random(#muh_text)
Dev_muh(msg.chat_id_, msg.id_, 1, muh_text[muhs], 1, 'html')
end  
Devmuh:set("KOIA:Name"..result.id_, result.first_name_)  
end
end
end,nil) 
end
end

end
return {
KOIA = ChangeName
}