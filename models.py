from django.db import models

# Create your models here.


class Asset(models.Model):
    asset_id = models.AutoField(primary_key=True)
    asset = models.CharField(max_length=50)
    purchase_date = models.DateField()
    expired_date = models.CharField(max_length=50)
    depreciation = models.CharField(db_column='Depreciation', max_length=50)  # Field name made lowercase.
    status = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'asset'


