;---------------------------- AlejandraNoriega -----------------------------
;***************** SISTEMA BURBUJA "ESTETICA VETERINARIA"*******************

INCLUDE PE41CLA.LIB
 .MODEL SMALL
 .STACK 64
 .DATA

;///////////// VARIABLES ////////////////////////////////////////////////
H DB '|',' $'
V DB '_',' $'
F DB '*',' $'
O DB '\',' $'
U DB '/',' $'

TIT   DB 'ESTETICA BURBUJA**  $'
TIT1  DB 'MENU PRINCIPAL $'
TIT2  DB 'AGENDAR UNA CITA $'
TIT3  DB 'VER AGENDA $'
TIT4  DB 'SERVICIOS $'
TIT5  DB 'INVENTARIO $'
TIT6  DB 'ADIOS... $'

V0M1 DB 'ESTETICA VETERINARIA BURBUJA $'
V0M2 DB 'PRESIONA ENTER PARA INICIAR EL SISTEMA $'

V0M3 DB 'BIENVENIDO DE NUEVO =^w^=  $'
V0M4 DB 'PRESIONA ENTER $'



V1M1  DB '1.- Agendar una cita  $'
V1M2  DB '2.- Ver agenda $'
V1M3  DB '3.- Servicios $'
V1M4  DB '4.- Inventario $'
V1M5  DB '5.- Salir $'
V1M6  DB 'OPCION SELECCIONADA:  $'

V2M1  DB 'OCTUBRE $'
        DIAS DB ' LU MA MI JU VI SA DO   $'
        OCT1 DB '              1  2  3   $'
        OCT2 DB '  4  5  6  7  8  9 10   $'
        OCT3 DB ' 11 12 13 14 15 16 17   $'
        OCT4 DB ' 18 19 20 21 22 23 24   $'
        OCT5 DB ' 25 26 27 28 29 30 31   $'
V2M2  DB 'NOVIEMBRE $'
        NOV1 DB '  1  2  3  4  5  6  7   $'
        NOV2 DB '  8  9 10 11 12 13 14   $'
        NOV3 DB ' 15 16 17 18 19 20 21   $'
        NOV4 DB ' 22 23 24 25 26 27 28   $'
        NOV5 DB ' 29 30                  $'
V2M4  DB 'FORMULARIO  $'
V2M5  DB 'Presione ENTER para cambiar de campo, para mes use 3 letras  $'
V2M6  DB 'Nombre:  $'
V2M7  DB 'Primer apellido:  $'
V2M8  DB 'Segundo apellido:  $'
V2M9  DB 'Fecha de la cita  $'
V2M10 DB 'D¡a:  $'
V2M11 DB 'Mes:  $'
V2M12 DB 'Hora: $'
V2M15 DB 'Servicio:  $'
V2M17 DB 'Mascota:  $'
;V2M16 DB 'Detalles del servicio:  $'
V2M13 DB 'PRESIONE 1 para GUARDAR y volver al MENU PRINCIPAL  $'
;V2M14 DB 'PRESIONE 2 para agendar una NUEVA CITA $'
V2M18 DB 'COMpleto. 500 $'
V2M21 DB 'PLUS+ $'
V2M19 DB 'DIEntes.. 200  $'
V2M20 DB 'PERfume.. 250  $'
V2M22 DB 'CLAVES $'
V2M23 DB 'FORMATO 24HRS $'

V3M1  DB 'FECHA $'
V3M2  DB 'NOMBRE $'
V3R1  DB 'ALEJANDRO ORTIZ $'
V3M3  DB 'SERVICIO $'
V3R2  DB 'COM + PER $'
V3M4  DB 'DIA $'
V3R3  DB '13 $'
V3M5  DB 'MES $'
V3M9  DB 'HORA $'
V3R4  DB '12:00',' $'
V3M6  DB 'NOMBRE  $'
V3M7  DB 'APELLIDOS $'
V3M8  DB 'MASCOTA $'
V3R5 DB 'PERRO HUSKY $'
V3R6 DB 'NOV',' $'

