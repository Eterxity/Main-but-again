import discord 
from discord.ext import commands
import random
from random import randint

bot = commands.Bot(command_prefix=".")
message = ""

bennetNames = [
    "beanet",
    "bennet",
    "beanie",
    "bennett",
]

myNames = [
    "michael"
]

cmdList = [
    "money",
    "penis"
]

moneyint = 100

# @bot.command()  
# async def money(ctx):
#     await ctx.reply("You have "+str(moneyint)+" money")

# @bot.command()
# async def cmds(ctx):
#     await ctx.reply(cmdList)

# @bot.command()
# async def penis(ctx):
#     await ctx.reply("Your penis is about this long "+str(4)+" cm")

@bot.event
async def on_message(message):
    for beanieNames in bennetNames:
        if beanieNames in message.content:
            await message.reply("has diabetes.")
            break
    # for myName in myNames:
    #     if myName in message.content:
    #         await message.reply("is super cool.")
    #         break

bot.run("OTQxMTU0Mzg1NjEyOTIyOTEy.YgR0Uw.0B5Tldgr9HCOl7eQXjwtYv5BErQ")