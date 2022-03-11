var treemap = {
    idForYes: [1, 3, 5, null, 7, null, 9, null, 11, null, 13, null, null, null, null],
    idForNo: [2, 4, 6, null, 8, null, 10, null, 12, null, 14, null, null, null, null], //na principa "shte te izpratq nakudeto tva sochi i azko sochi null nqma da se zanimavam s teb" (budget pointers)
    questions: [["Планетата газов гигант ли е?", "Планетата постоянно замръзнала ли е?", "Планетата има ли много спътници?"],
                ["Планетата има ли видни пръстени?", "Планетата има ли бледо жълт цвят?", "Планетата шеста ли е в Слънчевата система?"], ["Има ли живот на тази планета?", "Има ли течаща вода на повърхността на планетата?", "Има ли вода в атмосферата на планетата?"], 
                ["Планетата Сатурн ли е?", "Планетата Сатурн ли е?", "Планетата Сатурн ли е?"], ["Планетата най-голямата в Слънчевата система ли е?", "Планетата има ли над 60 естествени спътника?", "Планетата има ли Голямо червено петно?"], 
                ["Планетата Земя ли е?", "Планетата Земя ли е?", "Планетата Земя ли е?"], ["Планетата има ли спътници?", "Планетата най-външната от скалистите ли е?", "Има ли сезони на планетата?"],
                ["Планетата Юпитер ли е?", "Планетата Юпитер ли е?", "Планетата Юпитер ли е?"], ["Има ли сезони на планетата?", "Планетата най-далече от Слънцето ли е?", "На планетата наблюдавани ли са най-бързите ветрове в Слънчевата система?"], 
                ["Планетата Марс ли е?", "Планетата Марс ли е?", "Планетата Марс ли е?"], ["Най-близката планета до Слънцето ли е?", "Най-малката планета в Слънчевата система ли е?", "Планетата има ли метално ядро?"], 
                ["Планетата Нептун ли е?", "Планетата Нептун ли е?", "Планетата Нептун ли е?"], ["Планетата Уран ли е?", "Планетата Уран ли е?", "Планетата Уран ли е?"], 
                ["Планетата Меркурий ли е?", "Планетата Меркурий ли е?", "Планетата Меркурий ли е?"], ["Планетата Венера ли е?", "Планетата Венера ли е?", "Планетата Венера ли е?"]]
};
var curr_id=0;
var question_index=0;
var user_input=2; //-1=ne, 0=nz, 1=da
var has_first_print_happened=false;
var buttonyes=document.getElementById('buttonForYes');
var buttonno=document.getElementById('buttonForNo');
var buttonidk=document.getElementById('buttonForIDunno');

function drawText(text, x, y){
    context.fillStyle="white"
    context.font="24px Aclonica"
    context.fillText(text, x, y)
}

function change_iser_input(num){
    user_input=num
}

function displayQuestion(id) {
    context.clearRect(0, 0, window.innerWidth, window.innerHeight);
    if(question_index==3){
        drawText("Иди да прочетеш малко повече и тогава пробвай пак!", 750, 300)
        return
    }
    drawText(treemap.questions[id][question_index], 750, 300);
}

function shuffle(array) {
    var currentIndex = array.length,  randomIndex;
    
    while(currentIndex != 0) {
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex--;
        [array[currentIndex], array[randomIndex]] = [array[randomIndex], array[currentIndex]];
    }
}

for(i=0; i<treemap.questions.length; i++){
    shuffle(treemap.questions[i]);
}

function update() {
    if(!has_first_print_happened){
        drawText(treemap.questions[0][question_index], 750, 300)
        has_first_print_happened=true
    }
    if(user_input!=2 && (treemap.idForYes[curr_id] || treemap.idForNo[curr_id]) && question_index<3){
        if(user_input==1){
            curr_id=treemap.idForYes[curr_id];
            question_index=0;
            displayQuestion(curr_id);
            user_input=2;
        }
        if(user_input==-1){
            curr_id=treemap.idForNo[curr_id];
            question_index=0;
            displayQuestion(curr_id);
            user_input=2; 
        }
        if(user_input==0){
            question_index++;
            displayQuestion(curr_id);
            user_input=2; 
        }
    }
    if(!(treemap.idForYes[curr_id] || treemap.idForNo[curr_id])){
        if(user_input==-1){
            context.clearRect(0, 0, 800, 600);
            drawText("Поздравления! Ти ме победи", 750, 300)
            buttonyes.style.display="none";
            buttonno.style.display="none";
        }
        if(user_input==1){
            context.clearRect(0, 0, 800, 600);
            drawText("Аз винаги печеля!", 750, 300)
            buttonyes.style.display="none";
            buttonno.style.display="none";
        }
        buttonidk.style.display="none";
    }
}
