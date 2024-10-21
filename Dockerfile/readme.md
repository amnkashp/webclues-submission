I have shared the simplest dockerfile for a nodejs project I used this dockerfile in a nodejs sample project which you can check at "https://github.com/amnkashp/webclues-infotech-test.git".

The above same project I used to deploy on ansible playbook.

You can access the same project on docker hub via this command 

" docker run -d -p 3000:3000 -e "PORT=3000" amnkashyap/webclues-nodejs:latest "