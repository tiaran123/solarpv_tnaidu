from django.contrib import admin
from .models import client, location, product, certficate, testStandard
# Register your models here.
# Client
@admin.register(client)
class clientAdmin(admin.ModelAdmin):
    list_display = ['clientName', 'clientType']
    list_filter = ['clientType']
    search_fields = ['clientName']

# Location
@admin.register(location)
class locationAdmin(admin.ModelAdmin):
    list_display = ['address1', 'address2', 'city', 'state', 'postalCode']
    list_filter = ['state']
    search_fields = ['address1', 'address2', 'city', 'phoneNumber']

# Product
@admin.register(product)
class productAdmin(admin.ModelAdmin):
    list_display = ['productName', 'cellManufacturer']
    list_filter = ['numberOfCells']
    search_fields = ['productName', 'cellManufacturer', 'series']


# Test Standard
@admin.register(testStandard)
class testStandardAdmin(admin.ModelAdmin):
    list_display = ['standardName', 'publishedDate']
    list_filter = ['publishedDate']
    search_fields = ['standardName', 'description']

# Certificate
@admin.register(certficate)
class certificateAdmin(admin.ModelAdmin):
    list_display = ['certificateID', 'issueDate']
    list_fitler = ['issueDate']
    search_fields = ['certificateID']


#@admin.register(Subject)
#class SubjectAdmin(admin.ModelAdmin): 
#list_display = ['title', 'slug'] 
#prepopulated_fields = {'slug': ('title',)}

#@admin.register(Course)
#class CourseAdmin(admin.ModelAdmin): 
#list_display = ['title', 'subject', 'created'] 
#fields = [‘subject’, 'title', (‘created’,)]
#list_filter = ['created', 'subject'] 
#search_fields = ['title', 'overview'] 
#prepopulated_fields = {'slug': ('title',)} 
