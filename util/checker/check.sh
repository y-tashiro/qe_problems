#!/bin/sh

HERE=`which "$0"`
HERE=`dirname "${HERE}"`
if [ "x${PYTHONPATH}" = "x" ]; then
	PYTHONPATH=${HERE} python ${HERE}/check.py "$@"
	RET=$?
else
	PYTHONPATH=${PYTHONPATH}:${HERE} python ${HERE}/check.py "$@"
	RET=$?
fi

exit ${RET}
# EOF

