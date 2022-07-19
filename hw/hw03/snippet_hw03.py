def get_smaller_coin(coin):
    """Returns the next smaller coin in order.
    >>> get_smaller_coin(25)
    10
    >>> get_smaller_coin(10)
    5
    >>> get_smaller_coin(5)
    1
    >>> get_smaller_coin(2) # Other values return None
    """
    if coin == 25:
        return 10
    elif coin == 10:
        return 5
    elif coin == 5:
        return 1
        
def nearest_coin(partition):
    if partition == 1:
        return 1
    elif get_smaller_coin(partition) == None:
        return nearest_coin(partition - 1)
    else:
        return partition

print(nearest_coin(13))