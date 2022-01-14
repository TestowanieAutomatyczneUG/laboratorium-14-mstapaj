from behave import *
from src.FizzBuzz import FizzBuzz
from assertpy import *

use_step_matcher("parse")


@given('FizzBuzz game')
def step_impl(context):
    context.FizzBuzz = FizzBuzz()


@when(u'I input {number:d}')
def step_impl(context, number):
    context.result = context.FizzBuzz.game(number)


@when(u'I input {number:f}')
def step_impl(context, number):
    context.result = context.FizzBuzz.game(number)


@when(u'I input {input_data}')
def step_impl(context, input_data):
    context.result = context.FizzBuzz.game(input_data)


@then('I get Fizz')
def step_impl(context):
    assert_that(context.result).is_equal_to('Fizz')


@then('I get FizzBuzz')
def step_impl(context):
    assert_that(context.result).is_equal_to('FizzBuzz')


@then('I get Buzz')
def step_impl(context):
    assert_that(context.result).is_equal_to('Buzz')


@then('I get "Wrong type of given number"')
def step_impl(context):
    assert_that(context.result).is_equal_to("Wrong type of given number")


@then('I get {result:f}')
def step_impl(context, result):
    assert_that(context.result).is_equal_to(result)


@then('I get {result:d}')
def step_impl(context, result):
    assert_that(context.result).is_equal_to(result)


@then('I get {result}')
def step_impl(context, result):
    assert_that(context.result).is_equal_to(result)
