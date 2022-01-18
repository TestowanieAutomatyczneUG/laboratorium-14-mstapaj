from behave import *
from src.Book import Book

use_step_matcher("parse")


@given(u"title is {title}")
def step_impl(context, title):
    context.title = title


@given(u"ISBN is {isbn}")
def step_impl(context, isbn):
    context.isbn = isbn


@given("title is ")
def step_impl(context):
    context.title = ''


@given("ISBN is ")
def step_impl(context):
    context.isbn = ''


@given(u"author firstname is {firstname}")
def step_impl(context, firstname):
    context.firstname = firstname


@given(u"author lastname is {lastname}")
def step_impl(context, lastname):
    context.lastname = lastname


@given(u"author email is {email}")
def step_impl(context, email):
    context.email = email


@given("author firstname is ")
def step_impl(context):
    context.firstname = ""


@given("author lastname is ")
def step_impl(context, ):
    context.lastname = ""


@given("author email is ")
def step_impl(context):
    context.email = ""


@given("author is ")
def step_impl(context):
    context.author = ''


@given(u"author is {author}")
def step_impl(context, author):
    context.author = author


@when("creating an book object")
def step_impl(context):
    try:
        context.book = Book(context.title, context.author, context.isbn)
    except:
        context.error = True


@then("book is created")
def step_impl(context):
    assert context.book
