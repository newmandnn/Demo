pipeline {
    agent any

    stages {
        stage('Describing...') {
            steps {
                echo "This stage use AWS CLI to describe my EC2 instances"
                sh "aws ec2 describe-instances"
                }
        }
        stage('Launching...'){
            steps{
                echo "This stage launch my instance Ubuntu_Naked"
                sh "aws ec2 start-instances --instance-ids i-066205396553ba1e3"
                echo "Give few minutes to launch and connect to instance"
                sh "sleep 135"
                sh "pwd"
                sh "ls -la"
            }
        }        
        stage('Connecting...'){
            steps{
            echo "My second Jenkins build which is connecting to instance is started..."
            }
        }
    }
}
