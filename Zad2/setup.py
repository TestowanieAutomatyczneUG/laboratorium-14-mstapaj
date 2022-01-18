
from setuptools import setup, find_packages
from setuptools_behave import behave_test
import pathlib

here = pathlib.Path(__file__).parent.resolve()

long_description = (here / 'README.md').read_text(encoding='utf-8')
setup(
    name='Lab14Zad2',
    version='2.0.0',
    description='Zadanie 2 z laboratorium 14',
    long_description=long_description,
    long_description_content_type='text/markdown',
    author='Mateusz Stapaj',
    packages=find_packages(where='src'),
    python_requires='>=3.6, <4',
    install_requires=['behave'],
    tests_require=["behave>=1.2.4"],
    cmdclass={
        "behave_test": behave_test,
    },
    entry_points={
        'console_scripts': [
            'sample=sample:main',
            'hamming=src.Hamming:Hamming',
        ],
    },
)
