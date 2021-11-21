from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import certficate, product, client, user
from django.contrib.auth.models import User, Group

def index(request):
    return render(request, 'solarpv/project1.html', dict())


def form(request):
    return render(request, 'solarpv/form.html', dict())

def login(request):
    return render(request, 'solarpv/login.html', dict())

def webPortal(request):
    return render(request, 'solarpv/webPortal.html', dict())

def searchCert(request):
    try:
        q = request.GET['q'].strip()
    except KeyError:
        responseData = {"q": "", "data": []}
        return render(request, 'solarpv/testing.html', responseData)
    try:
        cert = certficate.objects.get(certificateID=q)
        # print(cert.modelNumber.productName)
        searchResult = [cert]
        responseData = {"q": q, "data": searchResult}
        return render(request, 'solarpv/testing.html', responseData)
    except certficate.DoesNotExist:
        pass
    searchResult = []
    try:
        certs = certficate.objects.filter(certificateID__icontains=q)
        for cert in certs:
            searchResult.append(cert)
    except certficate.DoesNotExist:
        pass
    try:
        certs = certficate.objects.filter(modelNumber__productName__icontains=q)
        for cert in certs:
            searchResult.append(cert)
    except certficate.DoesNotExist:
        pass
        certs = certficate.objects.filter(modelNumber__productName__icontains=q)
        for cert in certs:
            searchResult.append(cert)
    except certficate.DoesNotExist:
        pass
    responseData = {"q": q, "data": searchResult}
    return render(request, 'solarpv/testing.html', responseData)

def displayCert(request):
    q = request.GET['certificateID'].strip()
    cert = certficate.objects.get(certificateID=q)
    # print(cert.modelNumber.productName)
    searchResult = [cert]
    responseData = {"data": searchResult}
    return render(request, "solarpv/cert_product.html", responseData)


def registerUser(request):
    formData = dict()
    formData["clients"] = client.objects.all()
    for fName in ['myusername', 'clientID',
                  'myFname', 'myLname', 'myMname',
                  'myJob', 'myEmail', 'myOPhone', 'myPhone',
                  'myPrefix', 'isStaff']:
        try:
            formData[fName] = request.GET[fName]
        except KeyError:
            formData[fName] = ""
    if formData['isStaff'] == "on":
        formData['isStaff'] = ' checked'
    if formData['clientID'] != "":
        formData['clientID'] = int(formData['clientID'])
    else:
        formData['clientID'] = -1
    print(formData)
    
    if (formData['myusername'] != ""):
        # try to create a user
        try:
            systemuser = User.objects.create_user(formData['myusername'],
                                                formData['myEmail'], 'test')
            systemuser.is_staff = (formData['isStaff'] != "")
            my_group = Group.objects.get(name='staffgroup')
            my_group.user_set.add(systemuser)
            my_group.save()
            systemuser.save()
            solarUser = user.objects.create(firstName=formData['myFname'],
                                            lastName=formData['myLname'],
                                            middleName=formData['myMname'],
                                            jobTitle=formData['myJob'],
                                            email=formData['myEmail'],
                                            officePhone=formData['myOPhone'],
                                            cellPhone=formData['myPhone'],
                                            prefix=formData['myPrefix'],
                                            client_id=(None if formData['clientID'] == -1 else formData['clientID']),
                                            userName=formData['myusername'])
            if (formData['isStaff'] != ""):
                return redirect('/admin/')
            else:
                return redirect('/')
        except:
            pass
    
    return render(request, "solarpv/form.html", formData)