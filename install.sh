#!/bin/bash

echo "Deseja instalar qual log horizontal (h) ou vertical (v) ou plus?"

read resposta

if [ $resposta == "h" ]
then
    echo -n "external.horizontalLogger.HorizontalLogger" > config.cfg
    echo "Log horizontal instalado com sucesso"
elif [ $resposta == "v" ]
then
    echo -n "external.verticalLogger.VerticalLogger" > config.cfg
    echo "Log vertical instalado com sucesso"
else
    echo -n "extternal.horizontalLoggerProblem.HorizontalLoggerProblem" > config.cfg
    echo "Log plus instalado com sucesso"
fi