#!/bin/bash

# Exécuter les tests
pytest flask_test.py
TEST_RESULT=$?

# Vérifier si les tests ont réussi
if [ $TEST_RESULT -eq 0 ]; then
    echo "Tests réussis, merge vers preprod"
    #git checkout preprod
    #git merge dev
    #git push origin preprod
else
    echo "Tests échoués, voir la sortie de pytest pour plus de détails"
fi