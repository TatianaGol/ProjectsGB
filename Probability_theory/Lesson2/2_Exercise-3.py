"""
Монету подбросили 144 раза. Какова вероятность, что орел выпадет ровно 70 раз?
"""

import numpy as np


# формула для вычисления сочетаний
def combinations(n, k):
    return np.math.factorial(n) // (np.math.factorial(k) * np.math.factorial(n - k))


# Используем биномиальное распределение
n1 = 144
k1 = 70
p = 0.5
q = 1 - p
pp = combinations(n1, k1) * pow(p, k1) * pow(q, n1-k1)  # вероятность, что орел выпадет ровно 70 раз
print(round(pp, 3))
