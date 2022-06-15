import requests
import json
from webex_bot.models.command import Command

class sendDadJoke(Command):
    def __init__(self):
        super().__init__(
            command_keyword="telljoke",
            help_message="Fetch a joke from icanhazdadjoke API"
        )

    def execute(self, message, attachment_actions, activity):
        url = "https://icanhazdadjoke.com/"
        headers = {"Accept": "application/json", "UserAgent": "webexteamsbot"}
        response = requests.get(url, headers=headers)
        joke = response.json()['joke']

        return joke