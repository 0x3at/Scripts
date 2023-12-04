gh auth login
gh auth refresh -h github.com -s delete_repo Flag --yes

@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Set the base path for your local repositories
SET "basePath=C:\Users\bowtiedwave\Documents\GitHub"

REM List of repositories to delete
SET repos[0]=30-Days-of-Python
SET repos[1]=Python-Portfolio
SET repos[2]=Data-Engineering
SET repos[3]=Twitter-Bots
SET repos[4]=Binary_Environment_Detector
SET repos[5]=Lets-Learn-Typescript
SET repos[6]=Lets-Learn-Javascript
SET repos[7]=python-projects
SET repos[8]=Ethereum-Block-Explorer
SET repos[9]=Streamlit_Blog
SET repos[10]=BowTiedWaves-Blog
SET repos[11]=Lets-learn-HTML-CSS
SET repos[12]=brownie_arb
SET repos[13]=Weather-App-CPP
SET repos[14]=hu-reminder-bot
SET repos[15]=Web3Arb
SET repos[16]=Dex-Aggregator
SET repos[17]=vyper
SET repos[18]=sad-js
SET repos[19]=Mock-Match-Making
SET repos[20]=godoit
SET repos[21]=Chatooe
SET repos[22]=notatoes
SET repos[23]=MEDIAtor

REM Delete each repository
FOR /L %%i IN (0,1,23) DO (
    SET repo=!repos[%%i]!

    REM Delete the repository from GitHub
    gh repo delete 0x3at/!repo! --confirm

    REM Delete the local copy of the repository, if it exists
    IF EXIST "!basePath!\!repo!" (
        rmdir /s /q "!basePath!\!repo!"
    )
)

ENDLOCAL
