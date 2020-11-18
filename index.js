// fetch("http://localhost:3000/login")
// .then(parseJson)
// .then(response => {
//     const { token } = response
//     localStorage.setItem("token", token)
// })

// fetch("http://localhost:3000/workouts", {
//     method:"POST",
//     headers: {
//         "Content-Type": "application/json",
//         "Authorization": `Bearer ${localStorage.getItem("token")}`
//     },
//     body: JSON.stringify(workout) 
// })

// function logout(){
// localStorage.removeItem("token")
// } 