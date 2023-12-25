import time
import random
import keyboard

while True:
    t = random.randint(30, 300)
    time.sleep(t)
    keyboard.press_and_release("windows+d")
