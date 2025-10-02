#!/bin/bash

+x
echo "Ejecutando deploy con variables..."
echo "Ambiente: $ENVIRONMENT"
echo "Versión: $APP_VERSION"

# Llamar al script del repo
#bash scripts/deploy.sh "$ENVIRONMENT" "$APP_VERSION"
