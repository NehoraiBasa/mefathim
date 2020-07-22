function getCookie(name) {
    var value = "; " + document.cookie;
    var parts = value.split("; " + name + "=");
    if (parts.length == 2) return parts.pop().split(";").shift();
}



function check_connect(){
    connect = getCookie("LoggedIn");
    if (connect == undefined) {
        window.location.href = "login.html";
    }
    else{
        $.post( "scripts/check_connect.py", JSON.stringify({ "cookie": connect }))
        .done(function( data ) {
            myObj = JSON.parse(data);
            
        
            if (myObj.ok == false){
                window.location.href = "login.html";
            }
        });
    }
}





 function buildnavbar(cb){
    let user_id = "";
    let objects=[];

    $.get("scripts/user_data.py", function(result){
        user_data = JSON.parse(result);
        user_id = user_data.data.id;
        
        if (user_data.ok == false) {
            window.location.href = "login.html";
        }
        user_id = user_data.data.id;
        picture_number = user_data.data.picture_number;
        if (picture_number == ""){
            picture_number = "22";
        }
        objects[0]=user_data["data"]["nickname"];
        f();
    });

    function f(){
        ourlocation = location.href.split("/").slice(-1)[0];
        objects[1]="העדפות"
        objects[2]="preferences.html";
        objects[3]="שינוי סיסמה";
        objects[4]="change_password.html";
        objects[5]="חברים";
        objects[6]="friendships.html";


        navbar='';
        logo="<a class='navbar-brand'  href='home_page.html'><img src='img/logo.png'alt='logo'id='logo' style='width:400px;height: 120px;'></a>";
        exit="<ul class='navbar-nav ml-auto' id= 'navbar' >"+
        "<li class='nav-item' ><a class='nav-link ' style='color:rgb(4, 111, 153);'href='scripts/logged_out.py'>יציאה</a></li>";
        message = "<li class='nav-item' id = 'message'> </li>";
        
        profile='<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'+objects[0]+'</a><div class="dropdown-menu dropdown-menu-right" style="text-align: center">';
        navbar+=logo+exit+message;
        for(i=1; i<objects.length-1; i+=2){
            if(objects[i+1]==ourlocation.split("?")[0]){
                continue;
            }
            profile+="<a class='dropdown-item' href="+objects[i+1]+">"+objects[i]+"</a>";
        }

        profile+="</div></li>"

        face="<div id='profile'><img src='img/avatars/"+picture_number+".png'id='face'><div id='user'class='title'></div>";

        navbar+=profile+face;
    
        var navigation = document.getElementById("nav");   
        navigation.innerHTML = navbar;
       if (typeof(cb)=='function') {
           cb();   
       }
        
        // console.log(3);
        // return 1;
    }
}

let data_conected_users;
function get_connected_users(){
    $.get("scripts/users_get.py", function(result){
        if (data_conected_users === result) {  return;  }
        data_conected_users = result;
        var users = JSON.parse(result);
        if (users.ok == false) {
          window.location.href = "login.html";
        }else {

            var faces = "<div class='.container float-right'><ul class='list-group'><li class='list-group-item users' style='text-align: center'>כרגע באתר</li>";
            id_king = users.king;
            for (x in users.data) {
                sel = users.data[x];
                img_num = sel.picture_number;
                if (img_num == null){
                    img_num = "22";
                }
                if (sel.id == users.id) {
                    faces += "<li class=' list-group-item users'><div class='float-right' style='margin-top:25px;'>"
                    + "את \/ אתה " +"</div><div class='float-left'><img src='img/avatars/"
                    +img_num+".png' style=' border-radius:50%;' class='users_face' id='face'></div></li>";
                } else {
                    faces += "<li class=' list-group-item users'><div class='float-right' style='margin-top:25px;'>"
                    + sel.nickname +"</div><div class='float-left'><img src='img/avatars/"
                    +img_num+".png' style=' border-radius:50%;' class='users_face' id='face'></div></li>";
                }
            }
            faces += "</ul></div>"
            $("#now_logged").html(faces);
        }
    });
}

