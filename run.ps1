py -m venv venv
venv/Scripts/Activate.ps1
py -m pip install --upgrade pip
py -m pip install -r requirements.txt
uvicorn rag:app --reload