V4M1  DB '1.- BA¥O Y CORTE DE PELO  $'
V4M2  DB '2.- MASAJE RELAJANTE $'
V4M3  DB '3.- SECADO $'
V4M4  DB '4.- LIMPIEZA DEL CANAL AUDITIVO $'
V4M5  DB '5.- LIMPIEZA DE GLANDULAS ANALES $'
V4M6  DB '6.- RECORTE DE U¥AS $'
V4M9  DB 'PRECIO POR TODO ............................   500.00 $'
V4M10 DB '*** EXTRAS ***  $'
V4M7  DB '7.- LAVADO DE DIENTES ......................   200.00 $'
V4M8  DB '8.- ADORNO Y PERFUME  ......................   250.00 $'

V5M1 DB 'PRODUCTO  $'
V5M2 DB 'CANTIDAD  $'
V5M3 DB 'SHAMPO $'
V5M4 DB 'PERFUME FLORAL $'
V5M5 DB 'PERFUME DULCE $'
V5M6 DB 'TOALLAS $'
V5M7 DB 'CROQUETA PERRO $'
V5M8 DB 'CROQUETA GATO  $'
V5M9 DB 'CEPILLOS DIENTES $'
V5M10 DB 'PREMIOS GATO $'
V5M11 DB 'PREMIOS PERRO $'
V5M12 DB '50 $'
V5M13 DB '100 $'
V5M14 DB '200 $'
V5M15 DB '30 $'

V6M1 DB 'CERRANDO SISTEMA . . .  $'

G1 DB '     /\_____/\  $'
G2 DB '    /  o   o  \   $'
G3 DB '   ( ==  ^  == )  $'
G4 DB '    ).........(   $'
G5 DB '   (           )   $'
G6 DB '  (  (  )  (  ) )  $'
G7 DB ' (___(__)__(__)__) $'
G8 DB '___________________ $'



D DB 'PARA IR A CAPTURA DE CALIFICACION PRESIONA "ENTER"  $'
r db 'PRESIONA "ENTER" PARA VOLVER AL MENU PRINCIPAL $'

COM DB 'S'
CAD DB 2 DUP (' '),'$'

CAD1 DB 30 DUP ('  '),'$'
CAD2 DB 2 DUP ('  '),'$'
CAD3 DB 3 DUP ('  '),'$'
CAD4 DB 5 DUP (' '),'$'
CAD5 DB 10 DUP (' '),'$'
CAD6 DB 10 DUP (' '),'$'