let data_posts="";
function print_post() {
    $.get("scripts/get_posts.py", function(data){
        
        if (data_posts === data) {
            return;  
        }
        data_posts=data;
    let all_posts = JSON.parse(data);
    if (all_posts.ok == false) {
        window.location.href = "login.html";
        }
    
    $(".posts").empty();  
    for (x in all_posts.data)
    {
        let sel = all_posts.data[x];
        text = sel.text;
        text = escape_tags(text);
        text = linkify(text);
        let id = sel.post_id;
        /////////////https://stackoverflow.com/questions/6525538/convert-utc-date-time-to-local-date-time////
        let d = new Date(sel.writing_time);
        function convertUTCDateToLocalDate(date) {
            let newDate = new Date(date.getTime()+date.getTimezoneOffset()*60*1000);
        
            let offset = date.getTimezoneOffset() / 60;
            let hours = date.getHours();
        
            newDate.setHours(hours - offset);
        
            return newDate;   
        }
        let local_time = convertUTCDateToLocalDate( new Date(sel.writing_time));
        local_time = local_time.toLocaleString();
        if (sel.owner==false){
            let post = $("<div class=' show_post' id='container_post"+id+"'>"+
                            "<div style='background-color: ;'>"+
                                "<p class='details'>    מאת: "+ sel.nickname +"  |   "+ local_time +"</p>"+
                                "<p class='post container'> "+ text +"</p>"+
                                "<div id ='button_container' >"+
                                    "<button class='post_button'  id='hide_post_btn'>הסתר</button>"+
                                "</div>"+
                            "</div>"+
                        "</div>");
                $(".posts").append(post);

                $('#container_post'+id+'').find('#hide_post_btn').click(function() {
                    let pid = sel.post_id;
                    confirm_hide(pid);                
                });

        }
         else{
           
            let post =$("<div class=' show_post' id='container_post"+id+"'>"+
                            "<div  id='show_post"+id+"' style='background-color: ;'>"+
                                "<p class='details'>  מאת: "+ sel.nickname +"  |   "+ local_time +"</p>"+
                                "<p id='post'class='text'> "+ text +"</p>"+
                                "<div id ='button_container' >"+
                                    "<button class='post_button'  id='delete_post"+id+"'>מחק</button>"+
                                    "<button class='post_button'  id='edit_post"+id+"'>ערוך </button>"+
                                    
                                    
                                "</div>"+
                            "</div>"+
                        "<div>");
            $(".posts").append(post);
              
            $('#delete_post'+id+'').click(function(){
                
           
                confirm_dlete(id);
                      
            });
            $('#edit_post'+id+'').click(function(){
               

                edit_post(id,sel);

                      
            });
            
        }    
    }

});
}

function delete_post(id) {

    $.post("scripts/delete_post.py",
        {
        post_id: id,
        
        }, function(){
            print_post();
        });
       
}

function update_post(id,post_text) {
    
    $.post("scripts/update_post.py",
        {
        post_id: id,
        text: post_text,
        circulation : $('#container_post'+id+'').find( "#circulation").val() ,
        }, function(){
            print_post();
            set_refresh();
        });
}

function edit_post(id,sel) {
    stop_refresh();
    let val = sel.text;
    let write_post=$('<div class="container" id="container_edit_post" ">'+
                        '<textarea class="new_post " id="new_text" placeholder="פרסם פוסט" >'+val+'</textarea><br>'+   
                        "<div  class='row' >"+                 
                            '<button  class="post_button"  id="send">שלח</button>'+
                            '<button  class="post_button"  id="cancel">בטל</button>'+
                            '<p>'+
                            '   <p style=" margin-left: 3px; margin-right: 16px;" >תפוצה: </p>'+
                            '   <select  id="circulation"  style="height: min-content; padding: 2px; width: 95px">'+
                            '       <option value="0">רק אני</option>'+
                            '       <option value="1"  >החברים</option>'+
                            '       <option value="2">כולם</option>'+
                            '   </select>'+
                            '</p>'+
                        "</div>"+

                       
                    '</div>');
    // $("div.id_100 select").val("val2");
    console.log(sel.circulation)
    let c =sel.circulation;
   
    $('#container_post'+id+'').find('#post').hide();
    $('#container_post'+id+'').find('#button_container').hide(); 
    $('#container_post'+id+'').append ($(write_post));
    $('#container_post'+id+'').find( "#circulation").val(c) ;
    $('#container_post'+id+'').find('#cancel').click(function() {
            $('#container_post'+id+'').find('#post').show();
            $('#container_post'+id+'').find('#button_container').show(); 
            $('#container_post'+id+'').find('#container_edit_post').remove();
            set_refresh();
    });
    $('#container_post'+id+'').find('#send').click(function() {
        val=  $('#container_post'+id+'').find('#new_text').val(),
        
        confirm_edit(id,val);                
    });

}


