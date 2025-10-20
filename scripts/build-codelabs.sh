#!/bin/bash

# Script para construir codelabs localmente
set -e

echo "🚀 Construyendo codelabs..."

# Ir al directorio raíz del proyecto
cd "$(dirname "$0")/.."

# Construir claat si no existe
if [ ! -f "claat/claat" ]; then
    echo "🔨 Construyendo herramienta claat..."
    cd claat
    go build -o claat
    chmod +x claat
    cd ..
fi

# Ir al directorio site
cd site

# Instalar dependencias si es necesario
if [ ! -d "node_modules" ]; then
    echo "📦 Instalando dependencias..."
    npm install
fi

# Procesar archivos .md en codelabs/
echo "🔍 Buscando archivos de codelabs en site/codelabs/..."

if [ -d "codelabs" ]; then
    for md_file in codelabs/*.md; do
        if [ -f "$md_file" ]; then
            echo "📝 Procesando: $md_file"
            ../claat/claat export "$md_file"
        fi
    done
else
    echo "📁 Creando directorio codelabs/..."
    mkdir -p codelabs
    echo "💡 Agrega tus archivos .md en site/codelabs/ y vuelve a ejecutar este script"
fi

# Construir el sitio
echo "🏗️  Construyendo sitio web..."
npx gulp build --codelabs-dir=.

echo "✅ ¡Construcción completada!"
echo "🌐 Para servir localmente, ejecuta:"
echo "   cd site && npx gulp serve --codelabs-dir=."