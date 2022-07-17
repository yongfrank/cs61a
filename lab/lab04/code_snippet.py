class Car:
    num_wheels = 4

    def __init__(self, color) -> None:
        self.wheels = Car.num_wheels
        self.color = color
    
    def drive(self):
        if self.wheels <= Car.num_wheels:
            return self.color + " car cannot drive"
        return self.color + " car goes vroom!"

    def pop_tire(self):
        if self.wheels > 0:
            self.wheels -= 1
            