"""
Задача 1. Случайная непрерывная величина A имеет равномерное распределение на промежутке (200, 800].
Найдите ее среднее значение и дисперсию.
"""

a = 200
b = 800
sred = (a + b) / 2  # среднее значение
print(sred)  # 500
d = pow((b - a), 2) / 12  # дисперсия
print(d)  # 30000