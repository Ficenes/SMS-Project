from django.shortcuts import render
from .forms import CreateUserForm


def show_register(request):
    '''Function shows register form'''
    form = CreateUserForm()
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
    context = {
        'form': form,
    }
    return render(request, "register.html", context)