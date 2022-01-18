from behave import *
from src.BookDatabase import BookDatabase
from unittest.mock import *

use_step_matcher("parse")


@given("database")
def step_impl(context):
    context.database = BookDatabase()


@given(u"mock function {function}, return {result}")
def step_impl(context, function, result):
    context.database.function = Mock(getattr(BookDatabase, function))
    context.database.function.return_value = str(result)


@when(u'call function {function}')
def step_impl(context, function):
    context.result = context.database.function()


@then(u'function return {value}')
def step_impl(context, value):
    assert context.result == str(value)
