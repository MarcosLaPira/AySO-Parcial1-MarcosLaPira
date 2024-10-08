
# Creo el directorio principal
mkdir -p Estructura_Asimetrica/correo
mkdir -p Estructura_Asimetrica/clientes

# Creo carpetas cartas del 1 al 100 en correo y clientes
for i in {1..100}; do
    mkdir Estructura_Asimetrica/correo/cartas$i
    mkdir Estructura_Asimetrica/clientes/cartas$i
done


# Creo carpetas 'carteros' del 1 al 10 solo en correo
for j in {1..10}; do
    mkdir Estructura_Asimetrica/correo/carteros$j
done

