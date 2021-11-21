import datetime

import neurokit2 as nk
import pandas as pd

d = datetime.datetime.now()

emb = nk.complexity_embedding(
    "clifford",
    sampling_rate=10000,
    a=d.day / 10,
    b=d.month / 10,
    c=2.0,  # If you're reading this after year 2100, hello from the past and please change this to 2.1 thanks :)
    d=(d.year - 2000) / 10,  # Last 2 digits of year
)

pd.DataFrame(emb, columns=["x", "y"]).to_csv("data.csv", index=False)
