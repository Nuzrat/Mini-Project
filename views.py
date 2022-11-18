from django.shortcuts import render
from asset.models import Asset
# Create your views here.


def post_asset(request):
    if request.method == "POST":
        obj=Asset()
        obj.asset=request.POST.get('uname')
        obj.purchase_date=request.POST.get('date')
        obj.expired_date=request.POST.get('exp')
        obj.depreciation=request.POST.get('depreciation')
        obj.status='pending'
        obj.save()
    return render(request, 'asset/Asset.html')


def post_asset_admin(request):
    if request.method == "POST":
        obj=Asset()
        obj.asset=request.POST.get('uname')
        obj.purchase_date=request.POST.get('date')
        obj.expired_date = request.POST.get('exp')
        obj.depreciation=request.POST.get('depreciation')
        obj.status='pending'
        obj.save()
    return render(request, 'asset/post_asset_admin.html')


def view_asset(request):
    obj=Asset.objects.all()
    context={
        'p':obj
    }
    return render(request, 'asset/view_asset.html', context)


def view_asset_admin(request):
    obj = Asset.objects.all()
    context = {
        'm': obj
    }
    return render(request, 'asset/view_asset_admin.html', context)


def update_asset(request,idd):
    obj=Asset.objects.get(asset_id=idd)
    context={
        'mm':obj
    }
    if request.method == "POST":
        obj=Asset.objects.get(asset_id=idd)
        obj.asset=request.POST.get('uname')
        obj.purchase_date=request.POST.get('date')
        obj.expired_date = request.POST.get('exp')
        obj.depreciation=request.POST.get('depreciation')
        obj.status='pending'
        obj.save()
        return view_asset(request)
    return render(request, 'asset/update_asset.html', context)


def update_asset_admin(request,idd):
    obj=Asset.objects.get(asset_id=idd)
    context={
        'bb':obj
    }
    if request.method == "POST":
        obj=Asset.objects.get(asset_id=idd)
        obj.asset=request.POST.get('uname')
        obj.purchase_date=request.POST.get('date')
        obj.expired_date = request.POST.get('exp')
        obj.depreciation=request.POST.get('depreciation')
        obj.status='pending'
        obj.save()
        return view_asset_admin(request)
    return render(request, 'asset/update_asset_admin.html', context)


def delete_asset(request,idd):
    obj=Asset.objects.get(asset_id=idd)
    obj.delete()
    return view_asset(request)


def delete_asset_admn(request,idd):
    obj=Asset.objects.get(asset_id=idd)
    obj.delete()
    return view_asset_admin(request)


def view_asset_spr(request):
    obj=Asset.objects.all()
    context={
        'h':obj
    }
    return render(request, 'asset/view_sts_spr.html', context)
