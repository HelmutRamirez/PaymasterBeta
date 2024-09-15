# Generated by Django 5.0.6 on 2024-09-15 03:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Empresarial', '0005_porcentajeslegales_vigente'),
    ]

    operations = [
        migrations.AlterField(
            model_name='porcentajeslegales',
            name='riesgo_laboral1',
            field=models.DecimalField(decimal_places=2, help_text='Porcentaje de riesgo laboral - Clase 1', max_digits=10),
        ),
        migrations.AlterField(
            model_name='porcentajeslegales',
            name='riesgo_laboral2',
            field=models.DecimalField(decimal_places=2, help_text='Porcentaje de riesgo laboral - Clase 2', max_digits=10),
        ),
        migrations.AlterField(
            model_name='porcentajeslegales',
            name='riesgo_laboral3',
            field=models.DecimalField(decimal_places=2, help_text='Porcentaje de riesgo laboral - Clase 3', max_digits=10),
        ),
        migrations.AlterField(
            model_name='porcentajeslegales',
            name='riesgo_laboral4',
            field=models.DecimalField(decimal_places=2, help_text='Porcentaje de riesgo laboral - Clase 4', max_digits=10),
        ),
        migrations.AlterField(
            model_name='porcentajeslegales',
            name='riesgo_laboral5',
            field=models.DecimalField(decimal_places=2, help_text='Porcentaje de riesgo laboral - Clase 5', max_digits=10),
        ),
    ]
