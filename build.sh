echo "Installing Build Requirements"
pip install -r requirements.txt
python setup.py bdist_wheel
python setup.py bdist_egg
