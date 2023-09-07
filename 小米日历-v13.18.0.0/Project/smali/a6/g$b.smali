.class public La6/g$b;
.super La6/g;
.source "PassportSimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(La6/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La6/g;-><init>(La6/f;)V

    .line 2
    .line 3
    .line 4
    return-void
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


# virtual methods
.method public a()La6/k$h;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, La6/g;->a:La6/f;

    .line 2
    .line 3
    iget-object v1, v0, La6/f;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, La6/f;->a:Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 6
    .line 7
    iget-object v3, v0, La6/f;->b:Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 8
    .line 9
    iget-object v4, v0, La6/f;->c:Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 10
    .line 11
    iget-object v5, v0, La6/f;->d:Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 12
    .line 13
    iget-boolean v6, v0, La6/f;->e:Z

    .line 14
    .line 15
    iget-object v7, v0, La6/f;->g:Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-static/range {v1 .. v7}, La6/l;->i(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)La6/k$h;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :catch_1
    move-exception v0

    .line 30
    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AccessDeniedException;)V

    .line 33
    .line 34
    .line 35
    throw v1
    .line 36
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
