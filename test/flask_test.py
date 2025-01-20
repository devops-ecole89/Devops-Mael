import myproject
import pytest

def testadd():
    assert myproject.add(1, 2) == 3
    assert myproject.add(1, 0) == 1


