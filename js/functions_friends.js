
function num_friend_requests(){
    num_of_requests((num)=>{
            if (num>0){
                let m="";
                if (num==1){m="יש לך בקשת חברות אחת";}
                else if (num==2){m="יש לך שתי בקשות חברות ";}
                else if (num==3){m="יש לך שלש בקשות חברות";}
                else {m = " יש לך "+ num +" בקשות חברות"}
                m ="<a class='nav-link active'href='friendships.html'>"+m+" </a>"
                buildnavbar(()=>{$("#message").append(m) ;});
            }
        });
    }