# Deployment Guide for Render

## Environment Variables Required

When deploying to Render, make sure to set these environment variables in your Render dashboard:

### Required Variables:
- `DJANGO_SETTINGS_MODULE` = `config.settings.development`
- `SECRET_KEY` = Generate a secure secret key (Render can auto-generate this)
- `DEBUG` = `True` (since using development settings)
- `ALLOWED_HOSTS` = `.onrender.com,localhost,127.0.0.1`

### Optional Variables (if you use these features):
- `DATABASE_URL` = Your database connection string
- `EMAIL_HOST` = SMTP server for sending emails
- `EMAIL_PORT` = SMTP port (usually 587)
- `EMAIL_HOST_USER` = Your email address
- `EMAIL_HOST_PASSWORD` = Your email password or app password
- `EMAIL_USE_TLS` = `True`
- `STRIPE_PUBLISHABLE_KEY` = Your Stripe publishable key
- `STRIPE_SECRET_KEY` = Your Stripe secret key
- `TWILIO_ACCOUNT_SID` = Your Twilio SID
- `TWILIO_AUTH_TOKEN` = Your Twilio auth token

## Files Created for Deployment:

1. **runtime.txt** - Specifies Python 3.9.18 for compatibility
2. **render.yaml** - Render deployment configuration
3. **Updated requirements.txt** - Compatible package versions
4. **Updated development.py** - Development settings configured for Render deployment
5. **Fixed celery.py** - Handles missing environment variables gracefully

## Next Steps:

1. Commit and push these changes to your repository
2. Set up environment variables in your Render dashboard:
   - `DJANGO_SETTINGS_MODULE` = `config.settings.development`
   - `SECRET_KEY` = (let Render auto-generate this)
   - `DEBUG` = `True`
   - `ALLOWED_HOSTS` = `.onrender.com,localhost,127.0.0.1`
3. Deploy your application

The deployment should now work without the previous errors!