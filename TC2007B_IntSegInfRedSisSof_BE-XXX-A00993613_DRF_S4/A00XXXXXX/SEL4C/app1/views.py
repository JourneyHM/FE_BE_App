from django.contrib.auth.models import User, Group
from .models import HomeModel  # Import your model
from rest_framework import viewsets
from rest_framework import permissions
from SEL4C.app1.serializers import UserSerializer, GroupSerializer, HomeSerializer # Import your serializer
from django.http import HttpResponse

class HomeViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows MyModel to be viewed or edited.
    """
    queryset = HomeModel.objects.all()  # Set the queryset for the view
    serializer_class = HomeSerializer  # Set the serializer class
    permission_classes = [permissions.IsAuthenticated]  # Set the permission classes

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]