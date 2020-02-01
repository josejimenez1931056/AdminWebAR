from .models import Footer

def footer(request):
    footer = Footer.objects.first()
    return {'FOOTER': footer.image.url}