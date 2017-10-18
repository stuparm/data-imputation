# -*- coding: utf-8 -*-
"""
Created on Mon Jun  5 18:08:14 2017

@author: stuparm
"""
import numpy as np
import time

#b = np.array([ 1,   1,  4,   np.nan,   1,   1,   1,   5])
b = np.array([ 1,   1,  4, 2,   1,   1,2,   1,   5])
x = np.where(b == 1)
z = b[x]
print(z)



time.sleep(3)

#print(b)
#time.sleep(1)
#print('')
#
#d = b[:,0]
#m = d[0,:]
#print(m)
#print('')
#time.sleep(1)
#
#c = np.squeeze(b).shape
#print(c)
#print(b)
#print('')



x = np.nanmean(b, axis = 0)
time.sleep(1)
print('')
print(x)
time.sleep(1)


x = np.nanmean(b, axis = 1)
time.sleep(1)
print('')
print(x)
time.sleep(1)
