<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PastaQuizPage.aspx.cs" Inherits="WebApplication6.PastaQuizPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kozy Kitchen</title>
    <style>


    


*{
  box-sizing: border-box;
}

body{
    position:absolute;
    background-image: url(../ProfilePic/loginPic.jpg);
     top: 155px; left: 480px; width:auto; height:auto;
    
}

.quiz-container{
  border-radius: 10px;
  box-shadow: 0 0 10px 2px rgba(100, 100, 100, 0.1);
  width: 600px;
  overflow: hidden;
  background-color:lightgreen;
  margin-left:200px;
  margin-top:100px;
}

.quiz-header{
  padding: 4rem;
}
h2{
  padding: 1rem;
  text-align: center;
}

h3{
    margin-top:100px;
    text-align: center;
}

ul{
  list-style-type: none;
  padding: 0;
}
ul li{
  font-size: 1.2rem;
  margin: 1rem 0;
}
ul li label{
  cursor: pointer;
}
#submit{
  background-color: #03cae4;
  color: #fff;
  border: none;
  display: block;
  width: 100%;
  cursor: pointer;
  font-size: 1.1rem;
  font-family: inherit;
  padding: 1.3rem;
}
button:hover{
  background-color: #04adc4;
}
button:focus{
  outline: none;
  background-color: #44b927;
}
        .auto-style1 {
            position: absolute;
            left: 0px;
            top: 0px;
            width: 820px;
        }

 #back {
     position: absolute;
     line-height: 12px;
     width: 40px;
     margin-top: 5px;
     margin-left: 5px;
 }

 #reload {
    background-color: #03cae4;
  color: #fff;
  border: none;
  display: block;
  width: 100%;
  cursor: pointer;
  font-size: 1.1rem;
  font-family: inherit;
  padding: 1.3rem;
 }
    </style>

    
    
</head>
<body>
    <h1 style="position:absolute; margin-top:125px; width:1000px; text-align:center;" >PASTA QUIZ</h1>
    <div class="bg"> </div>
    <div class="quiz-container" id="quiz">
    <img id="back" onclick="location.href='quizPage.aspx';" src="../Images/backIcon48.png" />
    <div class="quiz-header">
      <h2 id="question">Question Text</h2>
      <ul>
        <li>
          <input type="radio" name="answer" id="a" class="answer"/>
          <label for="a" id="a_text">Answer</label>
        </li>
        <li>
          <input type="radio" name="answer" id="b" class="answer"/>
          <label for="b" id="b_text">Answer</label>
        </li>
        <li>
          <input type="radio" name="answer" id="c" class="answer"/>
          <label for="c" id="c_text">Answer</label>
        </li>
        <li>
          <input type="radio" name="answer" id="d" class="answer"/>
          <label for="d" id="d_text">Answer</label>
        </li>
      </ul>
    </div>
    <button id="submit">Submit</button>
    
  </div>

    <script>
        const quizData = [
            {
                question: "How long does it take in total to prepare the Pasta dish? ",
                a: "30 minutes",
                b: "55 minutes",
                c: "45 minutes",
                d: "40 minutes",
                correct: "a",
            },
            {
                question: "How many ounces of uncooked pasta is used in the preperation of this dish?",
                a: "7",
                b: "4",
                c: "8",
                d: "3",
                correct: "c",
            },
            {
                question: "What type of cheese is used for the pasta dish?",
                a: "Parmesan",
                b: "Chedder",
                c: "Mozzarella",
                d: "Ricotta",
                correct: "a",
            },
            {
                question: "From the options below, which ingredient is not required in the preperation of the pasta?",
                a: "Parmesan Cheese",
                b: "Green Chilli",
                c: "Tomato paste",
                d: "Cream",
                correct: "b",
            },
        ];
        const quiz = document.getElementById('quiz')
        const answerEls = document.querySelectorAll('.answer')
        const questionEl = document.getElementById('question')
        const a_text = document.getElementById('a_text')
        const b_text = document.getElementById('b_text')
        const c_text = document.getElementById('c_text')
        const d_text = document.getElementById('d_text')
        const submitBtn = document.getElementById('submit')
        let currentQuiz = 0
        let score = 0
        loadQuiz()
        function loadQuiz() {
            deselectAnswers()
            const currentQuizData = quizData[currentQuiz]
            questionEl.innerText = currentQuizData.question
            a_text.innerText = currentQuizData.a
            b_text.innerText = currentQuizData.b
            c_text.innerText = currentQuizData.c
            d_text.innerText = currentQuizData.d
        }
        function deselectAnswers() {
            answerEls.forEach(answerEl => answerEl.checked = false)
        }
        function getSelected() {
            let answer
            answerEls.forEach(answerEl => {
                if (answerEl.checked) {
                    answer = answerEl.id
                }
            })
            return answer
        }
        submitBtn.addEventListener('click', () => {
            const answer = getSelected()
            if (answer) {
                if (answer === quizData[currentQuiz].correct) {
                    score++
                }
                currentQuiz++
                if (currentQuiz < quizData.length) {
                    loadQuiz()
                } else {
                    quiz.innerHTML = `
           <img id="back" onclick="location.href='quizPage.aspx';" src="../Images/backIcon48.png" />
           <h3>You answered ${score}/${quizData.length} questions correctly</h3>
           <button id="reload" onclick="location.reload()">Reload</button>
           
           `
                }
            }
        })
    </script>
    
</body>

</html>
