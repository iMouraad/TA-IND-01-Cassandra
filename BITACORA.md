# Bitácora de trabajo: TA-IND-01

## 14/11/2026 (sábado)

### Sesión 1 (7:30 a 8:00)
- Qué hice: elegí analizar Apache Cassandra y compararlo con MongoDB. Preparé el `docker-compose.yml` con 3 nodos de Cassandra 4.1 y levanté el clúster.
- Problema: al ejecutar `docker compose up -d` salió "no configuration file provided", porque los archivos no estaban en la carpeta. Después cass3 se detuvo con `Exited (3)` porque intentó unirse al clúster al mismo tiempo que cass2.
- Cómo lo resolví: creé los archivos dentro de la carpeta del experimento y arranqué cass3 a mano cuando cass2 ya estaba en UN.
- Tiempo: 30 min

### Sesión 2 (7:45 a 7:55)
- Qué hice: creé el keyspace `uteq` con factor de replicación 3, cargué dos filas, apagué cass3 y leí con ONE, QUORUM y ALL. Luego reinicié cass3 y medí la latencia de lectura de cada nivel en 5 rondas.
- Problema: con cass3 apagado, la lectura con QUORUM funcionó pero cqlsh no pudo mostrar el tracing ("required_replicas: 2, alive_replicas: 1").
- Cómo lo resolví: vi que el keyspace `system_traces` tiene factor de replicación 2. Separé el experimento: la prueba de fallo sin tracing y la medición de latencia con los 3 nodos activos.
- Tiempo: 15 min

### Sesión 3 (8:00 a 11:30)
- Qué hice: escribí el informe en Overleaf (arquitectura, análisis con los conceptos de la Unidad 1, experimento, ejemplos de mi entorno, comparación y conclusiones), pasé a draw.io el esquema que dibujé a mano y armé el archivo de referencias. Subí la carpeta `informe/` al repositorio.
- Problema: en varias capturas no se veía la columna de estado (UN/DN) de `nodetool status` y cass3 ya estaba apagado desde antes.
- Cómo lo resolví: repetí la prueba de fallo entre las 10:58 y las 11:00 y tomé capturas nuevas donde se ve todo.
- Tiempo: 3 h 30 min

## 15/11/2026 (domingo)

### Sesión 4 (11:30 a 15:00)
- Qué hice: cambié la base de datos con la que comparo Cassandra. Pasé de MongoDB a Apache HBase. Busqué y verifiqué dos referencias nuevas con DOI sobre HBase (Cui y Chen, 2021; Tsai et al., 2022) y actualicé el título, el resumen, la introducción, la Sección 3.2, la tabla comparativa y la declaración de IA. Volví a tomar la captura de Ahmed et al. (p. 172) resaltando las líneas de HBase.
- Problema: no había anunciado mi tema en el grupo del curso y la comparación Cassandra vs MongoDB ya la había elegido una compañera antes que yo.
- Cómo lo resolví: le avisé al docente y mantuve el experimento con Cassandra, que es propio, pero cambié la tecnología de comparación por HBase, que nadie había tomado. Ahmed et al. clasifican a HBase como PC/EC, lo opuesto a Cassandra (PA/EL), y eso hace más clara la comparación.
- Tiempo: 3 h 30 min
