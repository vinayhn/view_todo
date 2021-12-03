function del_task(id) {
    
    task_id = parseInt(id);
    console.log(task_id);

    task_del = new XMLHttpRequest();
    task_del.open("POST", "http://localhost:3021/id?id=" +task_id+ " ", true);
    task_del.send();
    document.getElementById(id).remove();
    return;
}
// for adding task dynamically through ajax call    
// function add_task_form(tasks){
//     var form = document.createElement("form");
//     form.setAttribute("method", "post");
//     form.setAttribute("action", "add_new_task");
//     form.setAttribute("id", "add_new_task_form_id");

//     var title = document.createElement("input");
//     title.setAttribute("type", "text");
//     title.setAttribute("Title", "task_title");
//     title.setAttribute("placeholder", "task_title");
//     title.setAttribute("id", "task_title");

//     var description = document.createElement("input");
//     description.setAttribute("type", "text");
//     description.setAttribute("Description", "description");
//     description.setAttribute("placeholder", "description");
//     description.setAttribute("id", "description");

//     var s = document.createElement("input");
//     s.setAttribute("type", "submit");
//     s.setAttribute("value", "Add task");
//     s.setAttribute("style", "cursor: pointer");
//     s.setAttribute("id", "new_task");

//     form.append(title); 
//     form.append(" ");
//     form.append(description); 
//     form.append(" "); 
//     form.append(s); 
    
//     document.getElementById("add_task_form").appendChild(form);
//     // /document.getElementById('add_button').style.visibility = 'visible';
//     document.getElementById('bck_lnk').style.visibility = 'visible'; 
    
//     document.getElementById("new_task").addEventListener("click", function(){
//     add_new_task_func(tasks);
//     });
    
// }


// function add_new_task_func(passing_tasks_param){ 
//     document.getElementById('add_new_task_form_id').style.visibility = 'hidden ';
//     document.getElementById('bck_lnk').style.visibility = 'visible';
    
//     add_new_task = new XMLHttpRequest();
//     add_new_task.open("POST", "http://localhost:3021/add_new_task", true);
//     add_new_task.setRequestHeader("Content-Type", "application/json");
//     var data = {task_title: document.getElementById("task_title").value, description: document.getElementById("description").value};
//     add_new_task.send(JSON.stringify(data));
    
//     //document.getElementById("task_table_body").remove();
//     ajax_call_for_view_taks(); 
//     location.reload(); 
    
// } 

// function ajax_call_for_view_taks(){ 
//     view_all_tasks_variable = new XMLHttpRequest();
//     view_all_tasks_variable.open("GET", "http://localhost:3021/view_tasks");
//     if (this.status === 200){
//         view_all_tasks_variable.onload = function (){
    
//           obj = JSON.parse(this.responseText);
//           print_tasks(obj);        }
    
//     } 
//     else{
//        console.log("not a proper response");
//     }
//     view_all_tasks_variable.send();   
     
//     return;
// }


// function print_tasks(load_all_tasks){
//     for(i=0; i<load_all_tasks.length;i++){
//         var tdd = load_all_tasks[i];
//         add_new_rows(tdd);
//     }
// }
// function add_new_rows(one_task_data){
//     var table_body = document.getElementById("task_table_body"); 
//     var tr = document.createElement('TR');
//     //tr.setAttribute("class" ,"table_rows");
//     tr.setAttribute("id" ,one_task_data["id"]);
//     table_body.appendChild(tr);
    
//     var td_task_id = document.createElement('TD');
//     td_task_id.appendChild(document.createTextNode(one_task_data['id'])); 
//     tr.appendChild(td_task_id);
    
//     var td_title = document.createElement('TD');
//     // let title_data = document.getElementById("task_title").value; 
//     td_title.appendChild(document.createTextNode(one_task_data["task_title"])); 
//     tr.appendChild(td_title);
//     var bold = document.createElement('B');
//     var td_bold = document.createElement('TD');
//     var bold_td = td_bold.appendChild(bold);
//     bold_td.appendChild(document.createTextNode(" - ")); 
//     tr.appendChild(bold_td);
    
//     var td_description = document.createElement('TD');
//     //let description_data = document.getElementById("description").value; 
//     td_description.appendChild(document.createTextNode(one_task_data["description"]));
//     tr.appendChild(td_description);
    
//     var bold = document.createElement('B');
//     var td_bold = document.createElement('TD');
//     var bold_td = td_bold.appendChild(bold);
//     bold_td.appendChild(document.createTextNode(" - ")); 
//     tr.appendChild(bold_td);
    
//     var td_status = document.createElement('TD');
//     td_status.appendChild(document.createTextNode(one_task_data["status"])); 
//     tr.appendChild(td_status);
    
//     var bold = document.createElement('B');
//     var td_bold = document.createElement('TD');
//     var bold_td = td_bold.appendChild(bold);
//     bold_td.appendChild(document.createTextNode(" - ")); 
//     tr.appendChild(bold_td);
    
//     var td_edit = document.createElement('TD');
//     td_edit.appendChild(document.createTextNode("edit ")); 
//     tr.appendChild(td_edit);
    
//     var bold = document.createElement('B');
//     var td_bold = document.createElement('TD');
//     var bold_td = td_bold.appendChild(bold);
//     bold_td.appendChild(document.createTextNode(" | ")); 
//     tr.appendChild(bold_td);
    
//     var td_delete = document.createElement('TD');
//     var button = document.createElement('BUTTON');
//     button.setAttribute("onclick", "del_task(one_task_data['id'])" );
//     td_delete.appendChild(button);
    
//     button.appendChild(document.createTextNode("Delete ")); 
//     tr.appendChild(td_delete);
    
//     //document.getElementById('add_new_task_form_id').style.display = "none";
//     //document.getElementById('add_new_task_form_id').reset();
//     //document.getElementById('add_button').style.visibility = 'visible';
// }    

    
    
