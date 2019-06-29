package com.roncoo.pay.common.core.test;

import com.roncoo.pay.common.core.utils.IdGenerator;
import org.junit.Assert;
import org.junit.Test;

import java.util.Collections;
import java.util.HashSet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;


public class Test1 {
    @Test
    public void testNextId() throws Exception {
        final IdGenerator idg = IdGenerator.INSTANCE;
        ExecutorService es = Executors.newFixedThreadPool(10);
        final HashSet idSet = new HashSet();
        Collections.synchronizedCollection(idSet);
        long start = System.currentTimeMillis();
        System.out.println(" start generate id *");
        for (int i = 0; i < 10; i++)
            es.execute(new Runnable() {
                public void run() {
                    for (int j = 0; j < 50000; j++) {
                        String id = idg.nextId();
                        //System.out.println(id);
                        synchronized (idSet) {
                            idSet.add(id);
                        }
                    }
                }
            });
        es.shutdown();
        es.awaitTermination(10, TimeUnit.SECONDS);
        long end = System.currentTimeMillis();
        System.out.println(" end generate id ");
        System.out.println("* cost " + (end - start) + " ms!");
        Assert.assertEquals(10 * 50000, idSet.size());
    }
}
