from pprint import pprint

import requests


def my_func():
    """
    This is a test docstring!
    """
    response = requests.get("https://www.google.com")
    return response


if __name__ == "__main__":
    pprint("Hallo World!")
    my_func()
