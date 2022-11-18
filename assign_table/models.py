from django.db import models
from employee.models import Employee
from department.models import Department
from asset.models import Asset
# Create your models here.

class AssignTable(models.Model):
    assign_id = models.AutoField(primary_key=True)
    # emp_id = models.IntegerField()
    emp=models.ForeignKey(Employee, to_field='emp_id', on_delete=models.CASCADE)
    # dept_id = models.IntegerField()
    dept = models.ForeignKey(Department, to_field='dept_id', on_delete=models.CASCADE)
    # asset_id = models.IntegerField()
    asset = models.ForeignKey(Asset, to_field='asset_id', on_delete=models.CASCADE)

    class Meta:
        managed = False
        db_table = 'assign_table'

