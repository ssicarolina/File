# -*- coding: utf-8 -*-
"""
Created on Mon Oct  5 04:09:43 2020

@author: Carolina
"""


""" Algoritma beda hingga Model Malthus"""
## INPUT
simulationLength = int(input("simulationLength: "))
population = int(input("population: "))
growthRate = int(input("growthRate: "))
delta_t = int(input("delta_t: "))

## ALGORITMA
numIterations = simulationLength//delta_t
for i in range (0,numIterations):
    growthRate = 0.1
    growth = growthRate*population
    population = population + growth*delta_t
    t = i*delta_t
    print("growthrate:",growthRate)
    print("t",t)
    print("growth",growth)
    print("population",population)

# """ Algoritma beda hingga Model Malthus"""
# ## INPUT
# simulationLength = int(input("simulationLength: "))
# population = int(input("population: "))
# growthRate = int(input("growthRate: "))
# delta_t = int(input("delta_t: "))

# ## ALGORITMA
# growthRatePerStep = growthRate * delta_t
# numIterations = simulationLength//delta_t
# for i in range (0,numIterations):
#     population = population + growthRatePerStep*population
#     t = i*delta_t
# print("t",t)
# print("population",population)