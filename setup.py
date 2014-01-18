from setuptools import setup, find_packages

setup(
    name='django_ng_pdfviewer',
    zip_safe=False,
    version='0.1',
    platforms='any',
    packages=['django_ng_pdfviewer'],
    package_dir={'django_ng_pdfviewer':'.'},
    package_data={'django_ng_pdfviewer':['static/ng_pdfviewer/*.js',]},
)
