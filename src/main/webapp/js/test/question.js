function switchLanguage() {
    var name = document.getElementById("languageName");
    var description = document.getElementById("languageDescription");
    var code = document.getElementById("code");
    var index = name.selectedIndex;
    switch (name.options[index].value) {
        case "java":
            description.innerHTML = "语言：Java";
            code.innerHTML = document.getElementById("javaCode").innerHTML;
            break;
        case "cpp":
            description.innerHTML = "语言：C++";
            code.innerHTML = document.getElementById("cppCode").innerHTML;
            break;
        case "python":
            description.innerHTML = "语言：Python";
            code.innerHTML = document.getElementById("pythonCode").innerHTML;
            break;
    }
}