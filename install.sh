#!/bin/bash

echo "Deseja instalar qual log horizontal (h) ou vertical (v) ou plus?"

read resposta

if [ $resposta == "h" ]
then
    echo -n "horizontalLogger.HorizontalLogger" > config.cfg
    mv verticalLogger.py ./external 2>/dev/null
    mv verticalLoggerProblem.py ./external 2>/dev/null
    mv ./external/horizontalLogger.py . 2>/dev/null
    echo "Log horizontal instalado com sucesso"
elif [ $resposta == "v" ]
then
    echo -n "verticalLogger.VerticalLogger" > config.cfg
    mv horizontalLogger.py ./external 2>/dev/null
    mv verticalLoggerProblem.py ./external 2>/dev/null
    mv ./external/verticalLogger.py . 2>/dev/null
    echo "Log vertical instalado com sucesso"
else
    echo -n "horizontalLoggerProblem.HorizontalLoggerProblem" > config.cfg
    mv horizonralLogger.py ./external 2>/dev/null
    mv verticalLogger.py ./external 2>/dev/null
    mv ./external/verticalLoggerProblem.py . 2>/dev/null
    echo "Log plus instalado com sucesso"
fi