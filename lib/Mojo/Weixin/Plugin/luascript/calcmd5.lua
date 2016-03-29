local md5 = require("md5")
table.insert(main_help_table, ".md5 获取md5()")
function calcmd5(msg,msg_time,buddy_name,buddy_num,qun_name,qun_num)
	if string.match(msg,"^%.md5")==nil then return end
	local str= msg:match("^%.md5 (.*)")
	local result=""
	result = md5.sumhexa(str)
	say_qun(result)
end
