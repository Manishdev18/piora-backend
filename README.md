# Django eCommerce API

A robust Django REST API for an eCommerce platform with comprehensive features for managing products, orders, payments, and user authentication.

## Features

- **User Management**: Registration, authentication, and profile management
- **Product Catalog**: Product management with categories and images
- **Order Processing**: Complete order management system
- **Payment Integration**: Stripe payment processing
- **Admin Interface**: Django admin for backend management
- **API Documentation**: Auto-generated API docs with drf-spectacular
- **Docker Support**: Containerized deployment
- **Celery Integration**: Asynchronous task processing

## Tech Stack

- **Framework**: Django 4.0.4
- **API**: Django REST Framework
- **Authentication**: JWT with SimpleJWT
- **Database**: SQLite (development) / PostgreSQL (production)
- **Payment**: Stripe
- **Task Queue**: Celery with Redis
- **Deployment**: Docker, Gunicorn, Nginx

## Installation & Setup

### Prerequisites
- Python 3.9+
- Redis (for Celery)
- Docker (optional)

### Local Development

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd django-ecommerce-api
   ```

2. **Create virtual environment**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Environment Setup**
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

5. **Database Setup**
   ```bash
   python manage.py migrate
   python manage.py createsuperuser
   python manage.py collectstatic
   ```

6. **Load Sample Data**
   ```bash
   python manage.py setup_piora_farm
   python manage.py add_product_images
   ```

7. **Run the server**
   ```bash
   python manage.py runserver
   ```

### Docker Setup

1. **Build and run with Docker Compose**
   ```bash
   docker-compose up --build
   ```

## API Endpoints

- **Authentication**: `/api/auth/`
- **Users**: `/api/users/`
- **Products**: `/api/products/`
- **Orders**: `/api/orders/`
- **Payments**: `/api/payments/`
- **API Documentation**: `/api/schema/swagger-ui/`

## Project Structure

```
django-ecommerce-api/
├── config/              # Django project settings
├── users/               # User management app
├── products/            # Product catalog app
├── orders/              # Order processing app
├── payment/             # Payment handling app
├── mediafiles/          # Media file storage
├── nginx/               # Nginx configuration
├── requirements.txt     # Python dependencies
├── docker-compose.yml   # Docker configuration
└── manage.py           # Django management script
```

## Environment Variables

Create a `.env` file with the following variables:

```env
DEBUG=True
SECRET_KEY=your-secret-key
DATABASE_URL=sqlite:///db.sqlite3
STRIPE_PUBLISHABLE_KEY=your-stripe-publishable-key
STRIPE_SECRET_KEY=your-stripe-secret-key
REDIS_URL=redis://localhost:6379
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License.