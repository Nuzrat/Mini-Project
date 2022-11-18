from django.conf.urls import url
from assign_table import views

urlpatterns = [
    url('post_as/', views.post_assign),
    url('view_as/', views.view_assign),
]