from behave import *

use_step_matcher("parse")


@given('genotype 1 is empty')
def step_impl(context):
    context.genotype1 = ""


@given('genotype 2 is empty')
def step_impl(context):
    context.genotype2 = ""


@given(u'genotype 1 is {genotype:d}')
def step_impl(context, genotype):
    context.genotype1 = genotype


@given(u'genotype 2 is {genotype:d}')
def step_impl(context, genotype):
    context.genotype2 = genotype


@given(u'genotype 1 is {genotype:f}')
def step_impl(context, genotype):
    context.genotype1 = genotype


@given(u'genotype 2 is {genotype:f}')
def step_impl(context, genotype):
    context.genotype2 = genotype


@given(u'genotype 1 is {genotype}')
def step_impl(context, genotype):
    context.genotype1 = genotype


@given(u'genotype 2 is {genotype}')
def step_impl(context, genotype):
    context.genotype2 = genotype


@when('calculate the hamming distance')
def step_impl(context):
    context.result = context.hamming.distance(context.genotype1, context.genotype2)


@then(u'the result is {result:d}')
def step_impl(context, result):
    assert context.result == result


@then(u'the result is {result:f}')
def step_impl(context, result):
    assert context.result == result


@then(u'the result is {result}')
def step_impl(context, result):
    assert context.result == result
