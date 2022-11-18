from django.shortcuts import render
from assign_table.models import AssignTable
from employee.models import Employee
from asset.models import Asset
from department.models import Department
# Create your views here.


def post_assign(request):
    ob=Employee.objects.all()
    ob1=Department.objects.all()
    ob2=Asset.objects.all()
    context={
        'x':ob,
        'y':ob1,
        'z':ob2,
    }
    if request.method=="POST":
        obj=AssignTable()
        obj.emp_id=request.POST.get('emp')
        obj.asset_id=request.POST.get('ast')
        obj.dept_id=request.POST.get('dept')
        obj.save()
    return render(request, 'assign_table/post_assign.html',context)


def view_assign(request):
    obj=AssignTable.objects.all()
    context={
        'x':obj
    }
    return render(request, 'assign_table/view_assign.html', context)
