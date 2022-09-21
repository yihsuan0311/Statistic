import csv

file = open('data.csv','r',encoding='utf8')
r = csv.reader(file,delimiter=',')
print("reader csv file")
for row in r:
    print(row)# -*- coding: utf-8 -*-

