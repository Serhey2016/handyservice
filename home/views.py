from django.shortcuts import render

# Create your views here.
# home/views.py

from django.shortcuts import render

def index(request):
    return render(request, 'home/index.html')