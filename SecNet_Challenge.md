# SecNet Challenge

## Infrastructure

For this project, please think about how you would architect a secure and scalable static web application in
AWS.

* Create and deploy a running instance of a web server using a configuration management tool of your
choice. The web server should serve one page with the following content:

```
<html>
  <head>
    <title>We are SecNet!</title>
  </head>
  <body>
    <h1>We are SecNet!</h1>
  </body>
</html>
```
* Secure this application and host such that only appropriate ports are publicly exposed and any http
requests are redirected to https. This should be automated using a configuration management tool of your
choice and you should feel free to use a self-signed certificate for the web server.
* Develop and apply autoamted tests to validate the correctness of the server configuration.
Express everything in code.
* Provide your code in an https://github.com repo named <YOUR_FIRSTNAME>_Challenge.

Be prepared to walk through your code, discussing your thought process and talk through how you might
monitor and scale this application. You should also be able to demo a running instance of the the host.

## Coding

Please solve the below problem using either python or go. Do not submit the answer to the web site, but put the
solution in the repo indicated above.

https://www.hackerrank.com/challenges/class-1-dealing-with-complex-numbers/problem
