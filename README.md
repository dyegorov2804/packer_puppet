# packer_puppet
Using Packer and masterless puppet to build amazon-ebs amis.

# Installing
Make sure you have Packer v1.5.1 installed.

## One time
    export AWS_ACCESS_KEY=VALID-ACCESS-KEY
    export AWS_SECRET_ACCESS_KEY=VALID-SECRET-ACCESS-KEY

# Running

    ./build_images.sh -h for help
    ./build_images to run with default params
    
