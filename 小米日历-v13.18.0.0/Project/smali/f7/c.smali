.class public abstract Lf7/c;
.super Ljava/lang/Object;
.source "HttpFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lf7/a;
    .locals 1

    .line 1
    new-instance v0, Lf7/b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lf7/b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lf7/b$b;->b(I)Lf7/b$b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lf7/b$b;->a()Lf7/b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lf7/c;->c(Lf7/b;)Lf7/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public b()Lf7/a;
    .locals 1

    .line 1
    new-instance v0, Lf7/b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lf7/b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lf7/b$b;->a()Lf7/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lf7/c;->c(Lf7/b;)Lf7/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

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

.method public abstract c(Lf7/b;)Lf7/a;
.end method
