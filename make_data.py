import datetime

import pandas as pd

d = datetime.datetime.now()
d.year
d.second

pd.DataFrame({"A": [d.minute] * 3, "B": [d.second] * 3}).to_csv("data.csv", index=False)
