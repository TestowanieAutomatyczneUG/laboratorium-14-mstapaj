from behave import *
from src.Hamming import Hamming


def before_scenario(context, scenario):
    context.hamming = Hamming()


def after_scenario(context, scenario):
    context.hamming = None
