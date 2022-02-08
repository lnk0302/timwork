# -*- coding: utf-8 -*-
import json

import pandas as pd

if __name__ == '__main__':
    csv1 = pd.read_csv("./data/task_list.csv", sep =",", encoding= 'utf-8')
    csv1.to_json("./data/json/task_list.json", orient="records", force_ascii=False)

