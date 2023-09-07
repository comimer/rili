.class public final Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;
.super Lat/bitfire/dav4jvm/exception/HttpException;
.source "ServiceUnavailableException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0013\u0008\u0016\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000b\u0010\u000fR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;",
        "Lat/bitfire/dav4jvm/exception/HttpException;",
        "Ljava/util/Date;",
        "retryAfter",
        "Ljava/util/Date;",
        "getRetryAfter",
        "()Ljava/util/Date;",
        "setRetryAfter",
        "(Ljava/util/Date;)V",
        "",
        "message",
        "<init>",
        "(Ljava/lang/String;)V",
        "Lokhttp3/a0;",
        "response",
        "(Lokhttp3/a0;)V",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private retryAfter:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1f7

    .line 1
    invoke-direct {p0, v0, p1}, Lat/bitfire/dav4jvm/exception/HttpException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/a0;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lat/bitfire/dav4jvm/exception/HttpException;-><init>(Lokhttp3/a0;)V

    const-string v0, "Retry-After"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v0, v1, v2, v1}, Lokhttp3/a0;->z(Lokhttp3/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Lat/bitfire/dav4jvm/HttpUtils;->INSTANCE:Lat/bitfire/dav4jvm/HttpUtils;

    invoke-virtual {v0, p1}, Lat/bitfire/dav4jvm/HttpUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xd

    .line 7
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    const-string p1, "cal"

    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    sget-object p1, Lat/bitfire/dav4jvm/Dav4jvm;->INSTANCE:Lat/bitfire/dav4jvm/Dav4jvm;

    invoke-virtual {p1}, Lat/bitfire/dav4jvm/Dav4jvm;->getLog()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "Received Retry-After which was not a HTTP-date nor delta-seconds"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    .line 10
    :goto_1
    iput-object v0, p0, Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;->retryAfter:Ljava/util/Date;

    :cond_1
    return-void
.end method


# virtual methods
.method public final getRetryAfter()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;->retryAfter:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
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

.method public final setRetryAfter(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lat/bitfire/dav4jvm/exception/ServiceUnavailableException;->retryAfter:Ljava/util/Date;

    .line 2
    .line 3
    return-void
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
