import numpy as np
from division import *

def test_float_division():
    assert np.isclose(division(2.0,0.5), 4.0)

def test_int_division():
    assert np.isclose(division(6,3), 2)

def test_neg_division():
    assert np.isclose(division(-3.0,1.5), -2)