.CODE
MAIN:
  DIR
  CARGA:
   LIMPIAR 00,00,184FH
   MENSAJE 1,1,V0M1
   MENSAJE 2,2,V0M2
   ESPERA
   JE COMIENZO

      COMIENZO:
      LIMPIAR 00,00,184FH
      CUADRO 8,4,72,21,9FH ;AZUL
      CUADRO 10,5,70,20,5FH  ;ROSA
      MENSAJE 10,20,V0M3
      MENSAJE 18,20,V0M4
      ESPERA
      JE MENU
   

        MENU:

      LIMPIAR 00,00,184FH
      CUADRO 8,4,72,21,9FH ;AZUL
      CUADRO 10,5,70,20,5FH  ;ROSA

        MENSAJE 6,28,F
        MENSAJE 6,29,F
        MENSAJE 6,46,F
        MENSAJE 6,47,F
        MENSAJE 6,30,TIT
        MENSAJE 8,31,TIT1
        MENSAJE 10,15,V1M1
        MENSAJE 11,15,V1M2
        MENSAJE 12,15,V1M3
        MENSAJE 13,15,V1M4
        MENSAJE 14,15,V1M5
        MENSAJE 15,15,V1M6

        MENSAJE 10,40,G1  ;GATO
        MENSAJE 11,40,G2
        MENSAJE 12,40,G3
        MENSAJE 13,40,G4
        MENSAJE 14,40,G5
        MENSAJE 15,40,G6
        MENSAJE 16,40,G7
        MENSAJE 17,40,G8

        CURSOR 16,15
        MOV AH,0DH
        INT 21H

        MOV AH,01H
        INT 21H

        CMP AL,31H
        JE OP1

        CMP AL,32H
        JE OP2

        CMP AL,33H
        JE OP3

        CMP AL,34H
        JE OP4

        CMP AL,35H
        JE SALIR

        OP1:

        CALL VENTANA2

        OP2:
          
        CALL VENTANA3
        
        OP3:

        CALL VENTANA4

        OP4:
        CALL VENTANA5

        SALIR:
      LIMPIAR 00,00,184FH
      CUADRO 8,4,71,21,5FH 
      CUADRO 10,5,70,20,9FH

        MENSAJE 8,25,TIT6
        MENSAJE 10,20,G1
        MENSAJE 11,20,G2
        MENSAJE 12,20,G3
        MENSAJE 13,20,G4
        MENSAJE 14,20,G5
        MENSAJE 15,20,G6
        MENSAJE 16,20,G7
        MENSAJE 17,20,G8
        MENSAJE 19,20,V6M1

    ESPERA
        LIMPIAR 00,00,184FH
   
   ; CURSOR 2,1
        MOV AX,4C00H
        INT 21H

      
 VENTANA2 PROC NEAR  ;AGENDAR CITA
      INTERFAZ:
      LIMPIAR 00,00,184FH
      CUADRO 8,4,72,21,9FH ;AZUL
      CUADRO 10,5,70,20,5FH  ;ROSA
        

        MENSAJE 6,30,TIT2
        MENSAJE 8,17,V2M1 ;MES OCTUBRE
        MENSAJE 9,10,DIAS  ;DIAS SEMANA
        MENSAJE 10,10,OCT1 ;numeros octubre 
        MENSAJE 11,10,OCT2
        MENSAJE 12,10,OCT3
        MENSAJE 13,10,OCT4
        MENSAJE 14,10,OCT5


        MENSAJE 8,36,V2M2  ;MES NOVIEMBRE
        MENSAJE 9,32,DIAS  ;DIAS SEMANA
        MENSAJE 10,32,NOV1 ;numeros noviembre
        MENSAJE 11,32,NOV2
        MENSAJE 12,32,NOV3
        MENSAJE 13,32,NOV4
        MENSAJE 14,32,NOV5

        MENSAJE 8,56,V2M22
        MENSAJE 9,56,V2M18 ;PRECIOS
        MENSAJE 10,56,V2M21
        MENSAJE 11,56,V2M19
        MENSAJE 12,56,V2M20
        MENSAJE 18,56,V2M23

        MENSAJE 15,25,V2M4  ;FORMULARIO
        MENSAJE 16,11,V2M5  ;DATOS CLIENTE
        MENSAJE 17,12,V2M6  ;NOMBRE
      ;  MENSAJE 18,12,V2M9  ;FECHA
        MENSAJE 18,12,V2M10  ;DIA
        MENSAJE 18,22,V2M11  ;MES
        MENSAJE 18,35,V2M12  ;HORA
        MENSAJE 19,12,V2M15  ;SERVICIO
        MENSAJE 19,31,V2M17  ;MASCOTA
        

        CURSOR 17,19
        TECLADO CAD1 ;NOM
        CURSOR 18,16
        TECLADO CAD2 ;DIA
        CURSOR 18,26
        TECLADO CAD3  ;MES
        CURSOR 18,40
        TECLADO CAD4  ;HORA
        CURSOR 19,22
        TECLADO CAD5  ;SERV
        CURSOR 19,40
        TECLADO CAD6 ;MASC


        MENSAJE 20,12,r
        ESPERA
        CALL MENU
      
