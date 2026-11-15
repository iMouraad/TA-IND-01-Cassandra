# TA-IND-01: Análisis crítico de Apache Cassandra frente a MongoDB

Universidad Técnica Estatal de Quevedo (UTEQ) · Facultad de Ciencias de la Computación · Carrera de Software

Aplicaciones Distribuidas · 7mo nivel · Paralelo B

Docente: Ing. Gleiston Cicerón Guerrero Ulloa

Estudiante: Zambrano Yong Angel Daniel

Entrega: 15/11/2026

## Video de sustentación

Enlace: https://drive.google.com/drive/folders/15S5Df3tTCRJATuwl1qYeOe5zAb71ko1T?usp=drive_link

Duración aproximada: 3 minutos. Explico el clúster de tres nodos, la prueba con un nodo caído (ONE y QUORUM responden, ALL falla) y lo que concluí sobre consistencia y latencia.
## Estructura del repositorio

| Carpeta o archivo | Contenido |
|---|---|
| `informe/` | Documento LaTeX (`informe.tex`), referencias (`referencias.bib`), figuras y PDF compilado |
| `experimento/` | `docker-compose.yml`, script CQL, comandos usados y resultados obtenidos |
| `capturas/` | Capturas de la ejecución del clúster y de lectura de las fuentes |
| `BITACORA.md` | Registro de cada sesión de trabajo |

## Cómo reproducir el experimento

Requisitos: Docker Desktop con al menos 6 GB de RAM disponibles.

```powershell
cd experimento
docker compose up -d
docker exec cass1 nodetool status
```

Si un nodo se detiene con `Exited (3)`, arrancarlo cuando el anterior ya esté en `UN` (`docker start cass3`). Los pasos completos están en `experimento/comandos.md`.

## Cómo compilar el informe

Compilador: `pdflatex` con `biber`.

Archivo principal: `informe/informe.tex`

Desde la carpeta `informe`:

```bash
pdflatex informe.tex
biber informe
pdflatex informe.tex
pdflatex informe.tex
```

Dependencias: TeX Live 2022 o superior (o MiKTeX) con `biblatex`, `biblatex-ieee`, `biber`, `babel` (`spanish` y `american`), `csquotes`, `geometry`, `graphicx`, `booktabs`, `xcolor`, `enumitem`, `listings`, `hyperref` y `lmodern`.
