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





function buildnavbar(){
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
        logo="<a class='navbar-brand'href='home_page.html'><img src='img/logo.png'alt='logo'id='logo' style='width:400px;height: 120px;'></a>";
        exit="<ul class='navbar-nav ml-auto'><li class='nav-item'><a class='nav-link active'href='scripts/logged_out.py'>יציאה</a></li>";
        profile='<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'+objects[0]+'</a><div class="dropdown-menu dropdown-menu-right" style="text-align: center">';
        
        navbar+=logo+exit;
    
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
                        "</div>"+
                    '</div>');

    $('#container_post'+id+'').find('#post').hide();
    $('#container_post'+id+'').find('#button_container').hide(); 
    $('#container_post'+id+'').append ($(write_post));
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
    interval = setInterval( refresh , 10000);
}
function stop_refresh(){
    clearInterval(interval);
}
function refresh()
{
    print_post();
    get_connected_users() ;

}
var interval_f;
function set_refresh_f(){
    interval_f = setInterval(refresh_friendsships_p , 10000);
}
// function stop_refresh_f(){
//     clearInterval(interval_f);
// }
// function refresh_friendsships_p()
{
    get_all_users();
    get_pending_requests();
    get_friends();
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
function get_friends(){
    $.get("scripts/get_friends.py", function(result){
        let users = JSON.parse(result);
        if (users.ok == false) {
          window.location.href = "login.html";
        }else {
            $("#my_friends").empty();
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
                } else {

                    user = "<div class=' ' id = 'user"+id+"'   style='width:160px'>"+
                                    "<div class=' user_card row' >"+
                                    "<div class='col-8 text-top'>"+
                                        "<img src='img/avatars/"+img_num+".png' alt='Avatar' style='width:100%'>"+
                                        "<div style='width:100%;text-align: center;'>"+
                                            "<h7><b>" + sel.nickname +" </b></h7>"+
                                        "</div>"+
                                    "</div>"+
                        
                                    // "<div class='col-4 text-top'>"+
                                    //     "<button class=' post_button'  id='friend_request' ></button>"+
                                    // "</div>"+
                                "</div>"+
                            "</div>";
                }
            
                $("#my_friends").append(user);
            
                // $("#user"+id+"").find('#friend_request').click(function() {
                    
                //     send_friend_request(id)                
                // });
            }    
        }
    });
}

function get_all_users(){
    $.get("scripts/get_all_users.py", function(result){
        if (data_conected_users === result) {  return;  }
        // data_conected_users = result;
        let users = JSON.parse(result);
        if (users.ok == false) {
          window.location.href = "login.html";
        }else {
            $("#all_users").empty();
            $("#my_requests").empty();
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
                }else  if(sel.status == null) {

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
                        
                                    // "<div class='col-4 text-top'>"+
                                    //     "<button class=' post_button'  id='friend_request' >הצע חברות</button>"+
                                    // "</div>"+
                                "</div>"+
                            "</div>";
                        $("#my_requests").append(user);
                }
                $("#user"+id+"").find('#friend_request').click(function() {
                    
                    send_friend_request(id)                
                });
                // if (sel.status > 0 ) {
                //     $("#user"+id+"").find('#friend_request').attr("disabled", true).css('opacity',0.5);
                    
                // }
            }    
        }
    });
}


function get_pending_requests(){
    $.get("scripts/get_pending_requests.py", function(result){
        if (data_conected_users === result) {  return;  }
        // data_conected_users = result;
        let users = JSON.parse(result);
        if (users.ok == false) {
          window.location.href = "login.html";
        }else {
            $("#users_pending_container").empty();
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
                } else {

                    user = "<div class=' ' id = 'pending_user"+id+"'   style='width:160px'>"+
                                    "<div class=' user_card row' >"+
                                    "<div class='col-8 text-top'>"+
                                        "<img src='img/avatars/"+img_num+".png' alt='Avatar' style='width:100%'>"+
                                        "<div style='width:100%;text-align: center;'>"+
                                            "<h7><b>" + sel.nickname +" </b></h7>"+
                                        "</div>"+
                                    "</div>"+
                        
                                    "<div class='col-4 text-top'>"+
                                        "<button class=' post_button'  id='friend_request' >אשר חברות</button>"+
                                    "</div>"+
                                "</div>"+
                            "</div>";
                }
            
                $("#users_pending_container").append(user);
            
                $("#pending_user"+id+"").find('#friend_request').click(function() {
                    
                    confirm_friend_request(id);               
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