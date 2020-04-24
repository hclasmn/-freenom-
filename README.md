-v .env:/freenom/.env

.env:
#####################################################################
# 注意事项
#
# - 环境变量的格式为“键=值”，顶格写，注意等号两边不能有空格，值可以用单引号或者双引号引起来，不引也行（下面的特殊情况必须引起来）
# - 因为环境变量中“#”代表注释，若密码中存在“#”字符的，一定要使用单引号将整个密码引起来，否则解析会在“#”字符前截止，如果密码中存在单双引号字符的，
#    需要在单双引号前加“\”转义
# - 配置多账户不可省略单引号，且多个账户和密码的格式必须是“<账户1>@<密码1>|<账户2>@<密码2>|<账户3>@<密码3>”，不要有空格，就算有程序也会给你干掉
#    e.g. MULTIPLE_ACCOUNTS='<账户1>@<密码1>|<账户2>@<密码2>|<账户3>@<密码3>'
# - 若你只有单个账户，只配置FREENOM_USERNAME和FREENOM_PASSWORD就够了
# - 单账户和多账户的配置会被合并在一起读取并去重
#####################################################################

# Freenom账户 Freenom Account
FREENOM_USERNAME=593198779@qq.com

# Freenom密码 Freenom password
FREENOM_PASSWORD=''

# 多账户支持 Support for multiple accounts
MULTIPLE_ACCOUNTS=''

# 机器人邮箱账户 Email of robot
MAIL_USERNAME=llf.push@gmail.com

# 机器人邮箱密码（Gmail填密码，QQ邮箱或163邮箱填授权码） Password of the robot email
MAIL_PASSWORD=xxx

# 接收通知的邮箱 Email address used to receive notifications
TO=mybsdc@qq.com

# Telegram bot
# 可选配置，通过 Telegram bot 发送通知消息 This is an optional configuration to send notification messages via Telegram bot

# 你的chat_id，通过发送“/start”给@userinfobot可以获取自己的id Your chat_id, you can get your own id by sending "/start" to @userinfobot
TELEGRAM_CHAT_ID=''

# 你的Telegram bot的token Token for your Telegram bot
TELEGRAM_BOT_TOKEN=''

# End telegram bot
