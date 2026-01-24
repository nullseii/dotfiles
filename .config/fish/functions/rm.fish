function rm --wraps="echo 'this is not the command you are looking for.'; false" --description "alias rm=echo 'this is not the command you are looking for.'; false"
    echo 'this is not the command you are looking for.'; false $argv
end
