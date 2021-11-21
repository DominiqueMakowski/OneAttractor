import neurokit2 as nk

emb = nk.complexity_embedding(
    "clifford",
    sampling_rate=1000,
    a=d.second,
    b=d.minute,
    c=1.9,
    d=-1.1,
)

emb.to_csv("data.csv", index=False)
