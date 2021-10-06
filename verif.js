function verif(){
    cin=document.getElementById("cin");
    prn=document.getElementById("prn");
    nom=document.getElementById("nom");
    select=document.getElementById("select");
    var é_c=document.getElementsByName("état_civil");
    Nef=document.getElementById("Nef")
    if(isNaN(cin.value)){
        alert("il faut un nombre");
        return 0;
    }
    if(cin.value.length<8 || cin.value==""){
        alert("il ya probleme nombre doit contenir 8 chiffre");
        return 0;
    }
    alert(cin.value[0]);
    if(cin.value[0]==0 || cin.value[0]==1 ){
              
    }else{
        alert("il ya dans le premier char"); 
        return 0;   

    }
    if(nom.value=="" || prn.value==""){
        alert("il ya probleme dans le nom ou prenom");
        return 0;

    }
    // alert(é_c.value)

    // if(é_c.value==null){
    //     alert("il ya probleme il faut choisir état civil");
    // }
    var c=0;
    for(i=0;i<é_c.length;i++){
        if(é_c[i].checked){
            alert(é_c[i].value);
            var x=é_c[i].value;
            c++;
        }
        if(c==0){
            alert("il faut cocher un état civil")
            return 0;
        }
    }
    
    if(Nef.value<0 || Nef.value==""){
        alert("il ya probleme nombre d enfant faut ètre positive ou null");
        return 0;

    }
    
    if(Nef.value>0 && x=="célibataire"){
        alert("il ya probleme célibataire n'a pas d'enfants");
        return 0;

    }
    alert(select.value);
    
}