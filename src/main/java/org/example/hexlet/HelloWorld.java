package org.example.hexlet;

import io.javalin.Javalin;

public class HelloWorld {
    public static void main(String[] args) {
        var app = Javalin.create(config -> {
            config.bundledPlugins.enableDevLogging();
        });
        app.get("/", ctx -> ctx.result("Hello World!"));
        app.get("/users", ctx -> ctx.result("GET /users"));
        app.post("/users", ctx -> ctx.result("POST /users"));
        app.get("/hello", ctx -> {
            var name = ctx.queryParamAsClass("name", String.class).getOrDefault("Unknown");
            ctx.result("Hello, " + name + "!");
        });
        app.get("/users/{id}/post/{postid}", ctx -> {
            var userId = ctx.pathParam("id");
            var postId = ctx.pathParam("postid");
            ctx.result("user id = " + userId + ", postid = " + postId);
        });
        app.start(7070);
    }
}