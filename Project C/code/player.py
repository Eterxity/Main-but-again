import pygame

class Player(pygame.sprite.Sprite):
    def __init__(self, pos):
        super().__init__()
        self.image = pygame.Surface((50,50))
        self.image.fill((255, 0, 0))
        self.rect = self.image.get_rect(topleft = pos)

        #Movement
        self.direction = pygame.math.Vector2(0, 0)
        self.speed = 6
        self.gravityVelocity = 0.8
        self.jump_height = -16
    
    def get_input(self):
        keys = pygame.key.get_pressed()

        if keys[pygame.K_a]:
            self.direction.x = -1
        elif keys[pygame.K_d]:
            self.direction.x = 1
        else:
            self.direction.x = 0 

        if keys[pygame.K_w]:
            self.jump()

    def apply_gravity(self):
        self.direction.y += self.gravityVelocity
        self.rect.y += self.direction.y
    
    def jump(self):
        self.direction.y = self.jump_height
        
    def update(self):
        self.get_input()
