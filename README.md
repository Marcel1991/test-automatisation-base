### Para ejecutar y probar los escenarios Karate mprios
# Se crearon 4 ramas (HU)
TSM-001 Obtener personaje
TSM-002 Crear personaje
TSM-003 Actualizar personaje
TSM-004 Delete personaje

#MERGE
En la rama main (se realizo el merge todas las ramas)

# Para realizar cada escenario de prueba colocar el archivo featture de prueba
En la linea 8 archivo KarateBasicTest.java

Karate testBasic() {
        return Karate.run("classpath:karate-test.feature");

Para cada rama (HU) --> caso: 
  TSM-001 --> karate-test
  TSM-002 --> karate-test002
  TSM-003 --> karate-test003
  TSM-004 --> karate-test003

# Proyecto base de pruebas automatizadas con Karate, Java y Gradle

Este proyecto es una base para implementar pruebas automatizadas de la colección de peticiones entregadas (por ejemplo, una colección Postman). Todas las pruebas deben ser escritas en el archivo `src/test/resources/karate-test.feature` siguiendo la sintaxis de Karate DSL.

## Instrucciones de uso

### 1. Descarga del proyecto

Clona este repositorio en tu máquina local:

```sh
git clone https://github.com/dg-juacasti/test-automatisation-base
cd karate-test
```

### 2. Escribe tus pruebas

- Implementa los escenarios de prueba en el archivo:
  - `src/test/resources/karate-test.feature`
- Usa la sintaxis de Karate para definir los escenarios y validaciones.

### 3. Ejecuta las pruebas

Asegúrate de tener Java 17, 18 o 21 instalado y activo. Luego ejecuta:

```sh
./gradlew test o gradlew test
```

Esto compilará el proyecto y ejecutará todas las pruebas automatizadas.

---

- Si tienes problemas de SSL, puedes agregar la línea `* configure ssl = true` en el `Background` de tu archivo `.feature`.
- Los reportes de ejecución se generarán en la carpeta `karate-reports/`.
