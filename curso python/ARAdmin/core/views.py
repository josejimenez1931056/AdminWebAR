from django.shortcuts import render
from django.views.generic.base import TemplateView
from .models import Index, Cover
from django.contrib.admin.views.decorators import staff_member_required
from django.utils.decorators import method_decorator
# Create your views here.
@method_decorator(staff_member_required, name='dispatch')
class HomePageView(TemplateView):
    
    template_name = "core/home.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['index'] = Index.objects.first()
        context['cover'] = Cover.objects.first()
        return context