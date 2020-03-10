pipeline {
    agent any
    stages {
        stage("Build Image") {
            steps {
                git url: 'https://github.com/dyegorov2804/packer_puppet.git', branch: "${params.PACKER_PUPPET_BRANCH}"
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws_credentials']]) {
                    sh "./build_images.sh"
                }
            }
        }
    }