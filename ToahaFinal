import time
import random
from random import randint

name = input("What is your name brave adventurer?")
print("Ah hello there "+name+". You are very brave to come here. May Toaha be with you.")
#Try except
try:
    #Loops
    mainLoop = True
    secondaryLoop = True

    #Enemy Stats
    Enemylevel = 0
    Enemyhealth = 0
    enemyDefense = 0
    EnemyDamage = 0

    #Enemies
    enemies = ["Goblin", "Ogre", "Cyclops","Werewolf"]
    bosses = ["Stone King", "Monke", "Fire Dragon"]
    currentEnemy = random.choice(enemies)

    #End Stats
    totalDamage = 0
    enemiesSlain = 0

    #Player
    playerHealth = 100
    playerDefense = 0
    Hunger = 100
    damageDealt = 10
    currentWeapon = "Novice Sword"
    currentArmor = []
    armorInventory = []
    weaponInventory = []
    foodInventory = []
    gold = 50
    goldEarned = 0

    #Shop
    foods = ["Health Potion", "Bread", "Cake", "Cookie", "Human Flesh"]
    weapons = ["Long Sword","Spear","Shield","Javlin","Axe","Knife"]
    armors = ["Iron Helmet", "Iron Chestplate", "Iron Leggings", "Iron Boots","Chainmail Helmet", "Chainmail Chestplate", "Chainmail Leggings", "Chainmail Boots"]

    #Shop Prices
    foodPrices = [100, 25, 200, 20, 100]
    weaponPrices = [200, 300, 250, 200, 150, 75]
    armorPrices = [200, 300, 300, 150, 75, 100, 75, 25]

    #Armor Stats
    armor_stats = [3, 5, 4, 2, 1, 3, 2, 1]

    #Food saturation
    HealthPotion = randint(25, 85)
    Bread = randint(7,15)
    Cake = randint(50,75)
    Cookie = randint(3,10)
    HumanFlesh = 1

    #Weapon Stats
    NoviceSword = 10
    LongSword = 50
    Spear = 40
    Shield = 5
    Javlin = 45
    Axe = 35
    Knife = 25

    #Choices (Menu)
    menu = ["Fight an enemy", "Shop", "Inventory", "Eat", "Gamble", "Quit", "(Recommended if you're new.) -> Help"]

    #Blackjack variables
    deck = []

    #Functions for Blackjack 
    def card_deck():
        card_value = ["Ace","2","3","4","5","6","7","8","9","10","J","Q","K"]
        card_type = ["Hearts","Spades","Clubs","Diamonds"]
        deck = []
        for i in card_type:
            for j in card_value:
                #List Method
                deck.append(j + " of " + i)
        return deck

    def card_value(card):
        #Slicing
        if card[:1] in ("J","Q","K","1"):
            return int(10)
        elif card[:1] in ("2","3","4","5","6","7","8","9"):
            return int(card[:1])
        elif card[:1] == "A":
            print ("\n"+ str(card))
            num = input("Do you want this to be 1 or 11?\n>")
            while num !="1" or num !="11":
                if num == "1":
                    return int(1)
                elif num == "11":
                    return int(11)
                else:
                    num = input("Do you want this to be 1 or 11?\n>")

    def new_card(deck):
        return deck[randint(0,len(deck)-1)]

    def remove_card(deck,card):
        return deck.remove(card)

    #Functions
    #And lots of if-statements
    def wardrobe():
        global inventory
        global currentArmor
        global playerDefense
        global ownedArmorIndex
        global EquipOrUnequip
        global whatToEquip
        print(armorInventory)
        whatToEquip = input("What would you like to equip?").title()
        if whatToEquip in armorInventory:
            ownedArmorIndex = armorInventory.index(whatToEquip)
            ownedArmorIndex = int(ownedArmorIndex)
            armorInventory.pop(ownedArmorIndex)
            currentArmor.append(whatToEquip)
            ownedArmorIndex += 1
            playerDefense += armor_stats[ownedArmorIndex]
            armor_stats.pop(ownedArmorIndex)
            print("Your defense is now "+str(playerDefense))
        else:
            print("That is not a valid choice. Go back to the menu you litt-")

    def enemyHit():
        global EnemyDamage
        global Enemylevel
        if Enemylevel == 1:
            EnemyDamage = random.randint(5, 15)
        elif Enemylevel == 2:
            EnemyDamage = random.randint(20, 25)
        elif Enemylevel == 3:
            EnemyDamage = random.randint(27,34)
        elif Enemylevel == 4:
            EnemyDamage = random.randint(35,40)
        elif Enemylevel == 5:
            EnemyDamage = random.randint(45,50)
        return EnemyDamage

    def enemy():
        global Enemylevel
        global Enemyhealth
        Enemylevel = random.randint(1,5)
        if Enemylevel == 1:
            Enemyhealth = random.randint(100,200)
        elif Enemylevel == 2:
            Enemyhealth = random.randint(200,300)
        elif Enemylevel == 3:
            Enemyhealth = random.randint(300,400)
        elif Enemylevel == 4:
            Enemyhealth = random.randint(400,500)
        elif Enemylevel == 5:
            Enemyhealth = random.randint(500,600)
        return Enemyhealth, Enemylevel
        
    def goldEarnedFunction():
        global level
        global goldEarned
        if Enemylevel == 1:
            goldEarned = random.randint(5,10)
        elif Enemylevel == 2:
            goldEarned = random.randint(20,30)
        elif Enemylevel == 3:
            goldEarned = random.randint(31,39)
        elif Enemylevel == 4:
            goldEarned = random.randint(40,49)
        elif Enemylevel == 5:
            goldEarned = random.randint(50,70)
        return goldEarned
            
    #Loop
    while playerHealth > 0 and Hunger > 0:
        for i in menu:
            print(i)
            #input
        option = input("What would you like to do?\n").lower()
        #Player options
        if option == "fight an enemy":
            playerHealth -+ 1000
            enemy()
            #Casting
            print("A wild "+currentEnemy+" appears! It is level "+str(Enemylevel)+" and has "+str(Enemyhealth)+" health.")
            playerChoice = ["Fight", "Run", "Call for backup"]
            for PC in playerChoice:
                print(PC)
            while True:
                encounterEnemy = input("What would you like to do?").lower()
                if encounterEnemy == "fight":
                    print("You try to hit the enemy.")
                    didYouHit = randint(1, 5)
                    if didYouHit == 3:
                        print("You missed!")
                        enemyHit()
                        playerHealth -= EnemyDamage
                        print("The enemy hits back and you now have "+str(playerHealth)+" health left.")
                    else:
                        critical = randint(1, 8)
                        if critical == 5:
                            print("Critial hit! It's super effective!")
                            Enemyhealth -= damageDealt * 2
                            totalDamage += damageDealt * 2
                            print("You dealt "+str(damageDealt*2)+" damage. The monster has "+str(Enemyhealth)+" health left.")
                            enemyHit()
                            playerHealth -= EnemyDamage
                            print("The enemy hits back and you now have "+str(playerHealth)+" health left.")
                        else:
                            print("You did a normal hit.")
                            Enemyhealth -= damageDealt
                            totalDamage += damageDealt
                            print("You dealt "+str(damageDealt)+" damage. The monster has "+str(Enemyhealth)+" health left.")
                            enemyHit()
                            playerHealth -= EnemyDamage
                            print("The enemy hits back and you now have "+str(playerHealth)+" health left.")
                        if Enemyhealth <= 0:
                            print("You killed the enemy!")
                            goldEarnedFunction()
                            gold += goldEarned
                            print("You got "+str(goldEarned)+" gold from that fight! You now have "+str(gold)+" gold.")
                            enemiesSlain += 1
                elif encounterEnemy == "run":
                    runSuccess = randint(1, 10)
                    if runSuccess == 7:
                        print("You failed to run because you were too fat. The monster catches you and you die.")
                        playerHealth -= 1000
                    else:
                        print("You ran away like a coward.")
                        break
                elif encounterEnemy == "call for backup":
                    print("You don't have any backup because you're loney. You die.")
                    playerHealth -= 1000
                    break
                else:
                    print("Please select an action.")

        elif option == "shop":
            shopCat = input("Welcome to the shop! What type of things do you want to buy? (Food, weapons, or armor?").lower()
            if shopCat == "food":
                for food in foods:
                    print(food)
                for foodPrice in foodPrices:
                    print(foodPrice)
                print("The prices for the food are in order. The first food price will be the price of the first food printed.")
                foodPurchase = input("What would you like to buy from the food section?").title()
                if foodPurchase in foods:
                    foodIndex = foods.index(foodPurchase)
                    if gold >= foodPrices[foodIndex]:
                        gold = gold - foodPrices[foodIndex]
                        foodInventory.append(foodPurchase)
                        foodPurchase = ""
                    else:
                        print("You don't have enough gold for this action!")
                        foodPurchase = ""
                else:
                    print("Please choose something from the list.")

            elif shopCat == "weapons":
                for weapon in weapons:
                    print(weapon)
                for weaponPrice in weaponPrices:
                    print(weaponPrice)
                print("The price for the weapons are in order. The first price printed is the price for the first weapon.")
                weaponPurchase = input("What would you like to buy from the weapons section?").title()
                if weaponPurchase in weapons:
                    weaponIndex = weapons.index(weaponPurchase)
                    if gold >= weaponPrices[weaponIndex]:
                        gold = gold - weaponPrices[weaponIndex]
                        weaponInventory.append(weaponPurchase)
                        weaponPurchase = ""
                    else:
                        print("You don't have enough gold for this action!")
                        weaponPurchase = ""
                else:
                    print("Please choose something from the list.")

            elif shopCat == "armor":
                for armor in armors:
                    print(armor)
                for armorPrice in armorPrices:
                    print(armorPrice)
                print("The price for the armor are in order. The first price printed is the price for the first armor.")
                armorPurchase = input("What would you like to buy from the armor section?").title()
                if armorPurchase in armors:
                    armorIndex = armors.index(armorPurchase)
                    if gold >= armorPrices[armorIndex]:
                        gold = gold - armorPrices[armorIndex]
                        armorInventory.append(armorPurchase)
                        armorPurchase = ""
                    else:
                        print("You don't have enough gold for this action!")
                        armorPurchase = ""
                else:
                    print("Please choose something from the list.")
            else:
                print("Please choose something from the list")

        elif option == "inventory":
            whattoDo = input("What are you going to equip? A weapon or armor?").lower()
            if whattoDo == "armor":
                wardrobe()
            elif whattoDo == "weapon":
                for laskdjf in weaponInventory:
                    print(laskdjf)
                whatToEquip = input("What would you like to equip?").lower()
                if whatToEquip in weaponInventory:
                    if whatToEquip == "novice nword":
                        currentWeapon = "Novice Sword"
                        damageDealt = 10
                    elif whatToEquip == "spear":
                        currentWeapon = "Spear"
                        damageDealt = 40
                    elif whatToEquip == "javlin":
                        currentWeapon = "Javlin"
                        damageDealt = 45
                    elif whatToEquip == "axe":
                        currentWeapon = "Axe"
                        damageDealt = 35
                    elif whatToEquip == "knife":
                        currentWeapon = "Knife"
                        damageDealt = 25
            else:
                print("Please choose something. Try again later.")

        elif option == "eat":
            usedHunger = 0
            amountHealed = 0
            print(foodInventory)
            healOrEat = input("Do you want to use your current hunger to heal or eat to replenish hunger? (Choose heal to heal or eat to eat.").lower()
            if healOrEat == "eat":
                whatToEat = input("What do you want to eat?").lower
                if whatToEat in foodInventory:
                    if whatToEat == "health Potion":
                        playerHealth += randint(25, 85)
                    elif whatToEat == "bread":
                        Hunger += randint(7, 15)
                    elif whatToEat == "cake":
                        Hunger += randint(50, 75)
                    elif whatToEat == "cookie":
                        Hunger += randint(3, 10)
                    elif whatToEat == "human flesh":
                        Hunger += 1
                    else:
                        print("Wtf happened")
                    foodInventory.pop(whatToEat)
            elif healOrEat == "heal":
                print("Your hunger is currently "+Hunger+". If you get to 0 hunger or below, you die.")
                usedHunger = 100 - playerHealth
                if Hunger > usedHunger:
                    Hunger -= usedHunger
                    amountHealed = usedHunger
                    playerHealth += amountHealed
                    print("You used "+usedHunger+" hunger to heal "+amountHealed+" amount of health. You have "+Hunger+" hunger points left.")
                    usedHunger = 0
                    amountHealed = 0
                else:
                    print("You don't have enough hunger to heal. You will die if you don't eat.")

        elif option == "gamble":
            gambleChoice = input("What would you like to play? Blackjack or Rock-Paper-Scissors? (You can use 1 or 2)").title()
            if gambleChoice == "Blackjack" or "1":
                play_again = ""
                bet_loop = True
                while play_again != "EXIT":
                    while bet_loop:
                        try:
                            print("You have "+str(gold)+" gold.")
                            bet = int(input("How much would you like to bet?"))
                            if gold >= bet:
                                gold -= bet
                                print("You have "+str(gold)+" gold left.")
                                break
                            else:
                                print("You don't enough to bet that much!")
                        except ValueError:
                            print("Please enter a valid bet.")
                            bet = 0
                    
                    #Player hand
                    new_deck = card_deck()
                    card1 = new_card(new_deck)
                    remove_card(new_deck,card1)
                    card2 = new_card(new_deck)
                    remove_card(new_deck,card2)
                    print ("\n\n\n\n" + card1 + " and " + card2)
                    value1 = card_value(card1)
                    value2 = card_value(card2)
                    total = value1 + value2
                    print("with a total of " + str(total) )

                    #Dealer hand
                    dealer_card1 = new_card(new_deck)
                    remove_card(new_deck,dealer_card1)
                    dealer_card2 = new_card(new_deck)
                    remove_card(new_deck,dealer_card2)
                    dealer_value1 = card_value(dealer_card1)
                    dealer_value2 = card_value(dealer_card1)
                    dealer_total = dealer_value1 + dealer_value2
                    print ("\nThe dealer looks at you and\n waits for your next move.")
                    print ("First a " + dealer_card1 + " and face down card.")

                    #Game
                    if total == 21:
                        print("You just got a Blackjack! You win!")
                        gold += bet + bet
                    else:
                        while total < 21: 
                            answer = input("Would you like to hit or stand?\n> ")
                            if answer.lower() == "hit":
                                more_card = new_card(new_deck)
                                remove_card(new_deck,more_card)
                                more_value = card_value(more_card)
                                total += int(more_value)
                                print (more_card + " for a new total of " + str(total))
                                if total > 21: 
                                    print("You LOSE!")
                                    play_again = input("Would you like to continue? EXIT to leave\n")
                                elif total == 21: 
                                    print("You WIN BIG WIN WOO WOO")
                                    gold += bet + bet
                                    print("You now have "+str(gold)+" gold.")
                                    play_again = input("Would you like to continue? EXIT to leave\n")
                                else:
                                    continue
                            elif answer.lower() == "stand":
                                print("The dealer nods and reveals his other card to be ")
                                print("a " + dealer_card2 + " for a total of " + str(dealer_total))
                                if dealer_total < 17:
                                    print("The Dealer hits again.")
                                    dealer_more = new_card(new_deck)
                                    more_dealer_value = card_value(dealer_more)
                                    print("The card is a " + str(dealer_more))
                                    dealer_total += int(more_dealer_value)
                                    if dealer_total > 21 and total <=21:
                                        print("Dealer Bust! You win!")
                                        gold += bet + bet
                                        print("You now have "+str(gold)+" gold.")
                                    elif dealer_total < 21 and dealer_total > total:
                                        print("Dealer has " + str(dealer_total) + " You lose!")
                                    else:
                                        continue
                                elif dealer_total == total:
                                    print("Equal Deals, no winner")
                                    gold += bet
                                elif dealer_total < total:
                                    print("You win!")
                                    gold += bet + bet
                                else:
                                    print("You Lose!")
                                play_again = input("\nWould you like to continue? EXIT to leave\n").upper()
                                break
                print("Thank you for Playing")
                
            #Rock paper scissors cause I'm out of ideas
            elif gambleChoice == "Rock Paper Scissors" or "2":
                while True:
                    while bet_loop:
                        try:
                            print("You have "+str(gold)+" gold.")
                            bet = int(input("How much would you like to bet?"))
                            if gold >= bet:
                                gold -= bet
                                print("You have "+str(gold)+" gold left.")
                                break
                            else:
                                print("You don't enough to bet that much!")
                        except TypeError:
                            print("Please enter a valid bet.")
                            bet = 0
                    user_action = input("Enter a choice (rock, paper, scissors): ")
                    possible_actions = ["rock", "paper", "scissors"]
                    computer_action = random.choice(possible_actions)
                    print(f"\nYou chose {user_action}, computer chose {computer_action}.\n")
                    if user_action == computer_action:
                        print(f"Both players selected {user_action}. It's a tie!")
                        gold += bet
                    elif user_action == "rock":
                        if computer_action == "scissors":
                            print("Rock smashes scissors! You win!")
                            gold += bet + bet
                        else:
                            print("Paper covers rock! You lose.")
                    elif user_action == "paper":
                        if computer_action == "rock":
                            print("Paper covers rock! You win!")
                            gold += bet + bet
                        else:
                            print("Scissors cuts paper! You lose.")
                    elif user_action == "scissors":
                        if computer_action == "paper":
                            print("Scissors cuts paper! You win!")
                            gold += bet + bet
                        else:
                            print("Rock smashes scissors! You lose.")

                    play_again = input("Play again? (y/n): ")
                    if play_again.lower() != "y":
                        break

        elif option == "help":
            print(
                """
                This game is an adventure + RPG type of game where the only goal is to slay as much monsters as humanly possible.
                You can fight an enemy, gamble, use gold to buy better equipment and much more. This game WILL be difficult 
                as only true pros can beat it. There is no end to this game (or is there???). You can flex your gold and flex
                the amount of enemies and total damage you've dealt to your friends if you're that kind of person. Otherwise, just
                have fun. 
                Note:
                Best thing to do in the beginning is to gamble your gold as the game is basically impossible with starter gear.
                """
            )

        elif option == "quit":
            print("Good-Bye!")
            print("In the total playtime, you have done "+str(totalDamage)+" total totalDamage")
            print("And also have slayed"+str(enemiesSlain)+"enemies.")
            break

        else:
            print("Please choose something from the list of options.")

    if playerHealth or Hunger < 0:
        print("You died lmao")
        print("In the total playtime, you have done "+str(totalDamage)+" total damage.")
        print("And also have slayed "+str(enemiesSlain)+" enemies.")
    
    else:
        pass

except Exception as ErrorLmao:
    print("An error occured. Please run the code again.")
    print("Error was "+ErrorLmao)