function confirm_dlete(id)
{
    stop_refresh();
    let a =$(''+
    '<div  class="modal confirm_box">'+
        '<div class="confirm_container">'+
            '<h1>מחיקת פוסט</h1>'+
            '<p>אתה בטוח?</p>'+
            '<div class="clearfix">'+
                '<button type="button" id="cancel_del" class="cancelbtn">לא</button>'+
                '<button type="button" id = "del_post" class="deletebtn">כן אני בטוח</button>'+
            '</div>'+
        '</div>'+
    '</div>');
    $( 'body' ).append(a);
    $(".confirm_box").show();    
    $('#cancel_del').click(function() {
        $(".confirm_box").remove();
        set_refresh();
    });
    $('#del_post').click(function() {
        delete_post(id);
        $(".confirm_box").remove();
        set_refresh();
    });
}

function confirm_edit(id,val)
{
    stop_refresh();
    let a =$(''+
    '<div  class="modal confirm_box">'+
        '<div class="confirm_container">'+
        '<h1>עריכת פוסט</h1>'+
        '<p>אתה בטוח?</p>'+
        '<div class="clearfix">'+
            '<button type="button" id="cancel_edit" class="cancelbtn">לא</button>'+
            '<button type="button" id = "send_edit" class="deletebtn">כן אני בטוח</button>'+
        '</div>'+
        '</div>'+
    '</div>');
    $( 'body' ).append(a);
    $(".confirm_box").show();    
    $('#cancel_edit').click(function() {
        $(".confirm_box").remove();
       
    });
    $('#send_edit').click(function() {
        update_post(id,val);
        $(".confirm_box").remove();
        set_refresh()
    });
}

function confirm_hide(pid)
{
    stop_refresh();
    let a =$(''+
    '<div  class="modal confirm_box">'+
        '<div class=" confirm_container">'+
        '<h1>הסתרת פוסט</h1>'+
        '<p>אתה בטוח?<br>לא תוכל לבטל פעולה זו בעתיד </p>'+
        '<div class="clearfix">'+
            '<button type="button" id="cancel" class="cancelbtn">לא</button>'+
            '<button type="button" id = "hide_post" class="deletebtn">כן אני בטוח</button>'+
        '</div>'+
        '</div>'+
    '</div>');
    $( 'body' ).append(a);
    $(".confirm_box").show();    
    $('.cancelbtn').click(function() {
        $(".confirm_box").remove();
    });
    $('#hide_post').click(function() {
        hide_post(pid);
        $(".confirm_box").remove();
        set_refresh()
    });
}


function hide_post(pid){
    $.post("scripts/hide_post.py",
    {
    post_id:pid,
    
    }, function(){
        print_post();
    });

}



var interval;
function set_refresh(){
    interval = setInterval( refresh , 5000);
}
function stop_refresh(){
    clearInterval(interval);
}
function refresh()
{
    print_post();
    get_connected_users() ;
    num_friend_requests();

}
var interval_f;
function set_refresh_f(){
    interval_f = setInterval(refresh_friendsships_p , 5000);
}
// function stop_refresh_f(){
//     clearInterval(interval_f);
// }
 function refresh_friendsships_p(){
    get_all_users();
    
}



function linkify(text) {
    text = String(text);

    var urlRegex = /https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)/g;
    
    return text.replace(urlRegex, function(url) {
        return '<a href="' + url + '">' + url + '</a>';
    });
}




function escape_tags(text) {

    text = String(text);

    let tagRegex = /(<)/g; 
    text = text.replace(tagRegex,"&lt")
    tagRegex = /(>)/g;
    text = text.replace(tagRegex,"&gt")
    return text;
  
}

