"""
Small script to compute the division between two numbers.
"""
import numpy as np

def division(numerator, denominator):
    if denominator == np.isclose(denominator, 0.0):
        raise ZeroDivisionError("You cannot divide by denominator={}".format(denominator))
    return numerator / denominator
