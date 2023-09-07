.class public abstract La6/c;
.super La6/e;
.source "PassportFallbackableRequest.java"


# instance fields
.field private final a:La6/e;

.field private final b:La6/e;

.field private c:Z


# virtual methods
.method public a()La6/k$h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, La6/c;->a:La6/e;

    .line 2
    .line 3
    invoke-virtual {v0}, La6/e;->a()La6/k$h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, La6/c;->f(La6/k$h;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, La6/c;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0, v0}, La6/c;->g(Ljava/lang/Exception;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    throw v0

    .line 26
    :catch_1
    move-exception v0

    .line 27
    invoke-virtual {p0, v0}, La6/c;->g(Ljava/lang/Exception;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0}, La6/c;->d()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, La6/c;->c:Z

    .line 38
    .line 39
    iget-object v0, p0, La6/c;->b:La6/e;

    .line 40
    .line 41
    invoke-virtual {v0}, La6/e;->a()La6/k$h;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_2
    throw v0
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La6/c;->c:Z

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected abstract d()V
.end method

.method protected abstract e()V
.end method

.method protected abstract f(La6/k$h;)Z
.end method

.method protected abstract g(Ljava/lang/Exception;)Z
.end method
