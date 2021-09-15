from django.views import View
from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.contrib.auth.mixins import LoginRequiredMixin
# Create your views here.

class Index(LoginRequiredMixin,View):
    login_url = '/appointment/login/'
    redirect_field_name = 'redirect_to'
    template_name = "index.html"
    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)


class Login(View):
    template_name = "login.html"

    def get(self,request, *args, **kwargs):
        return render(request, self.template_name)
