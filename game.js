var treemap = {
    idForYes: [1, 3, 5, 7, 9, 11, 13, null, null, null, null, null, null, null, null],
    idForNo: [2, 4, 6, 8, 10, 12, 14, null, null, null, null, null, null, null, null], //na principa "shte te izpratq nakudeto tva sochi i azko sochi null nqma da se zanimavam s teb" (budget pointers)
    questions: [["1 1", "1 2", "1 3"],
                ["1 y 1", "1 y 2", "1 y 3"], ["1 n 1", "1 n 2", "1 n 3"], 
                ["1 yy 1", "1 yy 2", "1 yy 3"], ["1 yn 1", "1 yn 2", "1 yn 3"], 
                ["1 ny 1", "1 ny 2", "1 ny 3"], ["1 nn 1", "1 nn 2", "1 nn 3"],
                ["1 yyy 1", "1 yyy 2", "1 yyy 3"], ["1 yyn 1", "1 yyn 2", "1 yyn 3"], 
                ["1 yny 1", "1 yny 2", "1 yny 3"], ["1 ynn 1", "1 ynn 2", "1 ynn 3"], 
                ["1 nyy 1", "1 nyy 2", "1 nyy 3"], ["1 nyn 1", "1 nyn 2", "1 nyn 3"], 
                ["1 nny 1", "1 nny 2", "1 nny 3"], ["1 nnn 1", "1 nnn 2", "1 nnn 3"]] //nqma gi samite vuprosi oshte, ta tva e filler-a
};
var curr_id=0, question_index=0, user_input=2;

function drawText(text, x, y){
    context.fillStyle="black"
    context.font="24px Aclonica"
    context.fillText(text, x, y)
}

function change_iser_input(num){
    user_input=num //-1=ne, 0=ddz, 1=da, 2=mezhdinno dokato nishto ne e natisnato
}

function displayQuestion(id) {
    context.clearRect(0, 0, window.innerWidth, window.innerHeight);
    if(question_index==3){
        drawText("procheti malko poveche purvo pls", 500, 100)
        return
    }
    drawText(treemap.questions[id][question_index], 500, 100);
}

function update() {
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
}
