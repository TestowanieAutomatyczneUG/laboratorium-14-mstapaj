from behave import *

use_step_matcher("parse")


@given(u'number is {isbn_number}')
def step_impl(context, isbn_number):
    context.isbn_number = isbn_number


@when('we run ISBN calculator')
def step_impl(context):
    context.result = context.ISBN.check_isbn(context.isbn_number)


@then(u'the result is {result}')
def step_impl(context, result):
    assert str(context.result) == result
