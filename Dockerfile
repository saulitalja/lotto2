# Käytä gcc-pohjakuvaa
FROM gcc:latest

# Määritä työskentelyhakemisto /app
WORKDIR /app

# Kopioi C-ohjelma Docker-konttiin
COPY main.c /app/

# Käännä C-ohjelma
RUN gcc -o my_c_program main.c

# Määritä komento suoritettavalle tiedostolle
CMD ["./my_c_program"]
