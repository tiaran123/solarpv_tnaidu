from django.shortcuts import render
from django.http import HttpResponse
from .models import certficate, product

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
