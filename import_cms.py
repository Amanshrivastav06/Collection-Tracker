## - Testing reading file of excel correctly from the path

import pandas as pd

file_path = r"Daily CMS Reports\Demand_2026-09-21.xlsx"

df = pd.read_excel(file_path)

print("rows:", len(df))
print("columns:", len(df.columns))
print("\ncolumns names:")
print(df.columns.tolist())
# print(df.head)

# import os

# print(os.getcwd())
# print(os.listdir())

# print(os.listdir("Daily CMS Reports"))


