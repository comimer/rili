.class public final Lm0/c;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements Ll0/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll0/c$b;)Ll0/c;
    .locals 4

    .line 1
    new-instance v0, Lm0/b;

    .line 2
    .line 3
    iget-object v1, p1, Ll0/c$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p1, Ll0/c$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p1, Ll0/c$b;->c:Ll0/c$a;

    .line 8
    .line 9
    iget-boolean p1, p1, Ll0/c$b;->d:Z

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p1}, Lm0/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ll0/c$a;Z)V

    .line 12
    .line 13
    .line 14
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
