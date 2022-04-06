# deploy-wp-to-aws
Debian linux instructions

1. Install AWS CLI with these instructions:

    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    aws configure (provide AWS secret key and access key)
    * I am using locally configured aws profile instead you can use AWS access and secret keys as i commented in project

2.  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
    sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo apt update
    sudo apt install terraform

3. git clone https://github.com/milosavljevic-marko/deploy-wp-to-aws.git
   terraform init
   terraform apply 

4. Open application using public IP retrieved from AWS
   Fill all input fields:
        Database name - wordpress
        Username      - root
        Password      - root
        Database host - RDS endpoint 
        Click "Submit"
        Continue with installation process
