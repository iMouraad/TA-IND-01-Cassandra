# Bitácora de trabajo: TA-IND-01

## 14/11/2026 (sábado)

### Sesión 1 (7:30 a 8:00)
- Qué hice: registré mi elección (Apache Cassandra comparado con MongoDB) enviando un mensaje al docente, porque en el SGA no apareció el foro. Preparé el `docker-compose.yml` con 3 nodos de Cassandra 4.1 y levanté el clúster.
- Problema: al ejecutar `docker compose up -d` salió "no configuration file provided", porque los archivos no estaban en la carpeta. Después cass3 se detuvo con `Exited (3)` porque intentó unirse al clúster al mismo tiempo que cass2.
- Cómo lo resolví: creé los archivos dentro de la carpeta del experimento y arranqué cass3 a mano cuando cass2 ya estaba en UN.
- Tiempo: 30 min

### Sesión 2 (7:45 a 7:55)
- Qué hice: creé el keyspace `uteq` con factor de replicación 3, cargué dos filas, apagué cass3 y leí con ONE, QUORUM y ALL. Luego reinicié cass3 y medí la latencia de lectura de cada nivel en 5 rondas.
- Problema: con cass3 apagado, la lectura con QUORUM funcionó pero cqlsh no pudo mostrar el tracing ("required_replicas: 2, alive_replicas: 1").
- Cómo lo resolví: vi que el keyspace `system_traces` tiene factor de replicación 2. Separé el experimento: la prueba de fallo sin tracing y la medición de latencia con los 3 nodos activos.
- Tiempo: 15 min
