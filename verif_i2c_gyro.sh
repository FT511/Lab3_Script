#!/bin/bash

if ! command -v i2cget &> /dev/null
then
    echo "Le paquet i2c-tools n'est pas installé. Veuillez l'installer d'abord."
    exit 1
fi

I2C_BUS=2
I2C_ADDRESS=0x68
REG_ADDR=0x75

ID=$(i2cget -f -y $I2C_BUS $I2C_ADDRESS $REG_ADDR)

if [ $? -eq 0 ]
then
    echo -e "L'ID du chip I2C à l'adresse $I2C_ADDRESS est : $ID.\nLe capteur gyroscopique est bien présent"
else
    echo "Erreur lors de la lecture de l'ID du chip I2C à l'adresse $I2C_ADDRESS."
fi