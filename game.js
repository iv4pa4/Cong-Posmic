var treemap = {
    idForYes: [1, 3, 5, null, 7, null, 9, null, 11, null, 13, null, null, null, null],
    idForNo: [2, 4, 6, null, 8, null, 10, null, 12, null, 14, null, null, null, null], //na principa "shte te izpratq nakudeto tva sochi i azko sochi null nqma da se zanimavam s teb" (budget pointers)
    questions: [["1 1", "1 2", "1 3"],
                ["5 1", "5 2", "5 3"], ["2 1", "2 2", "2 3"], 
                ["Saturn 1", "Saturn 2", "Saturn 3"], ["6 1", "6 2", "6 3"], 
                ["Zemq 1", "Zemq 2", "Zemq 3"], ["3 1", "3 2", "3 3"],
                ["Jupiter 1", "Jupiter 2", "Jupiter 3"], ["7 1", "7 2", "7 3"], 
                ["Mars 1", "Mars 2", "Mars 3"], ["4 1", "4 2", "4 3"], 
                ["Neptun 1", "Neptun 2", "Neptun 3"], ["Uran 1", "Uran 2", "Uran 3"], 
                ["Merkurii 1", "Merkurii 2", "Merkurii 3"], ["Venera 1", "Venera 2", "Venera 3"]] //chakame vuproscheta ^-^
};
var curr_id=0;
var question_index=0;
var user_input=2; //-1=ne, 0=nz, 1=da
var has_first_print_happened=false;
var buttonyes=document.getElementById('buttonForYes');
var buttonno=document.getElementById('buttonForNo');
var buttonidk=document.getElementById('buttonForIDunno');

function drawText(text, x, y){
    context.fillStyle="black"
    context.font="24px Aclonica"
    context.fillText(text, x, y)
}

function change_iser_input(num){
    user_input=num
}

function displayQuestion(id) {
    context.clearRect(0, 0, window.innerWidth, window.innerHeight);
    if(question_index==3){
        drawText("procheti malko poveche purvo pls", 200, 100)
        return
    }
    drawText(treemap.questions[id][question_index], 200, 100);
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
        drawText(treemap.questions[0][question_index], 200, 100)
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
            drawText("ti pechelish", 200, 100)
            buttonyes.style.display="none";
            buttonno.style.display="none";
        }
        if(user_input==1){
            context.clearRect(0, 0, 800, 600);
            drawText("az pechelq", 200, 100)
            buttonyes.style.display="none";
            buttonno.style.display="none";
        }
        buttonidk.style.display="none";
    }
}
