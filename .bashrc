# CUSTOM LTK - GiT Shortcuts
function git.deployTo
{
    targetBranch=$(git.currentBranch);
    echo -e "\e[34mWe are going to merge \e[33m$targetBranch \e[34minto \e[33m$1 \e[34m...\e[94m"
    echo -e "\e[97m git pull origin $targetBranch \e[94m"
    git pull origin $targetBranch;
    echo -e "\e[97m git push origin $targetBranch \e[94m"
    git push origin $targetBranch;
    echo -e "\e[97m git checkout $1 \e[94m"
    git checkout $1
    echo -e "\e[97m git pull origin $1 \e[94m"
    git pull origin $1
    echo -e "\e[97m git merge $targetBranch \e[94m"
    git merge $targetBranch
    echo -e "\e[97m git push origin $1 \e[94m"
    git push origin $1;
    echo -e "\e[97m git status \e[94m"
    git status;
    echo -e "\e[97m git checkout $targetBranch \e[94m"
    git checkout $targetBranch;
    echo -e "\e[34mCommand done.\e[39m"
}

function git.currentBranch
{
    echo $(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
}
