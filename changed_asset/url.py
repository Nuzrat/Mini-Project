from django.conf.urls import url
from changed_asset import views

urlpatterns = [
    url('post_chang/', views.post_chng_asset),
]