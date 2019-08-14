# Jenkins k8s

K8s deployment to jenkins.

## Commands

```
kubectl apply -f namespace.yaml

kubectl apply -f jenkins-svc.yaml

kubectl apply -f persistence-volume.yaml

kubectl apply -f jenkins.yaml

```
### Referências

https://caylent.com/jenkins-plugins/

https://cloud.google.com/solutions/jenkins-on-kubernetes-engine

https://matthewpalmer.net/kubernetes-app-developer/articles/kubernetes-ingress-guide-nginx-example.html

https://cloud.google.com/solutions/configuring-jenkins-kubernetes-engine

https://dzone.com/articles/scaling-jenkins-with-kubernetes

https://medium.com/@vashgaurav/scaling-jenkins-with-kubernetes-4a14e6ac8f99

https://jenkins.io/blog/2018/09/14/kubernetes-and-secret-agents/

https://github.com/csaroka/kubernetes-jenkins

https://jenkins.io/blog/2018/09/14/kubernetes-and-secret-agents/

https://github.com/jenkinsci/kubernetes-cli-plugin/blob/master/README.md

https://wiki.jenkins.io/display/JENKINS/Pipeline+Maven+Plugin

https://issues.jenkins-ci.org/browse/JENKINS-50525

https://github.com/jenkinsci/docker-plugin/issues/548

https://www.blazemeter.com/blog/how-to-setup-scalable-jenkins-on-top-of-a-kubernetes-cluster

https://code-maven.com/jenkins-pipeline-environment-variables

https://github.com/GoogleCloudPlatform/continuous-deployment-on-kubernetes/blob/master/sample-app/Jenkinsfile

https://dzone.com/articles/setting-up-cicd-pipelines-for-docker-kubernetes-pr

https://betsol.com/2018/11/devops-using-jenkins-docker-and-kubernetes/

https://github.com/adriagalin/docker-jenkins-jnlp-slave/blob/master/Dockerfile

## Referências Deploy K8s no Jenkins

https://unix.stackexchange.com/questions/294835/replace-environment-variables-in-a-file-with-their-actual-values

https://www.gnu.org/software/gettext/manual/gettext.html#sh_002dformat

https://gist.github.com/toddlers/d57565644d860160c05fcb4364dbd16c

https://unix.stackexchange.com/questions/294378/replacing-only-specific-variables-with-envsubst

https://blog.lelonek.me/deployment-with-kubernetes-e74cd6a8974