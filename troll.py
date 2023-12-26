import time
import random
import keyboard

while True:
    t = random.randint(30, 250)
    time.sleep(t)

    if bool(random.getrandbits(1)):
        keyboard.press_and_release("capslock")
    else:
        keyboard.press_and_release("windows+d")
