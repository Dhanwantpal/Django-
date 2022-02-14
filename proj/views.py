from email.mime import message
from turtle import title
from django.shortcuts import redirect, render
from django.contrib.auth.models import User,auth
from django.contrib import messages
from proj.models import Usersdata
# Create your views here.
def home(request):
    return render(request,'Rabeena.html')
    
def dashboard(request):
    return render(request,'dashboard.html')

def addcontent(request):
    if request.method=='POST':
        # userid=request.POST['userid']
        userdata=Usersdata()
        userdata.title=request.POST.get('title')
        userdata.desc=request.POST.get('about')
        userdata.file=request.POST.get('video')
        x=userdata.save()
        if x == True:
           messages.info(request,'Uploaded successfully')

        else:
           messages.info(request,'There is Some Error')
        return redirect('addcontent')
    else:
        
        return render(request,'add.html')

def login(request):
     if request.method=='POST':
        username=request.POST['username']
        pass1=request.POST['pass']
        user=auth.authenticate(username=username,password=pass1)
   
        if user is not None:
           auth.login(request,user)
           usernamee=user.username
           return redirect('/')
        else:
            messages.info(request,'invalid credentials')
            return render(request,'login')

     else :
         return render(request,'login.html')

def register(request):
    if request.method=='POST':
        first_name=request.POST['fname']
        last_name=request.POST['lname']
        username=request.POST['username']
        email=request.POST['email']
        pass1=request.POST['pass1']
        pass2=request.POST['pass2']

        if pass1==pass2 :
            if User.objects.filter(username=username).exists():
                print("username already exist")
                messages.info(request,'username already exist')
                return render(request,'register.html')
            else:
                user= User.objects.create_user(username=username,first_name=first_name,last_name=last_name,email=email.strip(),password=pass1)
                user.save()
                print("user created")
                messages.info(request,'Your Account is Created')
                return redirect('login')
                
        else:
            messages.info(request,'please enter same password')
            return render(request,'register.html')
           
    else :
        return render(request,'register.html')
        