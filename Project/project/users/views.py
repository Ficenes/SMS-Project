from django.shortcuts import render, redirect
from django.contrib import messages
from .forms import CreateUserForm
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required


def show_register(request):
    '''Function shows register form'''
    logged_in = False
    if request.user.is_authenticated:
        logged_in = True
        return redirect('/')
    else:
        form = CreateUserForm()
        if request.method == 'POST':
            form = CreateUserForm(request.POST)
            if form.is_valid():
                form.save()
                user = form.cleaned_data.get('username')
                messages.success(request, 'Account was created for ' +  user)
                return redirect('/login')
        context = {
            'logged_in': logged_in,
            'form': form,
        }
        return render(request, "register.html", context)

def show_login(request):
    '''Function shows login form'''
    logged_in = False
    if request.user.is_authenticated:
        logged_in = True
        return redirect('/')
    else:
        if request.method == 'POST':
            username = request.POST.get('username')
            password = request.POST.get('password')
            user = authenticate(request, username = username, password = password)
            if user is not None:
                login(request, user)
                return redirect('/')
            else:
                messages.info(request, 'Username or password is incorrect')
        context = {
            'logged_in' : logged_in,
        }
        return render(request, "login.html", context)

def logoutUser(request):
    '''Logout view'''
    logout(request)
    return redirect('/login')