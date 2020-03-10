pipeline {
    agent any
    stages {
        stage("Build Image") {
            steps {
                git url: 'https://github.com/dyegorov2804/packer_puppet.git', branch: "master"
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws_credentials']]) {
                    sh "./build_images.sh"
                }
            }
        }
    }
}