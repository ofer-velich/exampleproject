package io.ofer.example;

import java.util.concurrent.TimeUnit;

public class ExampleApp {
    public static void main(String[] args) throws InterruptedException {
        System.out.print("Example App Run");

        for (int i = 0; i < 5; i++) {
            System.out.print("Example App Log");
            TimeUnit.SECONDS.sleep(60);
        }
    }
}
