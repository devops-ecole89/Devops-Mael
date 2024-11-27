import myproject


def testadd():
    assert myproject.add(1, 2) == 3
    assert myproject.add(1, 0) == 1
    #assert myproject.add(-1, 1) == 0

