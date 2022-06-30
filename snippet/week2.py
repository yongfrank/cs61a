def cake():
    print('beets')
    def pie():
        print('sweets')
        return 'cake'
    return pie
#  chocolate = cake()
#  chocolate


def count_factors(n):
    i = 1
    count = 0
    while i <= n: 
        if n % i == 0:
            count += 1
        i += 1
    return count

def is_prime(n):
    return count_factors(n) == 2

def count_primes(numberToBeCounted):
    i = 1
    count = 0
    while i <= numberToBeCounted:
        if is_prime(i):
            count += 1
        i += 1
    return count

def count_cond(condition):
    def funcInside(num):
        i = 1
        count = 0
        while i < num:
            if condition(num, i):
                count += 1
            i += 1
        return count
    return lambda numbersInLambda: funcInside(numbersInLambda)

is_prime = lambda n, i: count_factors(i) == 2
count_primes = count_cond(is_prime)
count_primes(2)

count_factors = count_cond(lambda n, i: n % i == 0)
count_factors(2)  
