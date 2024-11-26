#!/bin/bash

# Exécuter les tests
pytest test.py > test_output.log 2>&1
TEST_RESULT=$?

# Vérifier si les tests ont réussi
if [ $TEST_RESULT -eq 0 ]; then
    echo "Tests réussis, merge vers preprod"
    #git checkout preprod
    #git merge dev
    #git push origin preprod
else
    echo "Tests échoués, voir test_output.log pour plus de détails"
    cp test_output.log /path/to/local/logs/
fi