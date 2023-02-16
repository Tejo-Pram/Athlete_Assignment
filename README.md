PRE-REQUISITES :

- A linux machine with minikube and kubectl installed.

- Be sure kubectl is configured correctly with minikube.


INSTRUCTIONS :

1. In your terminal make the project directory your working directory.

2. Enter the following command to make the shell-script executable.
        chmod +x build-deploy.sh

3. Enter the following command to run the shell script.
        ./build-deploy.sh

4. Please wait till it is completely executed and you should see an "address" ( something like 192.168.49.2 ).

5. Open your web browser, and goto the following, to see my favourite athlete json object.
        <<  local-arcesium-org.A.B.C.D.nip.io/athlete  >> , where A.B.C.D is the aforementioned address.

6. Alternatively, you can also enter the following command, to see he json response in the terminal itself.
        curl local-arcesium-org.A.B.C.D.nip.io/athlete    , where A.B.C.D is the aforementioned address.


EXPLANATION :

- The aim of the assignment is to build a simple web server which shows a json object of one's favourite athlete and to automate the deployment
  into a minikube kubernetes cluster.

- I have used "node.js" and "express" to create the simple web server which return a json response of the form
  {"myFavouriteAthlete" : < NAME >}

- Then I built a dockerfile which is responsible for the creation of the docker image of our application, I built the image locally and ran it to test it.

- I then proceeded to writing the deployment, service and ingress 'yaml' files for the deployment of our application into a minikube cluster.

- I manually applied the config files to check the working of the application.

- After verifying that the cluster is running as desired, I then wrote a build-and-deploy shell script to automate the entire process of apply the config files
  for the deployment of the application.


ISSUES ENCOUNTERED AND TROUBLESHOOTING : 

- Writing the dockerfile was tricky, had to go through some sample dockerfiles in the internet to understand it. After spending some time making changes,
  I could write a proper dockerfile.

- Since the docker image which is built is availabe locally, I didn't want to push it to dockerhub and then again let the deployment pull it from there.
  I wanted a way to use the local image, so after a lot of online reading I figured out that we could build the image within the minikbe cluster using the 
  'minikube image build'.

- In the deployment and service 'yaml' files, the binding of the port numbers had to be done carefully. Took some time to fully comprehend how the request flows the ingress to service to pod.
  
- I needed to configure a local DNS mapping in /etc/hosts file for the ingress, but didn't have the permission to do it.So, I used 'nip.io' for it.
