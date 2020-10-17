(()=>{

    //make an AJAX request using Fetch API
    fetch('./data/data.json')
      .then(res => res.json())
      .then(data =>{
    
           debugger;
    
        console.log(data);
    
        handleClassData(data);
    
      })
        function handleClassData (data) {
           let userPronoun = document.querySelector('.banner .user-pronoun'),
            userName = document.querySelector('.banner .user-name'),
            userSurname = document.querySelector('.banner .user-surname'),
            userRole = document.querySelector('.banner .user-role');

    
            userPronoun.innerHTML = data.pronoun;
            userName.innerHTML = data.name;
            userSurname.innerHTML = data.surname;
            userRole.innerHTML = data.role
    
            }
    
    
    
    //.catch((err) =>{
    //console.log(err);
    //})
    
    })();