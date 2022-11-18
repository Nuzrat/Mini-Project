from django.shortcuts import render

# Create your views here.


def home(request):
    return render(request, 'temp/home.html')

def admin(request):
    return render(request, 'temp/admin.html')

def itadministrator(request):
    return render(request, 'temp/it_administrator.html')

def itsupervisor(request):
    return render(request, 'temp/supervisor.html')
