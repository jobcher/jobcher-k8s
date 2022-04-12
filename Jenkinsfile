pipeline {
    agent {label 'k8s'}

    stages {
        stage('代码检出') {
            steps {
                echo 'k8s升级'
                sh 'git clone https://github.com/jobcher/jobcher-k8s.git'
            }
        }
        stage('k8s部署') {
            steps {
                echo 'k8s升级'
                sh 'kubectl apply -f jobcher-blog.yaml'
            }
        }
    }
}