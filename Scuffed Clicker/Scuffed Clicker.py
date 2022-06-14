from http import cookies
from tkinter import CENTER
from turtle import update, width
import pygame
import random
from random import randint
import os
import time

#Misc
autoClickActive = False

#init
pygame.mixer.init()
pygame.init()
pygame.font.init()

#Window size
WIDTH = 720
HEIGHT = 720

#Window
WIN = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Scuffed Clicker")
FPS = 120

#Colors
WHITE = (255,255,255)
BLACK = (0,0,0)

#Write Cookies
font = pygame.font.SysFont("arial",48)
def write(text, x, y, color="White",):
    text = font.render(text, 1, pygame.Color(color))    
    text_rect = text.get_rect(center=(WIDTH//2, y))
    return text, text_rect

cookiesStr = "0"
cookiesInt = 0
text, text_rect = write(cookiesStr, 10, 30)
cookiesPerClick = 1

#Sprites
cookie = pygame.image.load(
    os.path.join("Scuffed Clicker", "cookie.png"))
cookie = pygame.transform.scale(cookie, (120,120))
cookieRect = cookie.get_rect(topleft=(300,300))

upgrade = pygame.image.load(
    os.path.join("Scuffed Clicker", "upgrade.jpg"))
upgrade = pygame.transform.scale(upgrade, (60,60))
upgradeRect = upgrade.get_rect(topleft=(25,25))

autoClick = pygame.image.load(
    os.path.join("Scuffed CLicker", "cursor.png"))
autoClick = pygame.transform.scale(autoClick, (60,60))
autoClickRec = autoClick.get_rect(topleft=(15,100))

#Drawing things on the screen
def drawWindow():
    global test
    WIN.fill(BLACK)
    WIN.blit(cookie, (300,300))
    WIN.blit(upgrade, (25,25))
    WIN.blit(autoClick, (15,100))
    WIN.blit(text, text_rect)
    pygame.display.update()

#Loop
run = True

#Main
def main():
    global cookiesInt
    global cookiesStr
    global text
    global text_rect
    global autoClickActive
    
    clock = pygame.time.Clock()

    cookiesPerClick = 1
    upgradePrice = 10

    run = True

    while run:

        if autoClickActive == True:
            cookiesInt += 1

        cookiesStr = str(cookiesInt)

        text, text_rect = write(cookiesStr, 10, 30)

        clock.tick(FPS)
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                run = False
                break

            elif event.type == pygame.MOUSEBUTTONDOWN:
                mousePos = pygame.mouse.get_pos()
                mouse_presses = pygame.mouse.get_pressed()

                if mouse_presses[0]:

                    if cookieRect.collidepoint(mousePos):
                        print("clicked")
                        cookiesInt += cookiesPerClick
                    
                    if upgradeRect.collidepoint(mousePos):
                        if cookiesInt >= 10:
                            cookiesInt -= 10
                            cookiesPerClick += 1
                            upgradePrice = upgradePrice * 1.3
                    
                    if autoClickRec.collidepoint(mousePos):
                        if cookiesInt >= 100:
                            if autoClickActive == False:
                                cookiesInt -= 100
                                autoClickActive = True
                                
        drawWindow()
    pygame.quit()

#if __name__ == "__main__"
if __name__ == "__main__":
    main()