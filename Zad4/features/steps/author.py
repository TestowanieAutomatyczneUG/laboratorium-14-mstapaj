from behave import *
from src.Author import Author

use_step_matcher("parse")


@given(u"firstname is {firstname}")
def step_impl(context, firstname):
    context.firstname = firstname


@given(u"lastname is {lastname}")
def step_impl(context, lastname):
    context.lastname = lastname


@given(u"email is {email}")
def step_impl(context, email):
    context.email = email


@given("firstname is ")
def step_impl(context):
    context.firstname = ""


@given("lastname is ")
def step_impl(context, ):
    context.lastname = ""


@given("email is ")
def step_impl(context):
    context.email = ""


@when("creating an author object")
def step_impl(context):
    try:
        context.author = Author(context.firstname, context.lastname, context.email)
    except:
        context.error = True


@then("author is created")
def step_impl(context):
    assert context.author


@then("error")
def step_impl(context):
    assert context.error
