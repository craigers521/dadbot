import os
from webex_bot.webex_bot import WebexBot
from getdadjoke import sendDadJoke

webex_token = os.environ["WEBEX_TEAMS_ACCESS_TOKEN"]

bot = WebexBot(webex_token)
bot.add_command(sendDadJoke())

bot.run()
