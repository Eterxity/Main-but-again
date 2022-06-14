import discord
from discord.ext import commands

class help_cog(commands.Cog):
    def __init__(self, bot):
        self.bot = bot
        self.help_message = """
```
General commands:
.help - displays all the available commands
.p <Name of song on youtube (or video)> - finds the song on youtube and plays it in your current channel. Will resume playing the current song if it was paused
.q - displays the current queue
.skip - skips the current song
.clear - Stops music and clears queue
.leave - Disconnected the bot from vc
.pause - pauses the current song
.resume - resumes playing the song
```
"""
        self.text_channel_list = []

    @commands.command(name="help", help="Displays all the available commands")
    async def help(self, ctx):
        await ctx.send(self.help_message)

    async def send_to_all(self, msg):
        for text_channel in self.text_channel_list:
            await text_channel.send(msg)