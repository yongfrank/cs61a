from random import random


def make_fair_dice(sides):
    """Return a die that returns 1 to SIDES with equal chance."""
    assert type(sides) == int and sides >= 1, 'Illegal value for sides'

    def dice():
        return random()
    return dice

m = None
message = "hi" + str(m)
print(message)

def make_area_function(shape_constant=1):
    def area_function(r):
        return r*r*shape_constant
    return area_function