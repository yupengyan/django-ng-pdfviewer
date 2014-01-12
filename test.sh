echo "Testing"
pip install --use-wheel --find-links=dist/ $PACKAGE_NAME
echo "import ng_pdfviewer; print 'Hello World';" | python
