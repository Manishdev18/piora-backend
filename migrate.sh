#!/bin/bash

# Django Migration Script
# This script runs makemigrations and migrate commands

set -e  # Exit on any error

echo "🔄 Starting Django migrations..."

echo "📝 Creating new migrations..."
python manage.py makemigrations

echo "📋 Checking for unapplied migrations..."
python manage.py showmigrations

echo "🚀 Applying migrations to database..."
python manage.py migrate

echo "✅ Migrations completed successfully!"

echo "📊 Current migration status:"
python manage.py showmigrations