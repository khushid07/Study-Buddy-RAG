# Study-Buddy-RAG
    .
    ├── app.py                                       #Streamlit app script
    ├── MSBSHSE-Class-7-Mathematics-Textbook (5).pdf #Mathematics textbook of State curriculum
    ├── rag.py                                       #RAG logic
    ├── run.ps1                                      #powershell file to execute everything step by step in venv 
    ├── README.md      
    ├── requirements.txt                             #Python dependencies      
    └── run.sh                                       #bash file to execute everything step by step in venv  


# This is a RAG Chatbot
The Chatbot behaves like a teacher by being supportive and encouraging when asked questions or to explain a concept.
It uses the pdf of the Mathematics Grade 7 State curriculum to retrieve answers and uses ollama mistral to frame the response.
This can be a good substitute for a teacher when they are absent. It allows children to continue their learning without being stopped due to the absence of a teacher.

## Below are the steps to run:

## This project needs Ollama to be installed and running on local machine
    https://ollama.com/
### run the below code in terminal after running on local
    ollama pull mistral
    ollama run mistral
### now check if the model is running
    ollama serve

### for ios, run the bash file run.sh in terminal using below command:

    bash run.sh

## OR

### for windows, the commands will be changed to below:
    py -m venv venv
    venv/Scripts/activate
    py -m pip install --upgrade pip
    py -m pip install -r requirements.txt
    uvicorn rag:app

## once we see the follwing lines in terminal
    INFO:     Started server process [<some_number>]
    INFO:     Waiting for application startup.
    INFO:     Application startup complete.

### then we proceed further

### open a new terminal and run app.py using below command:

    python3 -m streamlit run app.py

### Now you can type any question and press the Ask button
It might take 1 minute to load questions which are simple queries mentioned in the dictionary in rag.py or from the document.
And for questions unrelated to above, it might take 2-3 minutes.
