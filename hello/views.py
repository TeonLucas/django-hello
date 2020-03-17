from django.shortcuts import render

def home(request):
    text1 = "Django example"
    text2 = "with New Relic monitoring"
    return render(request, 'main.html', {'text1': text1, 'text2': text2})

def game(request):
    text1 = "Game page"
    text2 = "[ O | X | O ]"
    return render(request, 'main.html', {'text1': text1, 'text2': text2})
