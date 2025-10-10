import requests
from pprint import pprint
import tvdbapig

def second_func():
    the_var: int = 3.2
    tvdb("huh")
    return type(the_var)

# Some, super long, comment to test if the line length is detected or not, since I think the default is eighty-eight characters
def my_func(huh=0):
    """
    [TODO:description]

    :param huh: [TODO:description], defaults to 0
    :type huh: [TODO:type], optional
    """
    # huh
    url = "https://www.google.com"
    response = requests.get(url).status_code
    return response


if __name__ == "__main__":
    print(my_func())
    print(second_func())
    print(tvdbapig.some_func)


