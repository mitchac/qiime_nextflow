#!/usr/bin/env nextflow

process qiime_hello {

    output:
    stdout result

    """
    echo $HOME 
    #PYTHONPATH='/usr/lib/python2.7'
    #source /opt/qiime_deps/activate.sh
    #print_qiime_config.py -tf
    """
}

result.subscribe {
    println it.trim()
}
