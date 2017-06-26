#!/usr/bin/env nextflow

process qiime_hello {

    output:
    stdout result

    """
    echo $HOME
    #source activate qiime1
    PATH="/opt/conda/bin/conda:$PATH"
    echo $PATH
    conda create -n qiime1 python=2.7 qiime matplotlib=1.4.3 mock nose -c bioconda
    #PYTHONPATH='/usr/lib/python2.7'
    #source /opt/qiime_deps/activate.sh
    #print_qiime_config.py -tf
    """
}

result.subscribe {
    println it.trim()
}
