# -*- coding: utf-8 -*-
# """
# Created on Mon Oct  5 07:12:45 2020

# @author: Carolina
# """


# """ Algoritma beda hingga Model Malthus"""
# ## INPUT
# lama_simulasi = int(input("Lama simulasi: "))
# populasi = int(input("Populasi awal: "))
# delta_t = int(input("delta t: "))

# a = 0

# ## ALGORITMA
# n = lama_simulasi//delta_t
# for i in range (0,n):
#     laju_pertumbuhan = 0.1
#     penambahan = laju_pertumbuhan*populasi
#     populasi = populasi + penambahan
#     t = i*delta_t
#     if populasi <= 200:
#         a = t

# print("Jumlah bakteri setelah 1 minggu(168jam):",populasi)
# print("Lama waktu yang dibutuhkan agar populasi berlipat dua yaitu",a,"jam")

import numpy as np
natural_log = np.log(19/5)
print(natural_log)