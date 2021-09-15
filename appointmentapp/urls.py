from django.urls import path
from .views import Index,Login


urlpatterns = [
    path('index/',Index.as_view())
]
