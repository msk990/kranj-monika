package org.kranj.vtrci.transformer

interface Transformer<A,B> {

    fun transform(source:A):B
}