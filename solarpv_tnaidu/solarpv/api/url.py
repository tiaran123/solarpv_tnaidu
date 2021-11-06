from django.urls import path
from . import views

app_name = 'solarpv'
urlpatterns = [path('product/', views.productListView.as_view(), name='product_list'),
               path('product/<pk>/', views.productDetailView.as_view(), name='product_detail'),
               path('service/', views.serviceListView.as_view(), name='service_list'),
               path('service/<pk>/', views.serviceDetailView.as_view(), name='service_detail'),
               path('certficate/', views.certficateListView.as_view(), name='certficate_list'),
               path('certficate/<pk>/', views.certficateDetailView.as_view(), name='certficate_detail')
              ]
