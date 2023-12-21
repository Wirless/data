dofile(getDataDir() .. 'global/greeting.lua')


local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'meat'}, 					Cfmeat, 4)
shopModule:addBuyableItem({'ham'}, 					Cfham, 6)
 


keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the mistress of the hunt. At this place you may buy the food our hunts provide."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Watch the sky, it will tell you."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Carlin needs our protection and resources. Of course they will turn on us as soon as they feel strong enough."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Thais is to far away to prove a threat but also is of little help if problems should occur."})
keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Venore profits greatly from the trade with Ab'Denriel. I see those traders as leeches that suck away our resources."})
keywordHandler:addKeyword({'roderick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is our contact person to the thaian kingdom and a necessary evil."})
keywordHandler:addKeyword({'olrick'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He would love to be an elf but still is more kind of a pale orc."})
keywordHandler:addKeyword({'hunt'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hunting is an art, practiced too often by diletantes. Every fool with a bow or a spear considers himself a hunter."})
keywordHandler:addKeyword({'hunter'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hunters live a life of freedom and closeness to nature, unlike a simple farmer or bugherder."})
keywordHandler:addKeyword({'game'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hunting is an art, practiced too often by diletantes. Every fool with a bow or a spear considers himself a hunter."})
keywordHandler:addKeyword({'pray'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hunting is an art, practiced too often by diletantes. Every fool with a bow or a spear considers himself a hunter."})
keywordHandler:addKeyword({'forest'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The forests are the gardens of life. Nature provides enough for everyone's need, but not enough for everyone's greed."})
keywordHandler:addKeyword({'nature'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Nature is not a friend but an unforgiving teacher, and the lessons we have to learn are endless."})
keywordHandler:addKeyword({'teach'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Most lessons nature teaches are about life and death."})
keywordHandler:addKeyword({'life'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Life and death are significant parts of the balance."})
keywordHandler:addKeyword({'dea'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Life and death are significant parts of the balance."})
keywordHandler:addKeyword({'balance'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The balance of nature, of course. It's everywhere, so don't ask but observe and learn."})
keywordHandler:addKeyword({'bugherder'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Well, a person who herds bugs of course."})
keywordHandler:addKeyword({'bugs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The bugs provide us with chitin for equipment, bugmilk, and bugmeat."})
keywordHandler:addKeyword({'bugmilk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's delicious. Brasith sells it in his store."})
keywordHandler:addKeyword({'bow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bow, arrow, and spear are the hunters' best friends. In the northeast of the town one of us may sell such tools."})
keywordHandler:addKeyword({'arrow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bow, arrow, and spear are the hunters' best friends. In the northeast of the town one of us may sell such tools."})
keywordHandler:addKeyword({'spear'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Bow, arrow, and spear are the hunters' best friends. In the northeast of the town one of us may sell such tools."})
keywordHandler:addKeyword({'elves'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That is the race to which I belong."})
keywordHandler:addKeyword({'elf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "That is the race to which I belong."})
keywordHandler:addKeyword({'dwarf'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I will never understand these little people of the mountains."})
keywordHandler:addKeyword({'human'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The humans are a loud and ugly race. They lack any grace and are more kin to the orcs then to us."})
keywordHandler:addKeyword({'troll'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I despise their presence in our town, but it may be a necessary evil."})
keywordHandler:addKeyword({'cenath'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The magic they wield is all that matters to them."})
keywordHandler:addKeyword({'kuridai'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Kuridai are too agressive not only to people but also to the enviroment. They lack any understanding of the balance that we know as nature."})
keywordHandler:addKeyword({'deraisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We try to live in harmony with the forces of nature, may they be living or unliving."})
keywordHandler:addKeyword({'abdaisim'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The Abdaisim are our brothers and sisters in spirit. We stay in contact with them, exchanging news and items."})
keywordHandler:addKeyword({'teshial'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If they ever existed they are gone now."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The defiler. I will not talk about him."})
keywordHandler:addKeyword({'crunor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I guess it's a human god for the human sight of nature. I have not much knowledge of this entity."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell meat and ham."})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell meat and ham."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell meat and ham."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell meat and ham."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell meat and ham."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell meat and ham."})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())