.class public abstract La6/d;
.super La6/e;
.source "PassportLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/d$a;,
        La6/d$b;
    }
.end annotation


# instance fields
.field private final a:La6/e;


# direct methods
.method public constructor <init>(La6/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, La6/e;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, La6/d;->e(La6/f;)La6/g;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, La6/d;->a:La6/e;

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "loginType:"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, La6/d;->c()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "PassportLoginRequest"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
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
.end method


# virtual methods
.method public a()La6/k$h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, La6/d;->a:La6/e;

    .line 2
    .line 3
    invoke-virtual {v0}, La6/e;->a()La6/k$h;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    throw v0

    .line 10
    :catch_1
    move-exception v0

    .line 11
    throw v0
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

.method protected abstract c()Ljava/lang/String;
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, La6/d;->a:La6/e;

    .line 2
    .line 3
    instance-of v1, v0, La6/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, La6/c;

    .line 8
    .line 9
    invoke-virtual {v0}, La6/c;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected abstract e(La6/f;)La6/g;
.end method