let data_u;
function get_all_users(){
    $.get("scripts/get_all_users.py", function(result){
        if(data_u==result){return;}
        data_u=result;
        if (data_conected_users === result) {  return;  }
        // data_conected_users = result;
        let users = JSON.parse(result);
        if (users.ok == false) {
          window.location.href = "login.html";
        }else {
            $("#all_users").empty();
            $("#my_requests").empty();
            $("#users_pending_container").empty();
            $("#my_friends").empty();
            // let faces = "<div class='.container float-right'><ul class='list-group'><li class='list-group-item users' style='text-align: center'>כל המשתמשים</li>";
             let user;
            for (x in users.data) {

                sel = users.data[x];
                let id = sel.id;
                img_num = sel.picture_number;
                if (img_num == null){
                    img_num = "22";
                }

                if (sel.id == users.id) {
                    continue;
                }else  if(sel.status == null ) {

                    user = "<div class=' ' id = 'user"+id+"'   style='width:160px'>"+
                                    "<div class=' user_card row' >"+
                                    "<div class='col-8 text-top'>"+
                                        "<img src='img/avatars/"+img_num+".png' alt='Avatar' style='width:100%'>"+
                                        "<div style='width:100%;text-align: center;'>"+
                                            "<h7><b>" + sel.nickname +" </b></h7>"+
                                        "</div>"+
                                    "</div>"+
                        
                                    "<div class='col-4 text-top'>"+
                                        "<button class=' post_button'  id='friend_request' >הצע חברות</button>"+
                                    "</div>"+
                                "</div>"+
                            "</div>";
                
            
                $("#all_users").append(user);
                }else if (sel.status == 1 && sel.friend1==users.id){
                    user = "<div class=' ' id = 'user"+id+"'   style='width:160px'>"+
                                    "<div class=' user_card row' >"+
                                        "<div class='col-8 text-top'>"+
                                            "<img src='img/avatars/"+img_num+".png' alt='Avatar' style='width:100%'>"+
                                            "<div style='width:100%;text-align: center;'>"+
                                                "<h7><b>" + sel.nickname +" </b></h7>"+
                                            "</div>"+
                                        "</div>"+
                                        "<div class='col-4 text-top'>"+
                                           
                                            "<button class=' post_button'  id='cancel_request' >בטל בקשה</button>"+
                                         "</div>"+                    
                                "</div>"+
                            "</div>";
                        $("#my_requests").append(user);
                }else if (sel.status == 1 && sel.friend1 != users.id){
                    user = "<div class=' ' id = 'user"+id+"'   style='width:160px'>"+
                    "<div class=' user_card row' >"+
                    "<div class='col-8 text-top'>"+
                        "<img src='img/avatars/"+img_num+".png' alt='Avatar' style='width:100%'>"+
                        "<div style='width:100%;text-align: center;'>"+
                            "<h7><b>" + sel.nickname +" </b></h7>"+
                        "</div>"+
                    "</div>"+
        
                    "<div class='col-4 text-top'>"+
                        "<button class=' post_button'  id='confirm_friend_request' >אשר חברות</button>"+
                        "<button class=' post_button'  id='reject_request' >דחה הצעה</button>"+
                    "</div>"+
                "</div>"+
            "</div>";


            $("#users_pending_container").append(user);

                }else if (sel.status == 2 ){
                    
                    user = "<div class=' ' id = 'user"+id+"'   style='width:160px'>"+
                                    "<div class=' user_card row' >"+
                                    "<div class='col-8 text-top'>"+
                                        "<img src='img/avatars/"+img_num+".png' alt='Avatar' style='width:100%'>"+
                                        "<div style='width:100%;text-align: center;'>"+
                                            "<h7><b>" + sel.nickname +" </b></h7>"+
                                        "</div>"+
                                    "</div>"+
                                    "<div class='col-4 text-top'>"+
                                           
                                    "<button class=' post_button'  id='remove_friend' >בטל חברות</button>"+
                                 "</div>"+
                    
                                "</div>"+
                            "</div>";
             
            
                    $("#my_friends").append(user);
                }
                 
                $("#user"+id+"").find('#friend_request').click(function() {
                    confirm("הצעת חברות",()=>{send_friend_request(id)})
                                    
                });
                $("#user"+id+"").find('#cancel_request').click(function() {
                    confirm("ביטול הצעת חברות",()=>{remove_friend(id),set_refresh_f()})
                    // confirm_friend_request(id);               
                });
                $("#user"+id+"").find('#confirm_friend_request').click(function() {
                    confirm("אישור הצעת חברות",()=>{confirm_friend_request(id),set_refresh_f()})
                    // confirm_friend_request(id);               
                });
                $("#user"+id+"").find('#reject_request').click(function() {
                    confirm("דחית הצעת חברות",()=>{remove_friend(id),set_refresh_f()})
                    // confirm_friend_request(id);               
                });
                $("#user"+id+"").find('#remove_friend').click(function() {
                    confirm("ביטול חברות",()=>{remove_friend(id),set_refresh_f()})
                                 
                });
               
              
            }   
             
        }
    });
}




