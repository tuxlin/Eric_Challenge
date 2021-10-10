#!/bin/bash
### install the necessary environment for this zappa deployment

python3.8 --version &> /dev/null

if [ $? != 0 ]; then
	echo "Please install python3.8 on your local machine to proceed"
	exit 1
fi

echo "creating python3.8 virtual environment..."
python3.8 -m venv venv

echo "activating python3.8 virtual environment..."
source ./venv/bin/activate

echo "updating pip3.8..."
pip install -U pip > /dev/null

echo "installing necessary package requirements..."
pip install -r ./requirements.in > /dev/null

echo "done."
echo

echo "Please run the following commands and answer the prompts:"
echo
echo "source venv/bin/activate"
echo "zappa init"
echo
echo
echo "Once initialization is complete, run the next command:"
echo
echo "zappa deploy <stage-name>"
