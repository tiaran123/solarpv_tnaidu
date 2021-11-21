from django.db import models


class testSequence(models.Model):
    sequenceName = models.CharField(max_length=30)


class client(models.Model):
    clientName = models.CharField(max_length=30)
    clientType = models.CharField(max_length=30)

class service(models.Model):
    serviceName = models.CharField(max_length=30)
    description = models.TextField()
    isFIRequired = models.BooleanField()
    FIFrequency = models.IntegerField()
    standard = models.ForeignKey('testStandard', on_delete=models.CASCADE)


class testStandard(models.Model):
    standardName = models.CharField(max_length=30)
    description = models.TextField()
    publishedDate = models.DateField()

class location(models.Model):
    address1 = models.TextField()
    address2 = models.TextField()
    city = models.CharField(max_length=30)
    state = models.CharField(max_length=2)
    postalCode = models.CharField(max_length=5)
    country = models.CharField(max_length=30)
    phoneNumber = models.CharField(max_length=20)
    faxNumber = models.CharField(max_length=20)
    client = models.ForeignKey('client', on_delete=models.CASCADE)

class user(models.Model):
    userName = models.CharField(max_length=30, null=False, unique=True)
    firstName = models.CharField(max_length=30)
    lastName = models.CharField(max_length=30)
    middleName = models.CharField(max_length=30)
    jobTitle = models.CharField(max_length=30)
    email = models.CharField(max_length=50)
    officePhone = models.CharField(max_length=20)
    cellPhone = models.CharField(max_length=20)
    prefix = models.CharField(max_length=5)
    client = models.ForeignKey('client', null=True, on_delete=models.CASCADE)

class product(models.Model):
    productName =  models.CharField(max_length=50)
    cellTechnology =  models.CharField(max_length=50)
    cellManufacturer =  models.CharField(max_length=50)
    numberOfCells =  models.CharField(max_length=50)
    series =  models.CharField(max_length=50)
    seriesString =  models.CharField(max_length=50)
    diodes =  models.CharField(max_length=50)
    length =  models.IntegerField()
    width = models.IntegerField()
    weight = models.IntegerField()
    superstateType = models.CharField(max_length=50)
    superstateManufacturer = models.CharField(max_length=50)
    substrateType = models.CharField(max_length=50)
    substrateManufacturer = models.CharField(max_length=50)
    frameType = models.CharField(max_length=50)
    frameAdhesive = models.CharField(max_length=50)
    encapsulateType = models.CharField(max_length=50)
    encapsulateManufacturer = models.CharField(max_length=50)
    junctionBoxType = models.CharField(max_length=50)
    junctionBoxManufacturer = models.CharField(max_length=50)

class performanceData(models.Model):
    modelNumber = models.ForeignKey('product', on_delete=models.CASCADE)
    sequence = models.ForeignKey('testSequence', on_delete=models.CASCADE)
    maxSystemVoltage = models.IntegerField()
    voc = models.FloatField()
    isc = models.FloatField()
    vmp = models.FloatField()
    imp = models.FloatField()
    pmp = models.FloatField()
    ff = models.FloatField()

class certficate(models.Model):
    certificateID = models.CharField(max_length=10, null=False, unique=True)
    user = models.ForeignKey('user', on_delete=models.CASCADE)
    reportNumber = models.IntegerField()
    issueDate = models.DateField()
    standard = models.ForeignKey('testStandard', on_delete=models.CASCADE)
    location = models.ForeignKey('location', on_delete=models.CASCADE)
    modelNumber = models.ForeignKey('product', on_delete=models.CASCADE)
