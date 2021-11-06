from rest_framework import serializers
from ..models import service, certficate, product

class productSerializer(serializers.ModelSerializer): 
    class Meta: 
        model = product
        fields = ["productName",
                  "cellTechnology",
                  "cellManufacturer",
                  "numberOfCells",
                  "series",
                  "seriesString",
                  "diodes",
                  "length",
                  "width",
                  "weight",
                  "superstateType",
                  "superstateManufacturer",
                  "substrateType",
                  "substrateManufacturer",
                  "frameType",
                  "frameAdhesive",
                  "encapsulateType",
                  "encapsulateManufacturer"]

class serviceSerializer(serializers.ModelSerializer):
    class Meta:
        model = service
        fields = ['serviceName',
                  'description',
                  'isFIRequired',
                  'FIFrequency',
                  'standard']

class certficateSerializer(serializers.ModelSerializer):
    class Meta:
        model = certficate
        fields = ['certificateID',
                  'user',
                  'reportNumber',
                  'issueDate',
                  'standard',
                  'location',
                  'modelNumber']
