from django.conf.urls import url
from asset import views

urlpatterns=[
    url('post_ast/', views.post_asset),
    url('view_ast/', views.view_asset),
    url('post_ast_admin/', views.post_asset_admin),
    url('view_ast_admn/', views.view_asset_admin),
    url('update_ast/(?P<idd>\w+)', views.update_asset),
    url('update_ast_admin/(?P<idd>\w+)', views.update_asset_admin),
    url('delete_ast/(?P<idd>\w+)', views.delete_asset),
    url('delete_asset_admin/(?P<idd>\w+)', views.delete_asset_admn),
    url('spr_view/', views.view_asset_spr),
]