function send_friend_request(friend_id) {
    
    $.post("scripts/send_friend_request.py",
        {
        friend_id: friend_id,
        }, function(){
            refresh_friendsships_p();
        });
}
function confirm_friend_request(friend_id) {
    
    $.post("scripts/confirm_friend_request.py",
        {
        friend_id: friend_id,
        }, function(){
            refresh_friendsships_p();
        });
}

let num_r;
function num_requests(cb) {
    $.get("scripts/num_requests.py",
         function(result){
             if (num_r==result) {
                 return;
             }
             num_r=result;
           
            result =  JSON.parse(result);
            let num = result.num;
            // console.log(result.num);
            // return result.num;
            cb(num);
            
        });
       
}


function num_friend_requests(){
    num_requests((num)=>{
            if (num>0){
                let m="";
                if (num==1){m="יש לך בקשת חברות אחת";}
                else if (num==2){m="יש לך שתי בקשות חברות ";}
                else if (num==3){m="יש לך שלש בקשות חברות";}
                else {m = " יש לך "+ num +" בקשות חברות"}
                m ="<a class='nav-link ' style='color:rgb(4, 111, 153);' href='friendships.html'>"+m+" </a>"
                buildnavbar(()=>{$("#message").append(m) ;});
            }
        });
    }

    
function remove_friend(friend_id) {
    
    $.post("scripts/remove_friend.py",
        {
        friend_id: friend_id,
        }, function(){
            refresh_friendsships_p();
        });
}

function confirm(massage,f)
{
    stop_refresh();
    let a =$(''+
    '<div  class="modal confirm_box">'+
        '<div class=" confirm_container">'+
        '<h1>'+massage+'</h1>'+
        '<p>אתה בטוח? </p>'+
        '<div class="clearfix">'+
            '<button type="button" id="cancel" class="cancelbtn">לא</button>'+
            '<button type="button" id = "confirmed" class="deletebtn">כן אני בטוח</button>'+
        '</div>'+
        '</div>'+
    '</div>');
    $( 'body' ).append(a);
    $(".confirm_box").show();    
    $('.cancelbtn').click(function() {
        $(".confirm_box").remove();
    });
    $('#confirmed').click(function() {
        f();
        $(".confirm_box").remove();
        
    });
}

function confirm_picture(alt)
{
    stop_refresh();
    let a =$(''+
    '<div  class="modal confirm_box">'+
        '<div class=" confirm_container">'+
        '<h1>שינוי תמונה</h1>'+
        '<p>האם אתה בטוח? </p>'+
        '<div class="clearfix">'+
            '<button type="button" id="cancel" class="cancelbtn">לא</button>'+
            '<button type="button" id = "confirmed" class="deletebtn">כן אני בטוח</button>'+
        '</div>'+
        '</div>'+
    '</div>');
    $( 'body' ).append(a);
    $(".confirm_box").show();    
    $('.cancelbtn').click(function() {
        $(".confirm_box").remove();
    });
    $('#confirmed').click(function() {
        choose_picture(alt);
        $(".confirm_box").remove();
        
    });
}

function choose_picture(alt){
    data = {num_picture : alt};
    data_to_json = JSON.stringify(data);
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function(){
        if(this.readyState == 4){
            data_from_json = JSON.parse(this.responseText);
            if(data_from_json.data["sucsses"]){
                var img = "<img style='height:100%; width:100%;'src="+"img/avatars/";
                img += alt + ".png"+">";
                document.getElementById("current_img").innerHTML = img;
                document.getElementById("msg").innerHTML = "התמונה שלך שונתה בהצלחה!!"
            }

        }
    }
    xmlhttp.open("POST", "scripts/select_avatar.py", true);
    xmlhttp.send(data_to_json);
}