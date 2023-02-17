def dirsize(folder):
    tot = 0
    for root, dirs, files in os.walk(folder):
        for e in files:
            fullp = os.path.join(root, e)
            tot += os.path.getsize(fullp)
        tot += os.path.getsize(root) 
    return tot
