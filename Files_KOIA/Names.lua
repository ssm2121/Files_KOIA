local function Names(msg)
if msg.content.text then
text = msg.content.text.text
else 
text = nil
end
if text == 'تيست' or text == '.' then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'مطۅٛࢪ اެݪسۅٛࢪس', url = 't.me/vvvvvg'}, 
},
}
}
return LuaTele.sendText(msg.chat_id,msg.id,"[𓄼𝐊𝐀𝐃𝐈༒ڪـٵډي 𓄹](tg://user?id=1229585839)","md",true, false, false, true, reply_markup)
end

end
return {
KOIA = Names,
}