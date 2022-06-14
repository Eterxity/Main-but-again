import pygame

red = (255, 0, 0)
light_grey = (211, 211, 211)

class Tile(pygame.sprite.Sprite):
    def __init__(self, pos, size):
        super().__init__()
        self.image = pygame.Surface((size,size))
        self.image.fill(light_grey)
        self.rect = self.image.get_rect(topleft=pos)
    
    def update(self, x_shift):
        self.rect.x += x_shift