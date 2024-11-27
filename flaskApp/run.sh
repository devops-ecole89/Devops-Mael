#!/bin/bash

# Exécuter les tests
pytest flask_test.py
TEST_RESULT=$?
echo $TEST_RESULT

# Vérifier si les tests ont réussi
if [ $TEST_RESULT -eq 0 ]; then
    #echo "Tests réussis, merge vers preprod"
    echo $TEST_RESULT
    #git checkout preprod
    #git merge dev
    #git push origin preprod
else
    #echo "Tests échoués, voir la sortie de pytest pour plus de détails"
    echo $TEST_RESULT

fi