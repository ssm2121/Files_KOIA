local function AutoFile(msg)
local text = msg.content_.text_

if (text and not Devmuh:get(KOIA.."muh:Lock:AutoFile")) then
Time = Devmuh:get(KOIA.."muh:AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then 
local list = Devmuh:smembers(KOIA..'muh:Groups') 
local Users = Devmuh:smembers(KOIA..'muh:Users') 
local BotName = (Devmuh:get(KOIA.."muh:NameBot") or 'دراكون')
local GetJson = '{"BotId": '..KOIA..',"BotName": "'..BotName..'","GroupsList":{'  
for k,v in pairs(list) do 
LinkGroups = Devmuh:get(KOIA.."muh:Groups:Links"..v)
Welcomes = Devmuh:get(KOIA..'muh:Groups:Welcomes'..v) or ''
muhConstructors = Devmuh:smembers(KOIA..'muh:muhConstructor:'..v)
BasicConstructors = Devmuh:smembers(KOIA..'muh:BasicConstructor:'..v)
Constructors = Devmuh:smembers(KOIA..'muh:Constructor:'..v)
Managers = Devmuh:smembers(KOIA..'muh:Managers:'..v)
Admis = Devmuh:smembers(KOIA..'muh:Admins:'..v)
Vips = Devmuh:smembers(KOIA..'muh:VipMem:'..v)
if k == 1 then
GetJson = GetJson..'"'..v..'":{'
else
GetJson = GetJson..',"'..v..'":{'
end
if #User ~= 0 then 
GetJson = GetJson..'"Users":['
for k,v in pairs(Users) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Vips ~= 0 then 
GetJson = GetJson..'"Vips":['
for k,v in pairs(Vips) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Admis ~= 0 then
GetJson = GetJson..'"Admis":['
for k,v in pairs(Admis) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Managers ~= 0 then
GetJson = GetJson..'"Managers":['
for k,v in pairs(Managers) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Constructors ~= 0 then
GetJson = GetJson..'"Constructors":['
for k,v in pairs(Constructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #BasicConstructors ~= 0 then
GetJson = GetJson..'"BasicConstructors":['
for k,v in pairs(BasicConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #muhConstructors ~= 0 then
GetJson = GetJson..'"muhConstructors":['
for k,v in pairs(muhConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if LinkGroups then
GetJson = GetJson..'"LinkGroups":"'..LinkGroups..'",'
end
GetJson = GetJson..'"Welcomes":"'..Welcomes..'"}'
end
GetJson = GetJson..'}}'
local File = io.open('./'..KOIA..'.json', "w")
File:write(GetJson)
File:close()
local muh = 'https://api.telegram.org/bot' .. TokenBot .. '/sendDocument'
local curl = 'curl "' .. muh .. '" -F "chat_id='..KOIA..'" -F "document=@'..KOIA..'.json' .. '" -F "caption=⌔︙نسخه تلقائيه تحتوي على ↫ '..#list..' مجموعه\n⌔︙وتحتوي ايضاَ علئ ↫ '..#Users..' مشترك\n•-› ✓"'
io.popen(curl)
io.popen('fm -fr '..KOIA..'.json')
Devmuh:set(KOIA.."muh:AutoFile:Time",os.date("%x"))
end
else 
Devmuh:set(KOIA.."muh:AutoFile:Time",os.date("%x"))
end
end

end
return {
KOIA = AutoFile
}
