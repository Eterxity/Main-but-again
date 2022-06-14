import pygame, sys
from pygame.locals import *
from settings import *
from level import Level
from tiles import Tile
import random
import time
import os

#init
pygame.mixer.init()
pygame.init()
pygame.font.init()

#screendow
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Project C")
FPS = 60
clock = pygame.time.Clock()

#Text 
font = pygame.font.SysFont("arial",48)
def write(text, x, y, color="Yellow",):
    text = font.render(text, 1, pygame.Color(color))    
    text_rect = text.get_rect(center=(WIDTH//2, y))
    return text, text_rect
goldInt = 100
goldStr = "Gold: "+str(goldInt)
text, text_rect = write(goldStr, 0, 30)

#Colors
BLACK = (0, 0, 0)
RED = (255, 0, 0)

#Sprites
closeMain = pygame.image.load(
    os.path.join("Project C", "images", "x button.png"))
closeMain = pygame.transform.scale(closeMain, (45, 45))
closeMainRect = closeMain.get_rect(topleft=(1155, 0))

#Level
level = Level(level_map, screen)

#Drascreeng Sprites
def drawWindow():
    screen.blit(closeMain, (1155, 0))
    screen.blit(text, text_rect)

#Main 
def main():

    running = True

    while running:
        
        level.run()

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False
                break
                
            if event.type == pygame.MOUSEBUTTONDOWN:
                mousePos = pygame.mouse.get_pos()
                mouse_presses = pygame.mouse.get_pressed()

                if mouse_presses[0]:
                
                    if closeMainRect.collidepoint(mousePos):
                        pygame.quit()
                        running = False
                        break

        drawWindow()
        pygame.display.update()
        clock.tick(FPS)
        
        screen.fill(BLACK)
    pygame.quit()

if __name__ == "__main__":
    main()