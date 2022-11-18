from django.conf.urls import url
from temp import views


urlpatterns=[
    url('home/', views.home),
    url('admin/', views.admin),
    url('admini/', views.itadministrator),
    url('super/', views.itsupervisor),
]