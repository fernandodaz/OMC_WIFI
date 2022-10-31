#ifndef OMC_WIFI_READ_HPP
#define OMC_WIFI_READ_HPP

#include "OMC_WIFI_GlobalVariables.hpp"


//***************************************************************************************************************************************************************
//*************************************************    VARIABLES Y CONSTANTES PARA CONTROLAR EL RELAY     *******************************************************
//***************************************************************************************************************************************************************

const int relayPin = 21;      //Pin que se empleará para el relay

extern boolean pasoElTiempo;   // Indica si transcurrió el tiempo de recuperación

//***************************************************************************************************************************************************************
//***************************************************************************************************************************************************************
//***************************************************************************************************************************************************************



void readSetUp();

void relaySetUp ();

void pasoTiempoRecuperacion();

void pasoTiempoSecundario();

void pasoTiempoCorrFail();

void readCode (void *readParameter);


#endif
