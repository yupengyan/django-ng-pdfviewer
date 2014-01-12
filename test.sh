echo "Testing"
pip install --use-wheel --find-links=dist/ django-ng-pdfviewer
echo "import ng_pdfviewer; print 'Hello World';" | python
