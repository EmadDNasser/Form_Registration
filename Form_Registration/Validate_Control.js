function Check1() {
    var FN = document.getElementById("T1");
    if (FN.value == "") {
        alert("You must enter you're First Name");
        FN.select();
        FN.focus();
        return false;
    }
}
function Check2() {
    var MI = document.getElementById("T2");
    if (MI.value == "") {
        alert("You must enter you're Middle Initial");
        MI.select();
        MI.focus();
        return false;
    }
}
function Check3() {
    var LN = document.getElementById("T3");
    if (LN.value == "") {
        alert("You must enter you're Last Name");
        LN.select();
        LN.focus();
        return false;
    }
}
function Check4() {
    var CY = document.getElementById("T4");
    if (CY.value == "") {
        alert("You must enter the City");
        CY.select();
        CY.focus();
        return false;
    }
}
function Check5() {
    var UN = document.getElementById("T7");
    if (UN.value == "") {
        alert("You must enter your Username");
        UN.select();
        UN.focus();
        return false;
    }
}
function Check6() {
    var PAS = document.getElementById("Pas1");
    if (PAS.value == "") {
        alert("You must enter your a Password");
        PAS.select();
        PAS.focus();
        return false;
    }
}
function PassMatch() {
    var pas1 = document.getElementById("Pas1");
    var pas2 = document.getElementById("Pas2");
    if (pas1.value != pas2.value) {
        alert("Passwords didn't match !")
        pas1.select();
        pas1.focus();
        return false;
    }
}
function chkbox() {
    var c = document.getElementById("Checkbox1");
    if (c.checked) {
        return true;
    }
    else {
        alert("Check Box to continue !")
        c.select();
        c.focus();
        return false;
    }
}
function Midll() {
    var str = document.getElementById("T2");
    if (str.value.length > 1) {
        alert("You must enter one Letter ! ")
        str.select();
        str.focus();
        return false
    }
}
function zibcheck() {
    var z = document.getElementById("T5");
    if (z.value.length >= 5 && z.value.length <= 10) {
        return true;
    }
    else {
        alert("Zib field must be between 5 to 10");
        z.select();
        z.focus();
        return false;
    }
}
function ValidateEmail(Text) {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (Text.value.match(mailformat)) {
        return true;
    }
    else {
        alert("You have entered an invalid email address!");
        Text.focus();
        return false;
    }
}
function texterea() {
    var ta = document.getElementById("TextArea1");
    if (ta.value.length > 100) {
        alert("There are more than 100 letters.\n We're sorry we delete them.\nAnd the acceptable text is:\n" + ta.value.slice(0, 100).toString());
        ta.value = ta.value.slice(0, 100);
    }
}