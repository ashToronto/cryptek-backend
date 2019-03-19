# README

Welcome to the cryptek - Still in progress

Getting started - running the app in your local environment.

- Create an empty directory and name it whatever you want [myDirectory]. This is a VERY IMPORTANT STEP because our procfile will execute commands based on the file structure of this directory. If you don't do this step exactly, you must modify the procfile to run the server and client according to your structure.

-  Within that directory. Git clone this repo.

- Run bundle install and ensure you are using the same ruby version as I am. You can check it in my gemfile

- Run rake db:migrate within your terminal to create a database from my models.

- Next you will need to cd .. into your [myDirectory]

- [Cryptek - client] You will need to git clone the front end component of this application. It is react based. After cloning run Yarn install or npm install depending on your preferred package manager. Run yarn/npm start to ensure the client works. Use ctrl + c to close it after your test.

- Cd .. back into you [myDirectory] and navigate into cryptek - server.

- Ensure you have foreman installed. Run the following command: foreman start -p 3001.

- You should now be on localhost 3001 with both client and server running.
