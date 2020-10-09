#!/bin/bash

echo "Deseja instalar qual log horizontal (h) ou vertical (v) ou plus (p)?"

read resposta

if [ $resposta == "h" ]
then
    echo -n "horizontalLogger.HorizontalLogger" > config.cfg
    echo "Log horizontal instalado com sucesso"
elif [ $resposta == "v" ]
then
    echo -n "verticalLogger.VerticalLogger" > config.cfg
    echo "Log vertical instalado com sucesso"
elif [ $resposta == "p" ]
then
    echo -n "verticalLoggerProblem.VerticalLoggerProblem" > config.cfg
    echo "Log plus instalado com sucesso"
fi