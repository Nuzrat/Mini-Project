from django.shortcuts import render
from changed_asset.models import ChangedAsset
# Create your views here.


def post_chng_asset(request):
    return render(request, 'changed_asset/Changed_Asset.html')
