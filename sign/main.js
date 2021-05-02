document.addEventListener("DOMContentLoaded",()=>{
    const loginForm = document.querySelector("#login");
    const createAccountForm = document.querySelector("#CreateAccount");
    
    document.querySelector("#linkCreateAccount").addEventListener("click", e =>{
        e.preventDefault();
        loginForm.classList.add("form--hidden");
        createAccountForm.classList.remove("form--hidden");

    });

    document.querySelector("#linkLogin").addEventListener("click", () =>{
        loginForm.classList.remove("form--hidden");
        createAccountForm.classList.add("form--hidden");

    });
});