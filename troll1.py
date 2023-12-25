import time
import random
from pynput.keyboard import Key, Controller

keyboard = Controller()

while True:
    t = random.randint(30, 300)
    time.sleep(t)

    keyboard.press(Key.caps_lock)
    keyboard.release(Key.caps_lock)
