var script = document.createElement('script');
script.src = 'https://code.jquery.com/jquery-3.4.1.min.js';
script.type = 'text/javascript';
document.getElementsByTagName('head')[0].appendChild(script);

var qna = { //qna=questions n answers, not yana
    easy_questions: ["На коя планета освен Земята е имало живот?", "Коя е най-малката планета?", "Коя планета е позната като най-големият океан в Слънчевата система?", "До коя планета са изпращани най-много мисии до момента?", "Защо Марс изглежда розово-червеникав от разстояние?", "На коя планета гравитацията е почти същата като на Земята?", "Пръстените на коя планета носят имена на буквите от A до F?", "На коя планета се е намирало Голямото черно петно?", "Колко луни има Уран?", "На коя планета има най-рязки разлики между температурата денем и нощем?", "Коя е единствената позната ни планета, която има активна система от тектонски плочи?", 'Коя планета изглежда все едно се върти „отгоре надолу“?', "На коя планета са наблюдавани най-силните ветрове в Слънчевата система?", "Коя планета изглежда бледо жълта погледната от Земята?"],
    easy_answers: [["Марс", "Венера", "няма такава"], 
                   ["Венера", "Меркурий", "Марс"], 
                   ["Сатурн", "Уран", "Юпитер"], 
                   ["Марс", "Венера", "Юпитер"], 
                   ["наличие на железен оксид", "наличие на водород и хелий", "отразява червената светлина от Слънцето"], 
                   ["Марс", "Меркурий", "Нептун"], 
                   ["Сатурн", "Юпитер", "Уран"], 
                   ["Юпитер", "Нептун", "Уран"], 
                   ["27", "63", "44"], 
                   ["Венера", "Земя", "Меркурий"], 
                   ["Земя", "Марс", "Нептун"], 
                   ["Сатурн", "Уран", "Венера"], 
                   ["Нептун", "Марс", "Земя"], 
                   ["Венера", "Марс", "Сатурн"]],
    easy_correct_answers: [1, 2, 3, 1, 1, 3, 1, 2, 1, 3, 1, 2, 1, 3],
    hard_questions: ["Кой е най-голямият спътник на Нептун?", "Над колко спътника има Юпитер?", "Колко пръстена има Сатурн?", "Коя планета се върти по часовниковата стрелка?", "Луните на коя планета носят имена на герои от пиеси на Шекспир?", "Атмосферата на коя планета в Слънчевата система е най-тежка?"],
    hard_answers: [["Лариса", "Галатея", "Тритон"], ["74", "80", "83"], ["5", "8", "7"], ["Венера", "Уран", "Марс"], ["Нептун", "Уран", "Юпитер"], ["Нептун", "Марс", "Венера"]],
    hard_correct_answers: [3, 1, 3, 1, 2, 3]
}

var curr_question=0;
var user_input=0;
var correct_cnt=0;
var btn1=document.getElementById("butonche1")
var btn2=document.getElementById("butonche2")
var btn3=document.getElementById("butonche3")
var has_first_run_happened=false

function receive_input(num){
    user_input = num
}

function drawText(text, x, y){
    context.fillStyle="white"
    context.font="40px Aclonica"
    context.fillText(text, x, y)
}

function shuffle(array1, array2, array3) {
    var currentIndex = array1.length,  randomIndex;
    
    while(currentIndex != 0) {
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex--;
        [array1[currentIndex], array1[randomIndex]] = [array1[randomIndex], array1[currentIndex]];
        [array2[currentIndex], array2[randomIndex]] = [array2[randomIndex], array2[currentIndex]];
        [array3[currentIndex], array3[randomIndex]] = [array3[randomIndex], array3[currentIndex]];
    }
}

shuffle(qna.easy_questions, qna.easy_answers, qna.easy_correct_answers)
shuffle(qna.hard_questions, qna.hard_answers, qna.hard_correct_answers)

function displayQuestion(id) {
    context.clearRect(0, 0, 1800, 600);
    if(curr_question<=6){
        drawText(qna.easy_questions[curr_question], 400, 50);
    }else{
        drawText(qna.hard_questions[curr_question-7], 400, 50);
    }
}

function update() {
    if(!has_first_run_happened){
        btn1.innerText = qna.easy_answers[0][0]
        btn2.innerText = qna.easy_answers[0][1]
        btn3.innerText = qna.easy_answers[0][2]
        displayQuestion(curr_question)
        has_first_run_happened=true
    }
    if(curr_question<=9 && user_input){
        if((curr_question<=6 && user_input==qna.easy_correct_answers[curr_question]) || (curr_question>6 && user_input==qna.hard_correct_answers[curr_question-7])){
            console.log("correct answer on question", curr_question)
            correct_cnt++;
        }
        user_input=0;
        curr_question++;
        if(curr_question<=6){
            btn1.innerText = qna.easy_answers[curr_question][0]
            btn2.innerText = qna.easy_answers[curr_question][1]
            btn3.innerText = qna.easy_answers[curr_question][2]
        }else{
            btn1.innerText = qna.hard_answers[curr_question-7][0]
            btn2.innerText = qna.hard_answers[curr_question-7][1]
            btn3.innerText = qna.hard_answers[curr_question-7][2]
        }
        displayQuestion(curr_question)
        if(curr_question==10){
            $("#btn1").hide();
            $("#btn2").hide();
            $("#btn3").hide();
        }
    }
}