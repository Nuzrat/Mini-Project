from django.db import models

# Create your models here.


class ChangedAsset(models.Model):
    chanded_asst_id = models.AutoField(primary_key=True)
    asset = models.CharField(db_column='Asset', max_length=50)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'changed_asset'

