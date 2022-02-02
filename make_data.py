import datetime

import neurokit2 as nk
import numpy as np
import pandas as pd

d = datetime.datetime.now()

emb = nk.complexity_embedding(
    "clifford",
    sampling_rate=1000000,
    a=1 + np.log(d.day),
    b=1 + np.log(d.month),
    c=2.0,  # If you're reading this after year 2100, hello from the past and please change this to 2.1 thanks :)
    d=1 + np.log(d.year - 2000),  # Last 2 digits of year
)

pd.DataFrame(emb, columns=["x", "y"]).to_csv("data.csv", index=False)
