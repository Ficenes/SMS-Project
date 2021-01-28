"""project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from django.conf import settings
from django.conf.urls.static import static

from entry_view.views import entry_welcome
from stores.views import show_store_stock
from shop.views import show_shop
from basket.views import show_basket
from invoices.views import show_invoices
from warehouse.views import show_warehouse_stock
from users.views import show_register, show_login, logoutUser


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', entry_welcome, name='entry'),
    path('store_stock/', show_store_stock, name='stores'),
    path('shop/', show_shop, name='shop'),
    path('basket/', show_basket, name='basket'),
    path('invoices/', show_invoices, name='invoices'),
    path('warehouse_stock/', show_warehouse_stock, name='warehouse'),
    path('register/', show_register, name='register'),
    path('login/', show_login, name='login'),
    path('logout/', logoutUser, name='logout'),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