VENTANA2 ENDP
 VENTANA3 PROC NEAR
    ;  INTERFAZ2:
      LIMPIAR 00,00,184FH
      CUADRO 8,4,72,21,9FH ;AZUL
      CUADRO 10,5,70,20,5FH  ;ROSA
        

        MENSAJE 6,30,TIT3
        MENSAJE 8,15,V3M1 ;FECHA
        MENSAJE 8,27,V3M2  ;CLIENTE
        MENSAJE 8,48,V3M3  ;SERVICIO
        MENSAJE 8,59,V3M8 ;ANIMAL

        MENSAJE 9,11,V3M4   ;DIA
          MENSAJE 11,11,V3R3 ;PREDETERMINADO
          MENSAJE 12,11,CAD2 ;INTRODUCIDO EN TECLADO 
        MENSAJE 9,16,V3M5    ;MES
        MENSAJE 9,14,H
         MENSAJE 10,14,H
          MENSAJE 11,14,H
           MENSAJE 12,14,H
            MENSAJE 13,14,H
             MENSAJE 14,14,H
        MENSAJE 9,19,H
        MENSAJE 10,19,H
        MENSAJE 11,19,H
        MENSAJE 12,19,H
        MENSAJE 13,19,H
        MENSAJE 14,19,H
        MENSAJE 9,26,H
        MENSAJE 10,26,H
        MENSAJE 11,26,H
        MENSAJE 12,26,H
        MENSAJE 13,26,H
        MENSAJE 14,26,H
          MENSAJE 11,15,V3R6
          MENSAJE 12,15,CAD3
        MENSAJE 9,20,V3M9       ;HORA
          MENSAJE 11,20,V3R4
          MENSAJE 12,20,CAD4
        MENSAJE 9,27,V   ;NOMBRE DEL CLIENTE
          MENSAJE 11,27,V3R1
          MENSAJE 12,27,CAD1
          MENSAJE 9,58,H
          MENSAJE 10,58,H
          MENSAJE 11,58,H
          MENSAJE 12,58,H
          MENSAJE 13,58,H
          MENSAJE 14,58,H
          MENSAJE 11,59,V3R5  ;ANIMAL
          MENSAJE 12,59,CAD6
          MENSAJE 11,48,V3R2  ;SERVICIO
          MENSAJE 9,46,H
          MENSAJE 10,46,H
          MENSAJE 11,46,H
          MENSAJE 12,46,H
          MENSAJE 13,46,H
          MENSAJE 14,46,H
          MENSAJE 12,48,CAD5
        MENSAJE 20,12,r
        ESPERA
        CALL MENU
VENTANA3 ENDP

VENTANA4 PROC NEAR
    ;  INTERFAZ3:
      LIMPIAR 00,00,184FH
      CUADRO 8,4,72,21,9FH ;AZUL
      CUADRO 10,5,70,20,5FH  ;ROSA

       MENSAJE 6,30,TIT4
       MENSAJE 8,15,V4M1
       MENSAJE 9,15,V4M2
       MENSAJE 10,15,V4M3
       MENSAJE 11,15,V4M4
       MENSAJE 12,15,V4M5
       MENSAJE 13,15,V4M6
       MENSAJE 14,15,V4M9

       MENSAJE 16,15,V4M10
       MENSAJE 17,15,V4M7
       MENSAJE 18,15,V4M8

       MENSAJE 20,12,r
        ESPERA
        CALL MENU
VENTANA4 ENDP

VENTANA5 PROC NEAR
      INTERFAZ3:
      LIMPIAR 00,00,184FH
      CUADRO 8,4,72,21,9FH ;AZUL
      CUADRO 10,5,70,20,5FH  ;ROSA

         MENSAJE 6,30,TIT5
         MENSAJE 8,15,V5M1
         MENSAJE 8,35,V5M2

         MENSAJE 9,12,V5M3
         MENSAJE 10,12,V5M4
         MENSAJE 11,12,V5M5
         MENSAJE 12,12,V5M6
         MENSAJE 13,12,V5M7
         MENSAJE 14,12,V5M8
         MENSAJE 15,12,V5M9
         MENSAJE 16,12,V5M10
         MENSAJE 17,12,V5M11

         MENSAJE 9,34,V5M14
         MENSAJE 10,34,V5M15
         MENSAJE 11,34,V5M12
         MENSAJE 12,34,V5M13
         MENSAJE 13,34,V5M14
         MENSAJE 14,34,V5M13
         MENSAJE 15,34,V5M13
         MENSAJE 16,34,V5M14
         MENSAJE 17,34,V5M12
        MENSAJE 20,12,r
        ESPERA
        CALL MENU

VENTANA5 ENDP

        END MAIN
