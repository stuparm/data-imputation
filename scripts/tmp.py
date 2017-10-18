# -*- coding: utf-8 -*-
"""
Created on Mon Oct 24 19:49:14 2016

@author: stuparm
"""

import csv

with open('C:\\Users\\stuparm\\Desktop\\master\\dataset_cleared.csv') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        print(row)