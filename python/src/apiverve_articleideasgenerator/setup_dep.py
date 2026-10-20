from setuptools import setup, find_packages

setup(
    name='apiverve_articleideasgenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Article Ideas Generator creates article ideas and headline angles for any supplied topic. Pass a keyword up to 50 characters to receive a list of suggested titles and the total idea count.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/articleideas?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
