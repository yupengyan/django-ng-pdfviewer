set -e
export PIP_DOWNLOAD_CACHE=~/.pip_cache/
export PIP_FIND_LINKS="$PIP_DOWNLOAD_CACHE"
rm -rf /home/rof/.virtualenv/lib/python2.7/site-packages/django_ng_*
pip install --upgrade $PACKAGE_NAME
echo "import $PACKAGE_NAME; print 'Hello World';" | python
