from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return render(request, 'solarpv/project1.html', dict())


def form(request):
    return render(request, 'solarpv/form.html', dict())

def login(request):
    return render(request, 'solarpv/login.html', dict())

def webPortal(request):
    return render(request, 'solarpv/webPortal.html', dict())
