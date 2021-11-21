import pandas as pd

pd.DataFrame({"A": [1, 2, 3], "B": [4, 5, 6]}).to_csv("data.csv", index=False)
