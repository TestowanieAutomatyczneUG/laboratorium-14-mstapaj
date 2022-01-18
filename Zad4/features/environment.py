from behave import *
from src.isbn import ISBN


def before_scenario(context, scenario):
    context.ISBN = ISBN()


def after_scenario(context, scenario):
    context.ISBN = None
