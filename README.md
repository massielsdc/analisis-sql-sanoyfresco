[README.md](https://github.com/user-attachments/files/22672116/README.md)
Proyecto SQL — SanoyFresco

Este proyecto contiene un análisis de ventas realizado con SQLite usando la plataforma [sqliteonline.com](https://sqliteonline.com/).  
La base de datos utilizada (`sanoyfresco.db`) fue provista por el curso y contiene la tabla `tickets` con información de pedidos, productos, clientes y ventas.  

El objetivo fue practicar consultas SQL para obtener métricas de negocio y análisis de clientes/productos.



## Tabla `tickets` (estructura)
- `id_pedido` (INTEGER)  
- `id_cliente` (INTEGER)  
- `fecha` (TIMESTAMP)  
- `hora` (INTEGER)  
- `id_departamento` (INTEGER)  
- `id_seccion` (INTEGER)  
- `id_producto` (INTEGER)  
- `nombre_producto` (TEXT)  
- `precio_unitario` (REAL)  
- `cantidad` (INTEGER)  
- `precio_total` (REAL)  

---

## Consultas realizadas
- Ingreso total generado por el negocio.  
- Tendencia de ingresos mensuales.  
- Ventas por departamento y sección.  
- Top 10 productos más vendidos y más rentables.  
- Top 20 clientes por ingresos y compra media por cliente.  
- Total de pedidos y valor promedio por pedido.  

---

## Cómo reproducir el análisis

### Opción 1: sqliteonline.com
1. Ingresa a [sqliteonline.com](https://sqliteonline.com/).
2. Carga la base de datos (`sanoyfresco.db`) descomprimiendo el archivo `.rar`.
3. Copia y pega las consultas de `sql/consultas_analisis.sql` en el editor.
4. Ejecuta cada consulta para ver los resultados.

### Opción 2: SQLite local
1. Instalar [SQLite3](https://www.sqlite.org/download.html).
2. Descargar la base de datos completa desde Google Drive:
   [Descargar sanoyfresco.rar](https://drive.google.com/file/d/1wYLT4KFOlY8750QhMTdTztC1h_3u2T7D/view?usp=drive_link)
3. Descomprimir el `.rar` y colocar `sanoyfresco.db` en la carpeta `data/`.
4. Ejecutar:
   ```bash
   sqlite3 data/sanoyfresco.db
   .read sql/consultas_analisis.sql

Datos

En este repositorio incluyo solo las consultas SQL y el esquema de la tabla.
La base completa está disponible en Google Drive: https://drive.google.com/file/d/1wYLT4KFOlY8750QhMTdTztC1h_3u2T7D/view?usp=drive_link

Autor

Proyecto de práctica SQL por Massiel Díaz Carrasco.
Consultas desarrolladas en sqliteonline.com como parte de ejercicios de aprendizaje.
