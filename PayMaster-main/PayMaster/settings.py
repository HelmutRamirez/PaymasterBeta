"""
Django settings for PayMaster project.

Generated by 'django-admin startproject' using Django 5.0.6.

For more information on this file, see
https://docs.djangoproject.com/en/5.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/5.0/ref/settings/
"""

from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/5.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-#%k6)#@k_wdt6o1qu%7h6jwi1^re_yreu@=#umsy(1ca=vaq&x'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = [
    
    'Independientes.apps.IndependientesConfig',
    'Empresarial.apps.EmpresarialConfig',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]
LOGIN_URL = '/accounts/login/'
LOGIN_REDIRECT_URL = '/independiente/home/'


CRISPY_ALLOWEB_TEMPLATE_PACKS='bootstrap5'
CRISPY_TEMPLATE_PACK='bootstrap5'

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    
]

ROOT_URLCONF = 'PayMaster.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': ['templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'PayMaster.wsgi.application'


# Database
# https://docs.djangoproject.com/en/5.0/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'paymaster',  
        'USER': 'root',                 
        'PASSWORD': '',                         
        'HOST': '127.0.0.1',                    
        'PORT': '3306',                          
    }
}


# Password validation
# https://docs.djangoproject.com/en/5.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]




LANGUAGE_CODE = 'es'#Modificador para idioma  

TIME_ZONE = 'America/Bogota'#agregado para hora colombia 

USE_I18N = True

USE_TZ = True

LANGUAGES = [
    ('es', 'Spanish'),
]
STATIC_URL = 'static/'
STATIC_ROOT=BASE_DIR
STATICFILES_DIRS=[
    "PayMaster/static",
]

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_PORT = 587
EMAIL_USE_TLS = True
EMAIL_HOST_USER = 'p4ym4ster@gmail.com'  # dirección de correo
EMAIL_HOST_PASSWORD = 'krwj apcj sols uowd'  #  contraseña o clave de acceso


# Duración de la sesión en segundos (default: 2 semanas)


DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

MEDIA_ROOT=BASE_DIR /'media'
MEDIA_URL='/media/'
