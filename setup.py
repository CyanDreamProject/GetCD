from setuptools import setup, find_packages

version = "1.0"

setup(
    name="GetCD",
    version=version,
    packages=find_packages(),
    install_requires=['tornado==2.4', 'sqlalchemy', 'mako', 'python-android'],
    tests_require=['nose'],
    entry_points={
        'console_scripts': [
            'getcd.server=getcd.app:run_server',
            'getcd.addfile=getcd.utils.addfile:main',
            'getcd.fetchbuilds=getcd.utils.fetchbuilds:main',
        ],
    },
    include_package_data=True,
)
