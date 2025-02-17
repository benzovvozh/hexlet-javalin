package org.example.hexlet;

import io.javalin.Javalin;
import io.javalin.rendering.template.JavalinJte;

public class HelloWorld {
    public static void main(String[] args) {
        var app = Javalin.create(config -> {
            config.bundledPlugins.enableDevLogging();
            config.fileRenderer(new JavalinJte());
        });

        app.get("/", ctx -> {
            ctx.render("index.jte");
        });
        app.get("/users", ctx -> {
            ctx.render("users.jte");
        });

        app.get("/hello", ctx -> {
            var name = ctx.queryParamAsClass("name", String.class).getOrDefault("Unknown");
            ctx.result("Hello, " + name + "!");
        });
        app.get("/users/{id}/post/{postid}", ctx -> {
            var userId = ctx.pathParam("id");
            var postId = ctx.pathParam("postid");
            ctx.result("user id = " + userId + ", postid = " + postId);
        });

        app.get("/contacts", ctx -> {
            ctx.render("contacts.jte");
        });
        app.start(7070);
    }
}