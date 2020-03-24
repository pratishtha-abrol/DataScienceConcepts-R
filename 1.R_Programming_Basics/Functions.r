pow = function(a, n) {
    res=1
    for(i in seq(1,n,1)) {
        res=res*a;
    }
    return(res)
}