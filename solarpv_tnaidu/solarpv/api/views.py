from rest_framework import generics
from ..models import product, certficate, service
from .serializers import productSerializer, certficateSerializer, serviceSerializer

class productListView(generics.ListAPIView):
    queryset = product.objects.all()
    serializer_class = productSerializer

class productDetailView(generics.RetrieveAPIView):
    queryset = product.objects.all()
    serializer_class = productSerializer


class serviceListView(generics.ListAPIView):
    queryset = service.objects.all()
    serializer_class = serviceSerializer

class serviceDetailView(generics.RetrieveAPIView):
    queryset = service.objects.all()
    serializer_class = serviceSerializer

class certficateListView(generics.ListAPIView):
    queryset = certficate.objects.all()
    serializer_class = certficateSerializer

class certficateDetailView(generics.RetrieveAPIView):
    queryset = certficate.objects.all()
    serializer_class = certficateSerializer
