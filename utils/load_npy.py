import numpy as np
import pandas as pd
import os

flag = bool(True)
for filename in os.listdir(os.getcwd()):
    #print(filename)
    data = np.load(filename)
    if flag == True:
        matrix = data
        flag = False
        continue

    matrix = np.append(matrix, data, axis=0)

    #print(data)
np.savetxt("yolo_out.txt", matrix, fmt='%1.4f',newline='\r\n', delimiter=',')