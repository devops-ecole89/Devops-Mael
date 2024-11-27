import myproject


def testadd():
    assert myproject.add(1, 2) == 3
    assert myproject.add(0, 0) == 0
    assert myproject.add(-1, 1) == 0

